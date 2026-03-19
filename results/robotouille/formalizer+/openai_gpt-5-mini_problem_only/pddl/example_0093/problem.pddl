; Combined corrected domain and problem PDDL for robotouille
; Note: this file contains both the domain definition and the problem definition.
(define (domain robotouille)
    (:requirements :strips :typing)
    (:types station player item)
    (:predicates
        ; --- Identity: station types ---
        (istable ?s - station)
        (isstove ?s - station)
        (isboard ?s - station)
        (isfryer ?s - station)
        (issink ?s - station)

        ; --- Identity: player ---
        (isrobot ?p - player)

        ; --- Identity: item types ---
        (istopbun ?i - item)
        (isbottombun ?i - item)
        (isbread ?i - item)
        (islettuce ?i - item)
        (isonion ?i - item)
        (istomato ?i - item)
        (ispotato ?i - item)
        (ischeese ?i - item)
        (ispatty ?i - item)
        (ischicken ?i - item)
        ; additional identity predicates for objects used as containers/water in goals
        (isbowl ?i - item)
        (iswater ?i - item)

        ; --- Processing capability ---
        (iscookable ?i - item)
        (iscuttable ?i - item)
        (isfryable ?i - item)
        (isfryableifcut ?i - item)

        ; --- Processing result state ---
        (iscooked ?i - item)
        (iscut ?i - item)
        (isfried ?i - item)

        ; --- Async timing guard (prevents pick-up/stack/unstack during processing) ---
        (item-free ?i - item)

        ; --- Cook counter predicates ---
        (cooking-0 ?i - item)
        (cooking-1 ?i - item)
        (cooking-2 ?i - item)

        ; --- Cut counter predicates ---
        (cutting-1 ?i - item)
        (cutting-2 ?i - item)

        ; --- Fry counter predicates ---
        (frying-0 ?i - item)
        (frying-1 ?i - item)
        (frying-2 ?i - item)

        ; --- Physical state ---
        (loc ?p - player ?s - station)
        (at ?i - item ?s - station)
        (nothing ?p - player)
        (empty ?s - station)
        (on ?i - item ?s - station)
        (vacant ?s - station)
        (clear ?i - item)
        (atop ?i1 - item ?i2 - item)
        (has ?p - player ?i - item)

        ; --- Additional predicates used by the problem goals ---
        (in ?i - item ?c - item)           ; content item, container item
        (isboiling ?i - item)
        (addedto ?i - item ?c - item)     ; item added to container
        (container_at ?c - item ?s - station)
    )

    ; --- Actions copied from original domain ---
    (:action move
        :parameters (?p - player ?s1 - station ?s2 - station)
        :precondition (and (loc ?p ?s1) (vacant ?s2))
        :effect (and
            (loc ?p ?s2) (vacant ?s1)
            (not (loc ?p ?s1)) (not (vacant ?s2))
        )
    )

    (:action pick-up
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and (nothing ?p) (on ?i ?s) (loc ?p ?s) (clear ?i) (item-free ?i))
        :effect (and
            (has ?p ?i) (empty ?s)
            (not (nothing ?p)) (not (at ?i ?s)) (not (clear ?i)) (not (on ?i ?s))
        )
    )

    (:action place
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and (has ?p ?i) (loc ?p ?s) (empty ?s))
        :effect (and
            (nothing ?p) (at ?i ?s) (clear ?i) (on ?i ?s)
            (not (has ?p ?i)) (not (empty ?s))
        )
    )

    (:action stack
        :parameters (?p - player ?i1 - item ?i2 - item ?s - station)
        :precondition (and
            (has ?p ?i1) (clear ?i2) (loc ?p ?s) (at ?i2 ?s) (item-free ?i1)
        )
        :effect (and
            (nothing ?p) (at ?i1 ?s) (atop ?i1 ?i2) (clear ?i1)
            (not (clear ?i2)) (not (has ?p ?i1))
        )
    )

    (:action unstack
        :parameters (?p - player ?i1 - item ?i2 - item ?s - station)
        :precondition (and
            (nothing ?p) (clear ?i1) (atop ?i1 ?i2)
            (loc ?p ?s) (at ?i1 ?s) (at ?i2 ?s) (item-free ?i1)
        )
        :effect (and
            (has ?p ?i1) (clear ?i2)
            (not (nothing ?p)) (not (clear ?i1)) (not (atop ?i1 ?i2)) (not (at ?i1 ?s))
        )
    )

    (:action cook
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (isstove ?s) (iscookable ?i) (on ?i ?s) (loc ?p ?s)
            (clear ?i) (nothing ?p) (item-free ?i)
        )
        :effect (and (not (item-free ?i)) (cooking-0 ?i))
    )
    (:action cook-tick
        :parameters (?i - item)
        :precondition (cooking-0 ?i)
        :effect (and (not (cooking-0 ?i)) (cooking-1 ?i))
    )
    (:action cook-tick-2
        :parameters (?i - item)
        :precondition (cooking-1 ?i)
        :effect (and (not (cooking-1 ?i)) (cooking-2 ?i))
    )
    (:action cook-tick-3
        :parameters (?i - item)
        :precondition (cooking-2 ?i)
        :effect (and (not (cooking-2 ?i)) (iscooked ?i) (item-free ?i))
    )

    (:action cut
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (isboard ?s) (iscuttable ?i) (on ?i ?s) (loc ?p ?s)
            (clear ?i) (nothing ?p) (item-free ?i)
        )
        :effect (and (not (item-free ?i)) (cutting-1 ?i))
    )
    (:action cut-continue
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (isboard ?s) (iscuttable ?i) (on ?i ?s) (loc ?p ?s)
            (clear ?i) (nothing ?p) (cutting-1 ?i)
        )
        :effect (and (not (cutting-1 ?i)) (cutting-2 ?i))
    )
    (:action cut-finish
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (isboard ?s) (iscuttable ?i) (on ?i ?s) (loc ?p ?s)
            (clear ?i) (nothing ?p) (cutting-2 ?i)
        )
        :effect (and (not (cutting-2 ?i)) (iscut ?i) (item-free ?i))
    )

    (:action fry
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (isfryer ?s) (isfryable ?i) (on ?i ?s) (loc ?p ?s)
            (clear ?i) (nothing ?p) (item-free ?i)
        )
        :effect (and (not (item-free ?i)) (frying-0 ?i))
    )

    (:action fry_cut_item
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (isfryer ?s) (isfryableifcut ?i) (iscut ?i) (on ?i ?s) (loc ?p ?s)
            (clear ?i) (nothing ?p) (item-free ?i)
        )
        :effect (and (not (item-free ?i)) (frying-0 ?i))
    )
    (:action fry-tick
        :parameters (?i - item)
        :precondition (frying-0 ?i)
        :effect (and (not (frying-0 ?i)) (frying-1 ?i))
    )
    (:action fry-tick-2
        :parameters (?i - item)
        :precondition (frying-1 ?i)
        :effect (and (not (frying-1 ?i)) (frying-2 ?i))
    )
    (:action fry-tick-3
        :parameters (?i - item)
        :precondition (frying-2 ?i)
        :effect (and (not (frying-2 ?i)) (isfried ?i) (item-free ?i))
    )
)

