; Corrected DOMAIN and PROBLEM PDDL
; NOTE: Some planners require domain and problem in separate files. Below both are provided sequentially.
; --- DOMAIN: robotouille ---
(define (domain robotouille)
    (:requirements :strips :typing)
    (:types station player item)
    (:predicates
        ; station identity
        (istable ?s - station)
        (isstove ?s - station)
        (isboard ?s - station)
        (isfryer ?s - station)
        (issink ?s - station)
        ; player identity
        (isrobot ?p - player)
        ; item identity by kind
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
        ; capabilities
        (iscookable ?i - item)
        (iscuttable ?i - item)
        (isfryable ?i - item)
        (isfryableifcut ?i - item)
        ; results
        (iscooked ?i - item)
        (iscut ?i - item)
        (isfried ?i - item)
        ; processing guard
        (item-free ?i - item)
        ; counters
        (cooking-0 ?i - item)
        (cooking-1 ?i - item)
        (cooking-2 ?i - item)
        (cutting-1 ?i - item)
        (cutting-2 ?i - item)
        (frying-0 ?i - item)
        (frying-1 ?i - item)
        (frying-2 ?i - item)
        ; world state
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
        :effect (and (loc ?p ?s2) (vacant ?s1) (not (loc ?p ?s1)) (not (vacant ?s2)))
    )

    (:action pick-up
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and (nothing ?p) (on ?i ?s) (loc ?p ?s) (clear ?i) (item-free ?i))
        :effect (and (has ?p ?i) (empty ?s) (not (nothing ?p)) (not (at ?i ?s)) (not (clear ?i)) (not (on ?i ?s)))
    )

    (:action place
        :parameters (?p - player ?i - item ?s - station)
        :precondition (and (has ?p ?i) (loc ?p ?s) (empty ?s))
        :effect (and (nothing ?p) (at ?i ?s) (clear ?i) (on ?i ?s) (not (has ?p ?i)) (not (empty ?s)))
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

; --- PROBLEM: robotouille-problem ---
(define (problem robotouille-problem)
  (:domain robotouille)

  (:objects
    table_1 table_3 fryer_1 table_4 table_2 - station
    robot_1 - player
    bread_1 bread_2 chicken_1 lettuce_1 tomato_1 - item
  )

  (:init
    ; station types (match types used by actions)
    (istable table_1)
    (istable table_3)
    (isfryer fryer_1)
    (istable table_4)
    (istable table_2)

    ; player identity and starting location (facing table_1)
    (isrobot robot_1)
    (loc robot_1 table_1)

    ; item identity predicates
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (islettuce lettuce_1)
    (istomato tomato_1)

    ; capability flags as given in environment
    (isfryable chicken_1)
    (iscuttable lettuce_1)
    (iscuttable tomato_1)

    ; spatial initialization: items at stations (stack-level 0 => on+at)
    (on bread_1 table_1)
    (at bread_1 table_1)

    (on bread_2 table_3)
    (at bread_2 table_3)

    (on chicken_1 fryer_1)
    (at chicken_1 fryer_1)

    (on lettuce_1 table_4)
    (at lettuce_1 table_4)

    (on tomato_1 table_2)
    (at tomato_1 table_2)

    ; all items start clear (no item atop them) and item-free
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    (clear lettuce_1)
    (clear tomato_1)

    (item-free bread_1)
    (item-free bread_2)
    (item-free chicken_1)
    (item-free lettuce_1)
    (item-free tomato_1)

    ; vacant indicates no player at that station
    (vacant table_3)
    (vacant fryer_1)
    (vacant table_4)
    (vacant table_2)
    ; table_1 is occupied by robot_1 so NOT vacant

    ; empty indicates station has no stack-level-0 item
    ; In this environment every station has a stack-level-0 item, so no (empty ...) facts are added.

    ; robot starts empty-handed
    (nothing robot_1)
  )

  (:goal (and
    ; mapped goal predicates from environment
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
