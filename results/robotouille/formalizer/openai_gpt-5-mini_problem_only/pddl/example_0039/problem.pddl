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
    :effect (and (has ?p ?i) (empty ?s) (not (nothing ?p)) (not (at ?i ?s)) (not (clear ?i)) (not (on ?i ?s))))

  (:action place
    :parameters (?p - player ?i - item ?s - station)
    :precondition (and (has ?p ?i) (loc ?p ?s) (empty ?s))
    :effect (and (nothing ?p) (at ?i ?s) (clear ?i) (on ?i ?s) (not (has ?p ?i)) (not (empty ?s))))

  (:action stack
    :parameters (?p - player ?i1 - item ?i2 - item ?s - station)
    :precondition (and (has ?p ?i1) (clear ?i2) (loc ?p ?s) (at ?i2 ?s) (item-free ?i1))
    :effect (and (nothing ?p) (at ?i1 ?s) (atop ?i1 ?i2) (clear ?i1) (not (clear ?i2)) (not (has ?p ?i1))))

  (:action unstack
    :parameters (?p - player ?i1 - item ?i2 - item ?s - station)
    :precondition (and (nothing ?p) (clear ?i1) (atop ?i1 ?i2) (loc ?p ?s) (at ?i1 ?s) (at ?i2 ?s) (item-free ?i1))
    :effect (and (has ?p ?i1) (clear ?i2) (not (nothing ?p)) (not (clear ?i1)) (not (atop ?i1 ?i2)) (not (at ?i1 ?s))))

  (:action cook
    :parameters (?p - player ?i - item ?s - station)
    :precondition (and (isstove ?s) (iscookable ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (item-free ?i))
    :effect (and (not (item-free ?i)) (cooking-0 ?i)))

  (:action cook-tick
    :parameters (?i - item)
    :precondition (cooking-0 ?i)
    :effect (and (not (cooking-0 ?i)) (cooking-1 ?i)))

  (:action cook-tick-2
    :parameters (?i - item)
    :precondition (cooking-1 ?i)
    :effect (and (not (cooking-1 ?i)) (cooking-2 ?i)))

  (:action cook-tick-3
    :parameters (?i - item)
    :precondition (cooking-2 ?i)
    :effect (and (not (cooking-2 ?i)) (iscooked ?i) (item-free ?i)))

  (:action cut
    :parameters (?p - player ?i - item ?s - station)
    :precondition (and (isboard ?s) (iscuttable ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (item-free ?i))
    :effect (and (not (item-free ?i)) (cutting-1 ?i)))

  (:action cut-continue
    :parameters (?p - player ?i - item ?s - station)
    :precondition (and (isboard ?s) (iscuttable ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (cutting-1 ?i))
    :effect (and (not (cutting-1 ?i)) (cutting-2 ?i)))

  (:action cut-finish
    :parameters (?p - player ?i - item ?s - station)
    :precondition (and (isboard ?s) (iscuttable ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (cutting-2 ?i))
    :effect (and (not (cutting-2 ?i)) (iscut ?i) (item-free ?i)))

  (:action fry
    :parameters (?p - player ?i - item ?s - station)
    :precondition (and (isfryer ?s) (isfryable ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (item-free ?i))
    :effect (and (not (item-free ?i)) (frying-0 ?i)))

  (:action fry_cut_item
    :parameters (?p - player ?i - item ?s - station)
    :precondition (and (isfryer ?s) (isfryableifcut ?i) (iscut ?i) (on ?i ?s) (loc ?p ?s) (clear ?i) (nothing ?p) (item-free ?i))
    :effect (and (not (item-free ?i)) (frying-0 ?i)))

  (:action fry-tick
    :parameters (?i - item)
    :precondition (frying-0 ?i)
    :effect (and (not (frying-0 ?i)) (frying-1 ?i)))

  (:action fry-tick-2
    :parameters (?i - item)
    :precondition (frying-1 ?i)
    :effect (and (not (frying-1 ?i)) (frying-2 ?i)))

  (:action fry-tick-3
    :parameters (?i - item)
    :precondition (frying-2 ?i)
    :effect (and (not (frying-2 ?i)) (isfried ?i) (item-free ?i)))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem robotouille-problem)
  (:domain robotouille)

  (:objects
    table_2 table_1 stove_1 fryer_1 - station
    robot_1 - player
    bottombun_1 topbun_1 potato_1 tomato_1 patty_1 - item
  )

  (:init
    ;; station types
    (istable table_2)
    (istable table_1)
    (isstove stove_1)
    (isfryer fryer_1)

    ;; declare some stations as boards so cut actions can be applied
    (isboard table_1)
    (isboard table_2)

    ;; player
    (isrobot robot_1)
    (loc robot_1 table_2)

    ;; item identities
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (ispotato potato_1)
    (istomato tomato_1)
    (ispatty patty_1)

    ;; capabilities
    (iscuttable potato_1)
    (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)

    ;; positions: stack-level 0 items are at and on their stations
    (at bottombun_1 table_2)
    (on bottombun_1 table_2)

    (at topbun_1 table_1)
    (on topbun_1 table_1)

    (at potato_1 stove_1)
    (on potato_1 stove_1)

    (at tomato_1 fryer_1)
    (on tomato_1 fryer_1)

    ;; held item
    (has robot_1 patty_1)

    ;; clear flags for items that are not supporting others and are not held
    (clear bottombun_1)
    (clear topbun_1)
    (clear potato_1)
    (clear tomato_1)

    ;; item-free for all items
    (item-free bottombun_1)
    (item-free topbun_1)
    (item-free potato_1)
    (item-free tomato_1)
    (item-free patty_1)

    ;; vacant stations (not occupied by the player)
    (vacant table_1)
    (vacant stove_1)
    (vacant fryer_1)

    ;; no (empty ...) facts because all stations have a level-0 item
  )

  (:goal (and
    (on bottombun_1 table_1)
    (iscooked patty_1)
    (at patty_1 table_1)
    (iscut tomato_1)
    (at tomato_1 table_1)
    (at topbun_1 table_1)
    (clear topbun_1)
    (iscut potato_1)
    (isfried potato_1)
    (on potato_1 table_2)
  ))
)
