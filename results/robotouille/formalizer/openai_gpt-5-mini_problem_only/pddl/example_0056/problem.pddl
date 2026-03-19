(define (domain robotouille)
  (:requirements :strips :typing)
  (:types station player item)
  (:predicates
    (istable ?s - station)
    (isstove ?s - station)
    (isboard ?s - station)
    (isfryer ?s - station)
    (issink ?s - station)

    (isrobot ?p - player)

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

    (iscookable ?i - item)
    (iscuttable ?i - item)
    (isfryable ?i - item)
    (isfryableifcut ?i - item)

    (iscooked ?i - item)
    (iscut ?i - item)
    (isfried ?i - item)

    (item-free ?i - item)

    (cooking-0 ?i - item)
    (cooking-1 ?i - item)
    (cooking-2 ?i - item)

    (cutting-1 ?i - item)
    (cutting-2 ?i - item)

    (frying-0 ?i - item)
    (frying-1 ?i - item)
    (frying-2 ?i - item)

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

(define (problem robotouille-problem-fixed)
  (:domain robotouille)
  (:objects
    sink_1 sink_2 sink_3 - station
    table_1 table_2 table_3 table_4 table_5 - station
    fryer_1 - station
    stove_1 stove_2 - station
    board_1 - station

    robot_1 - player

    chicken_1 potato_1 bottombun_1 bowl_1 water_1 - item
  )

  (:init
    ; station identities
    (issink sink_1) (issink sink_2) (issink sink_3)
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5)
    (isfryer fryer_1)
    (isstove stove_1) (isstove stove_2)
    (isboard board_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 sink_1)

    ; item identities (assign an item identity predicate to every item)
    (ischicken chicken_1)
    (ispotato potato_1)
    (isbottombun bottombun_1)
    (isbread bowl_1)
    (isbread water_1)

    ; item capabilities from JSON
    (iscookable chicken_1)
    (iscuttable potato_1)

    ; spatial placement for stack-level-0 items: on + at
    (on chicken_1 table_4) (at chicken_1 table_4)
    (on potato_1 sink_2) (at potato_1 sink_2)
    (on bottombun_1 table_2) (at bottombun_1 table_2)

    ; place bowl and water somewhere initially (table_3)
    (on bowl_1 table_3) (at bowl_1 table_3)
    (on water_1 table_3) (at water_1 table_3)

    ; clear for items that have nothing atop them
    (clear chicken_1) (clear potato_1) (clear bottombun_1) (clear bowl_1) (clear water_1)

    ; item-free for every item
    (item-free chicken_1) (item-free potato_1) (item-free bottombun_1) (item-free bowl_1) (item-free water_1)

    ; player hand state
    (nothing robot_1)

    ; empty stations (those with no stack-level-0 item on them)
    (empty sink_1) (empty sink_3)
    (empty table_1) (empty table_5)
    (empty fryer_1) (empty stove_1) (empty stove_2) (empty board_1)

    ; vacant stations: all stations not occupied by the player (robot_1 at sink_1)
    (vacant sink_2) (vacant sink_3)
    (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5)
    (vacant fryer_1) (vacant stove_1) (vacant stove_2) (vacant board_1)
  )

  (:goal (and
    (atop water_1 bowl_1)
    (atop potato_1 water_1)
    (iscooked water_1)
    (at bowl_1 table_1)
  ))
)
