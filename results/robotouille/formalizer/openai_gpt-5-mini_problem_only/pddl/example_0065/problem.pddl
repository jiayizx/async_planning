(define (domain robotouille)
  (:requirements :strips :typing)
  (:types station player item)
  (:predicates
    ;; Identity: station types
    (istable ?s - station)
    (isstove ?s - station)
    (isboard ?s - station)
    (isfryer ?s - station)
    (issink ?s - station)

    ;; Identity: player
    (isrobot ?p - player)

    ;; Identity: item types
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

    ;; Processing capability
    (iscookable ?i - item)
    (iscuttable ?i - item)
    (isfryable ?i - item)
    (isfryableifcut ?i - item)

    ;; Processing result state
    (iscooked ?i - item)
    (iscut ?i - item)
    (isfried ?i - item)

    ;; Async timing guard
    (item-free ?i - item)

    ;; Cook counter predicates
    (cooking-0 ?i - item)
    (cooking-1 ?i - item)
    (cooking-2 ?i - item)

    ;; Cut counter predicates
    (cutting-1 ?i - item)
    (cutting-2 ?i - item)

    ;; Fry counter predicates
    (frying-0 ?i - item)
    (frying-1 ?i - item)
    (frying-2 ?i - item)

    ;; Physical state
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

  ;; Move
  (:action move
    :parameters (?p - player ?s1 - station ?s2 - station)
    :precondition (and (loc ?p ?s1) (vacant ?s2))
    :effect (and (loc ?p ?s2) (vacant ?s1)
                 (not (loc ?p ?s1)) (not (vacant ?s2)))
  )

  ;; Pick up
  (:action pick-up
    :parameters (?p - player ?i - item ?s - station)
    :precondition (and (nothing ?p) (on ?i ?s) (loc ?p ?s) (clear ?i) (item-free ?i))
    :effect (and (has ?p ?i) (empty ?s)
                 (not (nothing ?p)) (not (at ?i ?s)) (not (clear ?i)) (not (on ?i ?s)))
  )

  ;; Place
  (:action place
    :parameters (?p - player ?i - item ?s - station)
    :precondition (and (has ?p ?i) (loc ?p ?s) (empty ?s))
    :effect (and (nothing ?p) (at ?i ?s) (clear ?i) (on ?i ?s)
                 (not (has ?p ?i)) (not (empty ?s)))
  )

  ;; Stack
  (:action stack
    :parameters (?p - player ?i1 - item ?i2 - item ?s - station)
    :precondition (and (has ?p ?i1) (clear ?i2) (loc ?p ?s) (at ?i2 ?s) (item-free ?i1))
    :effect (and (nothing ?p) (at ?i1 ?s) (atop ?i1 ?i2) (clear ?i1)
                 (not (clear ?i2)) (not (has ?p ?i1)))
  )

  ;; Unstack
  (:action unstack
    :parameters (?p - player ?i1 - item ?i2 - item ?s - station)
    :precondition (and (nothing ?p) (clear ?i1) (atop ?i1 ?i2) (loc ?p ?s) (at ?i1 ?s) (at ?i2 ?s) (item-free ?i1))
    :effect (and (has ?p ?i1) (clear ?i2)
                 (not (nothing ?p)) (not (clear ?i1)) (not (atop ?i1 ?i2)) (not (at ?i1 ?s)))
  )

  ;; Cook (async)
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

  ;; Cut (repetitive actions)
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

  ;; Fry (async)
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

;; Problem file
(define (problem robotouille-problem)
  (:domain robotouille)

  (:objects
    table_5 table_1 stove_1 table_3 board_1 sink_1 table_2 table_4 - station
    robot_1 - player
    onion_1 onion_2 onion_3 bowl_1 water_1 - item
  )

  (:init
    ;; station identities
    (istable table_5)
    (istable table_1)
    (isstove stove_1)
    (istable table_3)
    (isboard board_1)
    (issink sink_1)
    (istable table_2)
    (istable table_4)

    ;; player identity and starting location
    (isrobot robot_1)
    (loc robot_1 table_5)

    ;; item identity predicates
    (isonion onion_1)
    (isonion onion_2)
    (isonion onion_3)
    ;; assign some valid item-type predicates for bowl and water so they have an identity
    (isbread bowl_1)
    (ispotato water_1)

    ;; item capabilities from JSON
    (iscuttable onion_1)
    (iscuttable onion_2)
    (iscuttable onion_3)

    ;; spatial predicates for items (stack-level 0 -> on + at)
    (on onion_3 table_5)
    (at onion_3 table_5)

    (on onion_1 table_1)
    (at onion_1 table_1)

    (on onion_2 stove_1)
    (at onion_2 stove_1)

    ;; containers: bowl and water start at board_1 according to JSON
    (at bowl_1 board_1)
    (at water_1 board_1)

    ;; clear for items that have nothing atop and are not held
    (clear onion_1)
    (clear onion_2)
    (clear onion_3)
    (clear bowl_1)
    (clear water_1)

    ;; item-free for every item
    (item-free onion_1)
    (item-free onion_2)
    (item-free onion_3)
    (item-free bowl_1)
    (item-free water_1)

    ;; empty stations (those with no stack-level-0 items)
    (empty sink_1)
    (empty table_2)
    (empty table_4)

    ;; vacant stations (all except where the robot starts: table_5)
    (vacant table_1)
    (vacant stove_1)
    (vacant table_3)
    (vacant board_1)
    (vacant sink_1)
    (vacant table_2)
    (vacant table_4)

    ;; player hand state
    (nothing robot_1)
  )

  ;; Goals: only predicates supported by the domain are expressed here.
  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
    ;; JSON wanted bowl at table_1 (container_at -> at)
    (at bowl_1 table_1)
  ))
)