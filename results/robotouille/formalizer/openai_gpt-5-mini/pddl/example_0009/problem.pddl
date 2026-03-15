;;; Corrected domain (robotouille-async) and problem (robotouille-problem)
;;; NOTE: Domain and problem are both provided below as separate PDDL definitions.
;;; When using a planner, save the domain and problem in separate files: domain.pddl and problem.pddl.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Domain file: robotouille-async
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (domain robotouille-async)
    (:requirements :strips :typing :durative-actions)
    (:types
        station player item container water
    )
    (:predicates
        ;; === Station identity ===
        (istable ?s - station)
        (isstove ?s - station)
        (isboard ?s - station)
        (isfryer ?s - station)
        (issink ?s - station)

        ;; === Item identity ===
        (isrobot ?p - player)
        (istopbun ?i - item)
        (isbottombun ?i - item)
        (isbread ?i - item)
        (islettuce ?i - item)
        (isonion ?i - item)
        (istomato ?i - item)
        (ispatty ?i - item)
        (ischicken ?i - item)
        (ischeese ?i - item)
        (ispotato ?i - item)

        ;; === Item capability flags ===
        (iscuttable ?i - item)
        (iscookable ?i - item)
        (isfryable ?i - item)
        (isfryableifcut ?i - item)

        ;; === Item state (processing results) ===
        (iscut ?i - item)
        (iscooked ?i - item)
        (isfried ?i - item)

        ;; === Spatial: player ===
        (loc ?p - player ?s - station)
        (nothing ?p - player)          ; player hands are empty (no item)
        (nocontainer ?p - player)      ; player is not carrying a container

        ;; === Spatial: items on stations ===
        (at ?i - item ?s - station)    ; item is at station (possibly in a stack)
        (on ?i - item ?s - station)    ; item is directly on the station surface
        (clear ?i - item)              ; nothing is on top of this item
        (atop ?i1 - item ?i2 - item)   ; i1 is stacked on i2
        (has ?p - player ?i - item)    ; player is holding item

        ;; === Spatial: stations ===
        (empty ?s - station)           ; no item directly on station surface
        (vacant ?s - station)          ; no player at this station

        ;; === Container predicates ===
        (container_at ?c - container ?s - station)
        (has_container ?p - player ?c - container)
        (container_on_station ?c - container)  ; container is on some station (not held)
        (ispottype ?c - container)     ; is a pot
        (isbowltype ?c - container)    ; is a bowl

        ;; === Water / soup predicates ===
        (has_water ?c - container ?w - water)  ; container has water in it
        (isboiling ?w - water)
        (addedto ?i - item ?w - water)         ; item has been added to the water
        (in ?w - water ?c - container)         ; water is in container (goal-facing)

        ;; Positive complement of "water not yet created"
        ;; true in :init, consumed by fill
        (water_available ?w - water)

        ;; Positive complement of "station not busy"
        ;; true in :init for all processing stations, toggled by durative actions
        (station_free ?s - station)
    )

    ;; =====================================================================
    ;; MOVEMENT AND LOGISTICS
    ;; =====================================================================

    (:durative-action move
        :parameters (?p - player ?s1 - station ?s2 - station)
        :duration (= ?duration 1)
        :condition (and
            (at start (loc ?p ?s1))
            (at start (vacant ?s2))
        )
        :effect (and
            (at start (not (loc ?p ?s1)))
            (at start (not (vacant ?s2)))
            (at end (loc ?p ?s2))
            (at end (vacant ?s1))
        )
    )

    (:durative-action pick-up
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 1)
        :condition (and
            (at start (nothing ?p))
            (at start (on ?i ?s))
            (at start (loc ?p ?s))
            (at start (clear ?i))
        )
        :effect (and
            (at start (not (nothing ?p)))
            (at start (not (on ?i ?s)))
            (at start (not (at ?i ?s)))
            (at start (not (clear ?i)))
            (at end (has ?p ?i))
            (at end (empty ?s))
        )
    )

    (:durative-action unstack
        :parameters (?p - player ?i1 - item ?i2 - item ?s - station)
        :duration (= ?duration 1)
        :condition (and
            (at start (nothing ?p))
            (at start (clear ?i1))
            (at start (atop ?i1 ?i2))
            (at start (loc ?p ?s))
            (at start (at ?i1 ?s))
            (at start (at ?i2 ?s))
        )
        :effect (and
            (at start (not (nothing ?p)))
            (at start (not (clear ?i1)))
            (at start (not (atop ?i1 ?i2)))
            (at start (not (at ?i1 ?s)))
            (at end (has ?p ?i1))
            (at end (clear ?i2))
        )
    )

    (:durative-action place
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 1)
        :condition (and
            (at start (has ?p ?i))
            (at start (loc ?p ?s))
            (at start (empty ?s))
        )
        :effect (and
            (at start (not (has ?p ?i)))
            (at start (not (empty ?s)))
            (at end (nothing ?p))
            (at end (at ?i ?s))
            (at end (clear ?i))
            (at end (on ?i ?s))
        )
    )

    (:durative-action stack
        :parameters (?p - player ?i1 - item ?i2 - item ?s - station)
        :duration (= ?duration 1)
        :condition (and
            (at start (has ?p ?i1))
            (at start (clear ?i2))
            (at start (loc ?p ?s))
            (at start (at ?i2 ?s))
        )
        :effect (and
            (at start (not (has ?p ?i1)))
            (at start (not (clear ?i2)))
            (at end (nothing ?p))
            (at end (at ?i1 ?s))
            (at end (atop ?i1 ?i2))
            (at end (clear ?i1))
        )
    )

    ;; =====================================================================
    ;; DURATIVE PROCESSING ACTIONS (async — robot starts, then can leave)
    ;; =====================================================================

    (:durative-action cook
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 3)
        :condition (and
            (at start (isstove ?s))
            (at start (iscookable ?i))
            (at start (on ?i ?s))
            (at start (loc ?p ?s))
            (at start (clear ?i))
            (at start (station_free ?s))
            (over all (on ?i ?s))
            (over all (clear ?i))
            (over all (loc ?p ?s))
        )
        :effect (and
            (at start (not (station_free ?s)))
            (at end (iscooked ?i))
            (at end (station_free ?s))
        )
    )

    (:durative-action cut
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 3)
        :condition (and
            (at start (isboard ?s))
            (at start (iscuttable ?i))
            (at start (on ?i ?s))
            (at start (loc ?p ?s))
            (at start (clear ?i))
            (at start (station_free ?s))
            (over all (on ?i ?s))
            (over all (loc ?p ?s))
            (over all (clear ?i))
        )
        :effect (and
            (at start (not (station_free ?s)))
            (at end (iscut ?i))
            (at end (station_free ?s))
        )
    )

    (:durative-action fry
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 3)
        :condition (and
            (at start (isfryer ?s))
            (at start (isfryable ?i))
            (at start (on ?i ?s))
            (at start (loc ?p ?s))
            (at start (clear ?i))
            (at start (station_free ?s))
            (over all (on ?i ?s))
            (over all (clear ?i))
            (over all (loc ?p ?s))
        )
        :effect (and
            (at start (not (station_free ?s)))
            (at end (isfried ?i))
            (at end (station_free ?s))
        )
    )

    (:durative-action fry_cut_item
        :parameters (?p - player ?i - item ?s - station)
        :duration (= ?duration 3)
        :condition (and
            (at start (isfryer ?s))
            (at start (isfryableifcut ?i))
            (at start (iscut ?i))
            (at start (on ?i ?s))
            (at start (loc ?p ?s))
            (at start (clear ?i))
            (at start (station_free ?s))
            (over all (on ?i ?s))
            (over all (clear ?i))
        )
        :effect (and
            (at start (not (station_free ?s)))
            (at end (isfried ?i))
            (at end (station_free ?s))
        )
    )

    (:durative-action pick-up-container
        :parameters (?p - player ?c - container ?s - station)
        :duration (= ?duration 1)
        :condition (and
            (at start (nocontainer ?p))
            (at start (nothing ?p))
            (at start (container_at ?c ?s))
            (at start (container_on_station ?c))
            (at start (loc ?p ?s))
        )
        :effect (and
            (at start (not (nocontainer ?p)))
            (at start (not (container_at ?c ?s)))
            (at start (not (container_on_station ?c)))
            (at end (has_container ?p ?c))
        )
    )

    (:durative-action place-container
        :parameters (?p - player ?c - container ?s - station)
        :duration (= ?duration 1)
        :condition (and
            (at start (has_container ?p ?c))
            (at start (loc ?p ?s))
        )
        :effect (and
            (at start (not (has_container ?p ?c)))
            (at end (nocontainer ?p))
            (at end (container_at ?c ?s))
            (at end (container_on_station ?c))
        )
    )

    (:durative-action fill
        :parameters (?p - player ?c - container ?w - water ?s - station)
        :duration (= ?duration 1)
        :condition (and
            (at start (issink ?s))
            (at start (loc ?p ?s))
            (at start (ispottype ?c))
            (at start (container_at ?c ?s))
            (at start (container_on_station ?c))
            (at start (water_available ?w))
        )
        :effect (and
            (at start (not (water_available ?w)))
            (at end (has_water ?c ?w))
            (at end (in ?w ?c))
        )
    )

    (:durative-action add-to-pot
        :parameters (?p - player ?i - item ?c - container ?w - water ?s - station)
        :duration (= ?duration 1)
        :condition (and
            (at start (has ?p ?i))
            (at start (loc ?p ?s))
            (at start (container_at ?c ?s))
            (at start (has_water ?c ?w))
            (at start (ispottype ?c))
        )
        :effect (and
            (at start (not (has ?p ?i)))
            (at end (nothing ?p))
            (at end (addedto ?i ?w))
        )
    )

    (:durative-action boil
        :parameters (?p - player ?c - container ?w - water ?s - station)
        :duration (= ?duration 3)
        :condition (and
            (at start (isstove ?s))
            (at start (loc ?p ?s))
            (at start (container_at ?c ?s))
            (at start (has_water ?c ?w))
            (at start (ispottype ?c))
            (at start (station_free ?s))
            (over all (container_at ?c ?s))
        )
        :effect (and
            (at start (not (station_free ?s)))
            (at end (isboiling ?w))
            (at end (station_free ?s))
        )
    )

    (:durative-action pour
        :parameters (?p - player ?pot - container ?bowl - container ?w - water ?s - station)
        :duration (= ?duration 1)
        :condition (and
            (at start (loc ?p ?s))
            (at start (ispottype ?pot))
            (at start (isbowltype ?bowl))
            (at start (container_at ?pot ?s))
            (at start (container_at ?bowl ?s))
            (at start (has_water ?pot ?w))
            (at start (in ?w ?pot))
        )
        :effect (and
            (at start (not (has_water ?pot ?w)))
            (at start (not (in ?w ?pot)))
            (at end (has_water ?bowl ?w))
            (at end (in ?w ?bowl))
        )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Problem file: robotouille-problem
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (problem robotouille-problem)
  (:domain robotouille-async)

  (:objects
    ;; stations
    table_1 table_2 table_3 table_4 table_5 table_6 table_7 table_8 - station
    stove_1 board_1 sink_1 - station

    ;; player
    robot_1 - player

    ;; items
    tomato_1 onion_1 chicken_1 chicken_2 bread_1 bread_2 bread_3 bread_4 - item

    ;; containers and water
    pot_1 bowl_1 - container
    water_1 - water
  )

  (:init
    ;; station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (istable table_6)
    (istable table_7)
    (istable table_8)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)

    ;; player identity
    (isrobot robot_1)

    ;; item identities
    (istomato tomato_1)
    (isonion onion_1)
    (ischicken chicken_1)
    (ischicken chicken_2)
    (isbread bread_1)
    (isbread bread_2)
    (isbread bread_3)
    (isbread bread_4)

    ;; container types
    (ispottype pot_1)
    (isbowltype bowl_1)

    ;; capability flags
    (iscuttable tomato_1)
    (iscuttable onion_1)
    (iscookable chicken_1)
    (iscookable chicken_2)

    ;; player spatial: start at (0,0) facing down -> facing station at (0,1) = table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; containers initial placement
    (container_at pot_1 sink_1)
    (container_on_station pot_1)
    (container_at bowl_1 table_1)
    (container_on_station bowl_1)

    ;; water availability
    (water_available water_1)

    ;; station free flags for processing stations
    (station_free stove_1)
    (station_free board_1)

    ;; items on stations (at/on/atop/clear)
    ;; table_3: tomato_1
    (at tomato_1 table_3)
    (on tomato_1 table_3)
    (clear tomato_1)

    ;; table_4: onion_1
    (at onion_1 table_4)
    (on onion_1 table_4)
    (clear onion_1)

    ;; table_5: chicken_1
    (at chicken_1 table_5)
    (on chicken_1 table_5)
    (clear chicken_1)

    ;; table_6: chicken_2
    (at chicken_2 table_6)
    (on chicken_2 table_6)
    (clear chicken_2)

    ;; table_7: bread_1 (bottom), bread_2 atop bread_1
    (at bread_1 table_7)
    (on bread_1 table_7)
    (at bread_2 table_7)
    (atop bread_2 bread_1)
    (clear bread_2)

    ;; table_8: bread_3 (bottom), bread_4 atop bread_3
    (at bread_3 table_8)
    (on bread_3 table_8)
    (at bread_4 table_8)
    (atop bread_4 bread_3)
    (clear bread_4)

    ;; empty predicate for stations with no items directly on surface
    (empty table_1)
    (empty stove_1)
    (empty table_2)
    (empty board_1)
    (empty sink_1)

    ;; vacant: no player at those stations (player at table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant table_6)
    (vacant table_7)
    (vacant table_8)
    (vacant stove_1)
    (vacant board_1)
    (vacant sink_1)
  )

  (:goal (and
    ;; soup goals
    (in water_1 bowl_1)
    (isboiling water_1)
    (iscut tomato_1)
    (addedto tomato_1 water_1)
    (iscut onion_1)
    (addedto onion_1 water_1)
    (container_at bowl_1 table_1)

    ;; sandwich on table_2: bread_1 (bottom), bread_2 (top), chicken_1 cooked and at table_2
    (on bread_1 table_2)
    (at chicken_1 table_2)
    (iscooked chicken_1)
    (at bread_2 table_2)
    (clear bread_2)

    ;; sandwich on table_3: bread_3 (bottom), bread_4 (top), chicken_2 cooked and at table_3
    (on bread_3 table_3)
    (at chicken_2 table_3)
    (iscooked chicken_2)
    (at bread_4 table_3)
    (clear bread_4)
  ))
)
