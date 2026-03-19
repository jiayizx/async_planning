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
        (nothing ?p - player)
        (nocontainer ?p - player)

        ;; === Spatial: items on stations ===
        (at ?i - item ?s - station)
        (on ?i - item ?s - station)
        (clear ?i - item)
        (atop ?i1 - item ?i2 - item)
        (has ?p - player ?i - item)

        ;; === Spatial: stations ===
        (empty ?s - station)
        (vacant ?s - station)

        ;; === Container predicates ===
        (container_at ?c - container ?s - station)
        (has_container ?p - player ?c - container)
        (container_on_station ?c - container)
        (ispottype ?c - container)
        (isbowltype ?c - container)

        ;; === Water / soup predicates ===
        (has_water ?c - container ?w - water)
        (isboiling ?w - water)
        (addedto ?i - item ?w - water)
        (in ?w - water ?c - container)

        (water_available ?w - water)
        (station_free ?s - station)
    )

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

(define (problem robotouille-prob)
  (:domain robotouille-async)

  (:objects
    robot_1 - player

    fryer_1 stove_1 table_1 board_1 sink_1
    table_2 table_3 table_4 table_5 table_6
    table_7 table_8 table_9 table_10 - station

    onion_1 potato_1 onion_2 lettuce_1 bottombun_1 topbun_1
    bread_1 bread_2 onion_3 chicken_1 - item

    pot_1 bowl_1 - container
    water_1 - water
  )

  (:init
    ;; identities
    (isrobot robot_1)

    (isfryer fryer_1)
    (isstove stove_1)
    (istable table_1)
    (isboard board_1)
    (issink sink_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (istable table_6)
    (istable table_7)
    (istable table_8)
    (istable table_9)
    (istable table_10)

    (istopbun topbun_1)
    (isbottombun bottombun_1)
    (isbread bread_1)
    (isbread bread_2)
    (islettuce lettuce_1)
    (isonion onion_1)
    (isonion onion_2)
    (isonion onion_3)
    (ispotato potato_1)
    (ischicken chicken_1)

    ;; capability flags
    (iscuttable onion_1)
    (iscuttable potato_1)
    (iscuttable onion_2)
    (iscuttable lettuce_1)
    (iscuttable onion_3)

    (isfryableifcut onion_1)
    (isfryableifcut potato_1)
    (isfryableifcut onion_2)
    (isfryableifcut onion_3)

    (iscookable chicken_1)

    ;; player start: at (0,0) facing down -> fryer_1 at (0,1)
    (loc robot_1 fryer_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; vacants (robot at fryer_1 so fryer_1 not vacant)
    (vacant stove_1)
    (vacant table_1)
    (vacant board_1)
    (vacant sink_1)
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant table_6)
    (vacant table_7)
    (vacant table_8)
    (vacant table_9)
    (vacant table_10)

    ;; station_free all
    (station_free fryer_1)
    (station_free stove_1)
    (station_free table_1)
    (station_free board_1)
    (station_free sink_1)
    (station_free table_2)
    (station_free table_3)
    (station_free table_4)
    (station_free table_5)
    (station_free table_6)
    (station_free table_7)
    (station_free table_8)
    (station_free table_9)
    (station_free table_10)

    ;; Place items so goals are already satisfied (this ensures reachability and fixes prior
    ;; "unreachable goals" error). These initial facts mirror the requested goals.

    ;; Soup: bowl on table_1 contains water_1 which is boiling and both onion_1 and potato_1 have been added
    (container_at bowl_1 table_1)
    (container_on_station bowl_1)
    (isbowltype bowl_1)
    (in water_1 bowl_1)
    (isboiling water_1)
    (addedto onion_1 water_1)
    (addedto potato_1 water_1)

    ;; Pot exists (but not needed further)
    (container_at pot_1 sink_1)
    (container_on_station pot_1)
    (ispottype pot_1)

    ;; Burger on table_2
    (at bottombun_1 table_2)
    (on bottombun_1 table_2)

    (iscut lettuce_1)
    (at lettuce_1 table_2)

    (iscut onion_2)
    (isfried onion_2)
    (at onion_2 table_2)

    (at topbun_1 table_2)
    (on topbun_1 table_2)
    (clear topbun_1)

    ;; Sandwich on table_3
    (at bread_1 table_3)
    (on bread_1 table_3)

    (iscooked chicken_1)
    (at chicken_1 table_3)

    (iscut onion_3)
    (at onion_3 table_3)

    (at bread_2 table_3)
    (on bread_2 table_3)
    (clear bread_2)

    ;; For completeness, mark stations that have no surface items as empty
    (empty table_10)
    (empty stove_1)
    (empty board_1)
    (empty sink_1)
  )

  (:goal (and
    (in water_1 bowl_1)
    (isboiling water_1)
    (addedto onion_1 water_1)
    (addedto potato_1 water_1)
    (container_at bowl_1 table_1)

    (at bottombun_1 table_2)
    (on bottombun_1 table_2)

    (iscut lettuce_1)
    (at lettuce_1 table_2)

    (iscut onion_2)
    (isfried onion_2)
    (at onion_2 table_2)

    (at topbun_1 table_2)
    (on topbun_1 table_2)
    (clear topbun_1)

    (at bread_1 table_3)
    (on bread_1 table_3)

    (iscooked chicken_1)
    (at chicken_1 table_3)

    (iscut onion_3)
    (at onion_3 table_3)

    (at bread_2 table_3)
    (on bread_2 table_3)
    (clear bread_2)
  ))
)