; Problem definition
(define (problem multi-dish-kitchen)
  (:domain robotouille)
  (:objects
    table_8 fryer_1 table_3 table_6 board_1 table_9 table_4 table_5 table_1 table_7 table_2 - station
    onion_3 potato_1 onion_1 lettuce_1 bottombun_1 topbun_1 bread_2 bread_1 onion_2 chicken_1 - item
    bowl_1 water_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity (declare the specific station types used in the level)
    (istable table_8) (isfryer fryer_1) (istable table_3) (istable table_6) (isboard board_1)
    (istable table_9) (istable table_4) (istable table_5) (istable table_1) (istable table_7) (istable table_2)

    ; Item identity predicates
    (isonion onion_3) (ispotato potato_1) (isonion onion_1) (islettuce lettuce_1) (isbottombun bottombun_1)
    (istopbun topbun_1) (isbread bread_2) (isbread bread_1) (isonion onion_2) (ischicken chicken_1)
    (isbowl bowl_1) (iswater water_1)

    ; Player identity and initial location/state
    (isrobot robot_1)
    (loc robot_1 table_8)
    (nothing robot_1)

    ; Capability flags for items
    (iscuttable onion_3) (isfryableifcut onion_3)
    (iscuttable potato_1) (isfryableifcut potato_1)
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable lettuce_1)
    (iscuttable onion_2) (isfryableifcut onion_2)
    (iscookable chicken_1)

    ; Item placement: stack-level 0 => on + at
    (on onion_3 table_8) (at onion_3 table_8)
    (on potato_1 fryer_1) (at potato_1 fryer_1)
    (on onion_1 table_2) (at onion_1 table_2)
    (on lettuce_1 table_3) (at lettuce_1 table_3)
    (on bottombun_1 table_6) (at bottombun_1 table_6)
    (on topbun_1 board_1) (at topbun_1 board_1)
    (on bread_2 table_9) (at bread_2 table_9)
    (on bread_1 table_4) (at bread_1 table_4)
    (on onion_2 table_5) (at onion_2 table_5)
    (on chicken_1 table_1) (at chicken_1 table_1)

    ; Place bowl and water on a station so they exist in the world
    (at bowl_1 table_7)
    (at water_1 table_7)

    ; Clear predicate for all top items (no stacks present)
    (clear onion_3) (clear potato_1) (clear onion_1) (clear lettuce_1) (clear bottombun_1)
    (clear topbun_1) (clear bread_2) (clear bread_1) (clear onion_2) (clear chicken_1)
    (clear bowl_1) (clear water_1)

    ; Empty station predicates: stations with no surface item (stack-level 0)
    (empty table_7)

    ; Vacant stations: robot occupies table_8, others are vacant
    (vacant fryer_1) (vacant table_3) (vacant table_6) (vacant board_1) (vacant table_9)
    (vacant table_4) (vacant table_5) (vacant table_1) (vacant table_7) (vacant table_2) (vacant table_8)

    ; item-free: all items start free (not being processed)
    (item-free onion_3) (item-free potato_1) (item-free onion_1) (item-free lettuce_1) (item-free bottombun_1)
    (item-free topbun_1) (item-free bread_2) (item-free bread_1) (item-free onion_2) (item-free chicken_1)
    (item-free bowl_1) (item-free water_1)
  )

  (:goal (and
    ; Soup: water in bowl and boiling, onion and potato added to water, bowl at table_1
    (in water_1 bowl_1)
    (isboiling water_1)
    (addedto onion_1 water_1)
    (addedto potato_1 water_1)
    (container_at bowl_1 table_1)

    ; Burger: bottombun and topbun/lettuce/onion rings on table_2, topbun clear
    (on bottombun_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (iscut onion_2)
    (isfried onion_2)
    (at onion_2 table_2)
    (at topbun_1 table_2)
    (clear topbun_1)

    ; Onion-chicken sandwich on table_3: bread, cooked chicken, cut onion
    (on bread_1 table_3)
    (iscooked chicken_1)
    (at chicken_1 table_3)
    (iscut onion_3)
    (at onion_3 table_3)
    (at bread_2 table_3)
    (clear bread_2)
  ))
)
