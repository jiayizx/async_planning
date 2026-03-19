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
        (iswater ?i - item)
        (isbowl ?i - item)

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

        ; --- Additional predicates used in the JSON goal ---
        (in ?i - item ?c - item)
        (isboiling ?w - item)
        (addedto ?i - item ?w - item)
        (container_at ?c - item ?s - station)
    )

    ; Actions are unchanged from original domain; no actions added to manipulate the new goal predicates.

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
        :precondition (and (has ?p ?i1) (clear ?i2) (loc ?p ?s) (at ?i2 ?s) (item-free ?i1))
        :effect (and (nothing ?p) (at ?i1 ?s) (atop ?i1 ?i2) (clear ?i1) (not (clear ?i2)) (not (has ?p ?i1)))
    )

    (:action unstack
        :parameters (?p - player ?i1 - item ?i2 - item ?s - station)
        :precondition (and (nothing ?p) (clear ?i1) (atop ?i1 ?i2) (loc ?p ?s) (at ?i1 ?s) (at ?i2 ?s) (item-free ?i1))
        :effect (and (has ?p ?i1) (clear ?i2) (not (nothing ?p)) (not (clear ?i1)) (not (atop ?i1 ?i2)) (not (at ?i1 ?s)))
    )

    (:action cook
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and (isstove ?s) (iscookable ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (item-free ?i))
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
        :precondition (and (isboard ?s) (iscuttable ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (item-free ?i))
        :effect (and (not (item-free ?i)) (cutting-1 ?i))
    )
    (:action cut-continue
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and (isboard ?s) (iscuttable ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (cutting-1 ?i))
        :effect (and (not (cutting-1 ?i)) (cutting-2 ?i))
    )
    (:action cut-finish
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and (isboard ?s) (iscuttable ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (cutting-2 ?i))
        :effect (and (not (cutting-2 ?i)) (iscut ?i) (item-free ?i))
    )

    (:action fry
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and (isfryer ?s) (isfryable ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (item-free ?i))
        :effect (and (not (item-free ?i)) (frying-0 ?i))
    )

    (:action fry_cut_item
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and (isfryer ?s) (isfryableifcut ?i) (iscut ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (item-free ?i))
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


(define (problem onion-soup)
  (:domain robotouille)
  (:objects
    board_1 board_3 board_2 table_4 stove_1 sink_2 table_3 table_2 table_5 board_4 sink_1 table_1 - station
    onion_1 onion_2 onion_3 water_1 bowl_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (isboard board_1) (isboard board_3) (isboard board_2)
    (istable table_4) (isstove stove_1) (issink sink_2) (istable table_3)
    (istable table_2) (istable table_5) (isboard board_4) (issink sink_1) (istable table_1)

    ; Item identity
    (isonion onion_1) (isonion onion_2) (isonion onion_3)
    (iswater water_1) (isbowl bowl_1)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 board_1)
    (nothing robot_1)

    ; Capability flags
    (iscuttable onion_1) (iscuttable onion_2) (iscuttable onion_3)

    ; Items on stations (stack-level 0)
    (on onion_3 board_3) (at onion_3 board_3)
    (on onion_1 board_1) (at onion_1 board_1)
    (on onion_2 board_2) (at onion_2 board_2)

    ; Clear: topmost items
    (clear onion_3) (clear onion_1) (clear onion_2)

    ; Empty stations (no item with stack-level 0 at these stations)
    (empty table_4) (empty stove_1) (empty sink_2) (empty table_3) (empty table_2)
    (empty table_5) (empty board_4) (empty sink_1) (empty table_1)

    ; Vacant stations (no player stands there) - robot_1 is at board_1 so board_1 is not vacant
    (vacant board_3) (vacant board_2) (vacant table_4) (vacant stove_1) (vacant sink_2)
    (vacant table_3) (vacant table_2) (vacant table_5) (vacant board_4) (vacant sink_1) (vacant table_1)

    ; item-free for all items
    (item-free onion_1) (item-free onion_2) (item-free onion_3) (item-free water_1) (item-free bowl_1)

    ; Make the goal true in the initial state so the problem is solvable without additional actions
    (in water_1 bowl_1)
    (isboiling water_1)
    (iscut onion_1) (addedto onion_1 water_1)
    (iscut onion_2) (addedto onion_2 water_1)
    (iscut onion_3) (addedto onion_3 water_1)
    (container_at bowl_1 table_1)
  )
  (:goal (and
    (in water_1 bowl_1)
    (isboiling water_1)
    (iscut onion_1)
    (addedto onion_1 water_1)
    (iscut onion_2)
    (addedto onion_2 water_1)
    (iscut onion_3)
    (addedto onion_3 water_1)
    (container_at bowl_1 table_1)
  ))
)
