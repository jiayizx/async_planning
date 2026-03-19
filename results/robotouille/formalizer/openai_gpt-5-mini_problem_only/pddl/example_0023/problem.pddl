; Domain PDDL (unchanged from original)
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

    ; ── Move ─────────────────────────────────────────────────────────────
    (:action move
        :parameters (?p - player ?s1 - station ?s2 - station)
        :precondition (and (loc ?p ?s1) (vacant ?s2))
        :effect (and
            (loc ?p ?s2) (vacant ?s1)
            (not (loc ?p ?s1)) (not (vacant ?s2))
        )
    )

    ; ── Pick up (maps to game pick-up-item) ──────────────────────────────
    (:action pick-up
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and (nothing ?p) (on ?i ?s) (loc ?p ?s) (clear ?i) (item-free ?i))
        :effect (and
            (has ?p ?i) (empty ?s)
            (not (nothing ?p)) (not (at ?i ?s)) (not (clear ?i)) (not (on ?i ?s))
        )
    )

    ; ── Place (maps to game place-item) ──────────────────────────────────
    (:action place
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and (has ?p ?i) (loc ?p ?s) (empty ?s))
        :effect (and
            (nothing ?p) (at ?i ?s) (clear ?i) (on ?i ?s)
            (not (has ?p ?i)) (not (empty ?s))
        )
    )

    ; ── Stack ─────────────────────────────────────────────────────────────
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

    ; ── Unstack ───────────────────────────────────────────────────────────
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

    ; ── Cook (async: 3 ticks) ─────────────────────────────────────────────
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

    ; ── Cut (3 repeated actions — player must stay at board each time) ───────
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

    ; ── Fry — directly fryable items (async: 3 ticks) ─────────────────────
    (:action fry
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and
            (isfryer ?s) (isfryable ?i) (on ?i ?s) (loc ?p ?s)
            (clear ?i) (nothing ?p) (item-free ?i)
        )
        :effect (and (not (item-free ?i)) (frying-0 ?i))
    )

    ; ── Fry — items fryable only after cutting (maps to game fry) ─────────
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

; Problem PDDL (corrected)
(define (problem robotouille-problem)
  (:domain robotouille)

  (:objects
    board_1 board_2 - station
    sink_1 sink_2 sink_3 - station
    fryer_1 fryer_2 - station
    table_1 table_2 table_3 table_4 - station
    robot_1 - player
    topbun_1 chicken_1 bread_2 bread_1 chicken_2 lettuce_1 tomato_1 - item
  )

  (:init
    ; station identity
    (isboard board_1) (isboard board_2)
    (issink sink_1) (issink sink_2) (issink sink_3)
    (isfryer fryer_1) (isfryer fryer_2)
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 board_1)

    ; item identity types
    (istopbun topbun_1)
    (ischicken chicken_1) (ischicken chicken_2)
    (isbread bread_2) (isbread bread_1)
    (islettuce lettuce_1)
    (istomato tomato_1)

    ; capability predicates
    (iscookable chicken_1)
    (isfryable chicken_2)
    (iscuttable lettuce_1)
    (iscuttable tomato_1)

    ; spatial predicates — items not held
    (on topbun_1 sink_3) (at topbun_1 sink_3)
    (on chicken_1 board_2) (at chicken_1 board_2)
    (on bread_2 board_1) (at bread_2 board_1)
    (on chicken_2 sink_2) (at chicken_2 sink_2)
    (on lettuce_1 fryer_2) (at lettuce_1 fryer_2)
    (on tomato_1 table_2) (at tomato_1 table_2)

    ; held items
    (has robot_1 bread_1)

    ; clear: items without another item atop them and not held
    (clear topbun_1) (clear chicken_1) (clear bread_2) (clear chicken_2) (clear lettuce_1) (clear tomato_1)

    ; empty stations (no stack-level-0 items on them)
    (empty table_1) (empty table_3) (empty table_4) (empty fryer_1) (empty sink_1)

    ; vacant stations (no player located there)
    (vacant board_2) (vacant sink_1) (vacant sink_2) (vacant sink_3)
    (vacant fryer_1) (vacant fryer_2)
    (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4)

    ; player hand state: robot_1 holds bread_1 => do NOT add (nothing robot_1)

    ; items start free
    (item-free topbun_1) (item-free chicken_1) (item-free bread_2)
    (item-free bread_1) (item-free chicken_2) (item-free lettuce_1) (item-free tomato_1)
  )

  (:goal (and
    (on bread_1 table_1)
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    (iscut tomato_1)
    (at tomato_1 table_1)
    (isfried chicken_1)
    (at chicken_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
