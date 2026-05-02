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
    )

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

;; Problem definition
(define (problem robotouille-prob)
  (:domain robotouille)
  (:objects
    ;; stations
    table_2 table_10 stove_1 sink_1 table_3 table_8 table_7 table_1 table_6 table_5 board_1 table_4 stove_2 table_11 table_9 fryer_1 sink_2 - station

    ;; player
    robot_1 - player

    ;; items
    onion_2 potato_1 onion_3 lettuce_1 bottombun_1 topbun_1 bread_2 bread_1 onion_1 chicken_1 - item
  )

  (:init
    ;; station identity facts
    (istable table_2) (istable table_10) (isstove stove_1) (issink sink_1) (istable table_3)
    (istable table_8) (istable table_7) (istable table_1) (istable table_6) (istable table_5)
    (isboard board_1) (istable table_4) (isstove stove_2) (istable table_11) (istable table_9)
    (isfryer fryer_1) (issink sink_2)

    ;; player identity
    (isrobot robot_1)

    ;; item type identity facts
    (isonion onion_2) (ispotato potato_1) (isonion onion_3) (islettuce lettuce_1)
    (isbottombun bottombun_1) (istopbun topbun_1) (isbread bread_2) (isbread bread_1)
    (isonion onion_1) (ischicken chicken_1)

    ;; player starting location
    (loc robot_1 table_2)

    ;; capability flags from items
    (iscuttable onion_2) (isfryableifcut onion_2)
    (iscuttable potato_1) (isfryableifcut potato_1)
    (iscuttable onion_3) (isfryableifcut onion_3)
    (iscuttable lettuce_1)
    (iscookable chicken_1)

    ;; item placements (stack-level 0 -> at & on)
    (on onion_2 table_2) (at onion_2 table_2)
    (on potato_1 table_10) (at potato_1 table_10)
    (on onion_3 table_11) (at onion_3 table_11)
    (on lettuce_1 stove_1) (at lettuce_1 stove_1)
    (on bottombun_1 sink_1) (at bottombun_1 sink_1)
    (on topbun_1 table_3) (at topbun_1 table_3)
    (on bread_2 table_8) (at bread_2 table_8)
    (on bread_1 table_7) (at bread_1 table_7)
    (on onion_1 table_1) (at onion_1 table_1)
    (on chicken_1 table_6) (at chicken_1 table_6)

    ;; clear facts for items with nothing atop them
    (clear onion_2) (clear potato_1) (clear onion_3) (clear lettuce_1)
    (clear bottombun_1) (clear topbun_1) (clear bread_2) (clear bread_1)
    (clear onion_1) (clear chicken_1)

    ;; empty stations: those with no stack-level-0 item
    (empty table_5) (empty table_4) (empty stove_2) (empty table_9) (empty fryer_1) (empty sink_2)

    ;; vacant stations: all except the one the robot starts at
    (vacant table_10) (vacant stove_1) (vacant sink_1) (vacant table_3) (vacant table_8)
    (vacant table_7) (vacant table_1) (vacant table_6) (vacant table_5) (vacant board_1)
    (vacant table_4) (vacant stove_2) (vacant table_11) (vacant table_9) (vacant fryer_1) (vacant sink_2)

    ;; player hand state
    (nothing robot_1)

    ;; items start free
    (item-free onion_2) (item-free potato_1) (item-free onion_3) (item-free lettuce_1)
    (item-free bottombun_1) (item-free topbun_1) (item-free bread_2) (item-free bread_1)
    (item-free onion_1) (item-free chicken_1)
  )

  (:goal (and
    ;; Goals translated only to predicates present in the domain
    (on bottombun_1 table_10)
    (iscut lettuce_1)
    (at lettuce_1 table_10)
    (iscut onion_2)
    (isfried onion_2)
    (at onion_2 table_10)
    (at topbun_1 table_10)
    (clear topbun_1)
    (on bread_1 table_11)
    (iscooked chicken_1)
    (at chicken_1 table_11)
    (iscut onion_3)
    (at onion_3 table_11)
    (at bread_2 table_11)
    (clear bread_2)
  ))
)
