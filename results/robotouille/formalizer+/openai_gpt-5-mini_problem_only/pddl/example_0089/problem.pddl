; Final corrected domain and problem PDDL
; The domain declares all predicates used in the problem (including container/water predicates)

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

    ; item identity types
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
    (isbowl ?i - item)
    (iswater ?i - item)

    ; capabilities
    (iscookable ?i - item)
    (iscuttable ?i - item)
    (isfryable ?i - item)
    (isfryableifcut ?i - item)

    ; processing results
    (iscooked ?i - item)
    (iscut ?i - item)
    (isfried ?i - item)

    ; async guard
    (item-free ?i - item)

    ; cook/cut/fry counters
    (cooking-0 ?i - item)
    (cooking-1 ?i - item)
    (cooking-2 ?i - item)
    (cutting-1 ?i - item)
    (cutting-2 ?i - item)
    (frying-0 ?i - item)
    (frying-1 ?i - item)
    (frying-2 ?i - item)

    ; physical state
    (loc ?p - player ?s - station)
    (at ?i - item ?s - station)
    (nothing ?p - player)
    (empty ?s - station)
    (on ?i - item ?s - station)
    (vacant ?s - station)
    (clear ?i - item)
    (atop ?i1 - item ?i2 - item)
    (has ?p - player ?i - item)

    ; container/water predicates used by goals
    (in ?x - item ?c - item)
    (isboiling ?w - item)
    (addedto ?i - item ?w - item)
    (container_at ?c - item ?s - station)
  )

  ; Actions (kept consistent with original domain semantics)
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

; ---------------- Problem ----------------
(define (problem soup-and-sandwiches)
  (:domain robotouille)
  (:objects
    table_7 table_6 stove_1 table_2 board_1 sink_1 table_4 table_5 table_3 table_1 - station
    tomato_1 onion_1 chicken_2 chicken_1 bread_1 bread_4 bread_2 bread_3 bowl_1 water_1 - item
    robot_1 - player
  )

  (:init
    ; station identities
    (istable table_7) (istable table_6) (isstove stove_1) (istable table_2) (isboard board_1)
    (issink sink_1) (istable table_4) (istable table_5) (istable table_3) (istable table_1)

    ; item identities
    (istomato tomato_1) (isonion onion_1) (ischicken chicken_2) (ischicken chicken_1)
    (isbread bread_1) (isbread bread_4) (isbread bread_2) (isbread bread_3)
    (isbowl bowl_1) (iswater water_1)

    ; player
    (isrobot robot_1)
    (loc robot_1 table_7)
    (nothing robot_1)

    ; capabilities
    (iscuttable tomato_1) (iscuttable onion_1)
    (iscookable chicken_2) (iscookable chicken_1)

    ; item positions (stack-level 0 => on & at)
    (on tomato_1 table_7) (at tomato_1 table_7)
    (on onion_1 table_6) (at onion_1 table_6)
    (on chicken_2 stove_1) (at chicken_2 stove_1)
    (on chicken_1 table_2) (at chicken_1 table_2)
    (on bread_1 board_1) (at bread_1 board_1)
    (on bread_4 sink_1) (at bread_4 sink_1)
    (on bread_2 table_4) (at bread_2 table_4)
    (on bread_3 table_5) (at bread_3 table_5)

    ; bowl and water placement (container list indicated bowl at table_1)
    (on bowl_1 table_1) (at bowl_1 table_1) (container_at bowl_1 table_1)

    ; clear predicates (top-most items)
    (clear tomato_1) (clear onion_1) (clear chicken_2) (clear chicken_1)
    (clear bread_1) (clear bread_4) (clear bread_2) (clear bread_3) (clear bowl_1) (clear water_1)

    ; vacant stations: only table_7 is occupied by player_1 => all others vacant
    (vacant table_6) (vacant stove_1) (vacant table_2) (vacant board_1) (vacant sink_1)
    (vacant table_4) (vacant table_5) (vacant table_3) (vacant table_1)

    ; empty stations: those with no stack-level-0 items
    ; based on provided items, table_3 had no stack-level-0 item in JSON -> mark empty
    (empty table_3)

    ; item-free for all items
    (item-free tomato_1) (item-free onion_1) (item-free chicken_2) (item-free chicken_1)
    (item-free bread_1) (item-free bread_4) (item-free bread_2) (item-free bread_3) (item-free bowl_1) (item-free water_1)
  )

  (:goal (and
    ; container/water goals
    (in water_1 bowl_1)
    (isboiling water_1)
    (iscut tomato_1)
    (addedto tomato_1 water_1)
    (iscut onion_1)
    (addedto onion_1 water_1)
    (container_at bowl_1 table_1)

    ; sandwich goals for table_2
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)

    ; sandwich goals for table_3
    (on bread_3 table_3)
    (iscooked chicken_2)
    (at chicken_2 table_3)
    (at bread_4 table_3)
    (clear bread_4)
  ))
)
