; Corrected domain (fixed type errors: added 'water' to :types so predicates using water are well-typed)
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

    ;; Cook on stove — robot must stay for entire duration
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

    ;; Cut on board — robot must stay for entire duration
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

    ;; Fry in fryer — robot must stay for entire duration
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

    ;; Fry an item that must be cut first (potato -> fries, onion -> rings)
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

    ;; =====================================================================
    ;; CONTAINER ACTIONS (for soup scenarios)
    ;; =====================================================================

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

    ;; Fill pot with water at sink
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

    ;; Add an item to the pot (drop item into water)
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

    ;; Boil water in pot on stove — robot initiates, then free to leave
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

    ;; Pour from pot to bowl (both at same station)
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

; =====================================================================
; Problem file (only problem content, does NOT re-declare domain symbols)
; =====================================================================
(define (problem robotouille-async-problem)
  (:domain robotouille-async)
  (:objects
    table_1 table_2 table_3 table_4 stove_1 board_1 fryer_1 - station
    robot_1 - player
    bottombun_1 topbun_1 potato_1 tomato_1 patty_1 - item
  )

  (:init
    ;; station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (isstove stove_1)
    (isboard board_1)
    (isfryer fryer_1)

    ;; player identity and location: player at (0,2) facing up -> facing_pos = (0,1) -> table_1
    (isrobot robot_1)
    (loc robot_1 table_1)

    ;; vacancies: robot at table_1 (so table_1 is NOT vacant), others vacant
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant stove_1)
    (vacant board_1)
    (vacant fryer_1)

    ;; items identities
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (ispotato potato_1)
    (istomato tomato_1)
    (ispatty patty_1)

    ;; capability flags
    (iscuttable potato_1)
    (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)

    ;; spatial: initial locations
    ;; table_1: bottombun_1 (bottom) with topbun_1 stacked on it
    (at bottombun_1 table_1)
    (on bottombun_1 table_1)
    (at topbun_1 table_1)
    (on topbun_1 table_1)
    (atop topbun_1 bottombun_1)

    ;; other items
    (at potato_1 table_2)
    (on potato_1 table_2)
    (at tomato_1 table_4)
    (on tomato_1 table_4)
    (at patty_1 table_3)
    (on patty_1 table_3)

    ;; clear predicates: topmost / lone items
    (clear topbun_1)
    (clear potato_1)
    (clear tomato_1)
    (clear patty_1)

    ;; station empty predicates: stations with no direct on ?s
    (empty board_1)
    (empty stove_1)
    (empty fryer_1)

    ;; player hands and container status
    (nothing robot_1)
    (nocontainer robot_1)

    ;; station free flags
    (station_free table_1)
    (station_free table_2)
    (station_free table_3)
    (station_free table_4)
    (station_free stove_1)
    (station_free board_1)
    (station_free fryer_1)
  )

  (:goal (and
    ;; bottombun is on table_1
    (on bottombun_1 table_1)
    (at bottombun_1 table_1)

    ;; patty is cooked and at table_1
    (iscooked patty_1)
    (at patty_1 table_1)
    (on patty_1 table_1)

    ;; tomato is cut and at table_1
    (iscut tomato_1)
    (at tomato_1 table_1)
    (on tomato_1 table_1)

    ;; topbun is at table_1 and clear
    (at topbun_1 table_1)
    (on topbun_1 table_1)
    (clear topbun_1)

    ;; potato cut and fried and on table_2
    (iscut potato_1)
    (isfried potato_1)
    (at potato_1 table_2)
    (on potato_1 table_2)
  ))
)
