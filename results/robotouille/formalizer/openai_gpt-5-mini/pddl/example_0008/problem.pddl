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

        ;; Positive complement of "water not yet created"
        (water_available ?w - water)

        ;; Positive complement of "station not busy"
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


(define (problem robotouille-async-prob)
  (:domain robotouille-async)

  (:objects
    table_1 table_2 table_3 table_4 table_5 table_6 - station
    stove_1 board_1 sink_1 - station

    robot_1 - player

    tomato_1 lettuce_1 chicken_1 bread_1 bread_2 - item

    bowl_1 pot_1 - container
    water_1 - water
  )

  (:init
    ;; station types
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (istable table_6)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)

    ;; player
    (isrobot robot_1)
    ;; robot at (0,0) facing down -> facing pos (0,1) => table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; items and their station locations
    (istomato tomato_1)
    (at tomato_1 table_3)
    (on tomato_1 table_3)
    (clear tomato_1)

    (islettuce lettuce_1)
    (at lettuce_1 table_4)
    (on lettuce_1 table_4)
    (clear lettuce_1)

    (ischicken chicken_1)
    (at chicken_1 table_5)
    (on chicken_1 table_5)
    (clear chicken_1)

    (isbread bread_1)
    (at bread_1 table_6)
    (on bread_1 table_6)

    (isbread bread_2)
    (at bread_2 table_6)
    (atop bread_2 bread_1)
    (clear bread_2)

    ;; capabilities
    (iscuttable tomato_1)
    (iscuttable lettuce_1)
    (iscookable chicken_1)

    ;; containers
    (container_at bowl_1 table_1)
    (container_on_station bowl_1)
    (isbowltype bowl_1)

    (container_at pot_1 sink_1)
    (container_on_station pot_1)
    (ispottype pot_1)

    ;; water availability (to allow fill)
    (water_available water_1)

    ;; station vacancy: robot at table_1, others vacant
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant table_6)
    (vacant stove_1)
    (vacant board_1)
    (vacant sink_1)

    ;; empty stations (no direct on items)
    (empty table_1)
    (empty table_2)
    (empty stove_1)
    (empty board_1)
    (empty sink_1)

    ;; station_free for all
    (station_free table_1)
    (station_free table_2)
    (station_free table_3)
    (station_free table_4)
    (station_free table_5)
    (station_free table_6)
    (station_free stove_1)
    (station_free board_1)
    (station_free sink_1)
  )

  (:goal (and
    (in water_1 bowl_1)
    (isboiling water_1)
    (addedto tomato_1 water_1)
    (container_at bowl_1 table_1)

    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
  ))
)
