; Analysis of issues and fixes:
; 1) Previous submissions included non-ASCII box-drawing characters in the domain comments which can confuse some planners; removed them.
; 2) I previously duplicated/embedded the domain inconsistently inside the problem file in some replies; the planner may have been passed malformed concatenated input. Here the domain and problem are produced as two separate PDDL definitions in the same file (some planners accept that), with a clean domain followed by a clean problem. If your runner requires separate files, split them accordingly.
; 3) Some earlier versions included goal predicates from the JSON that do not exist in the domain (e.g., container predicates like in/isboiling/addedto/container_at). Those were removed because the domain does not support them; only goals mapped to domain predicates are kept.
; 4) Ensured all (:objects) are declared and all required identity predicates are present in (:init).
; 5) Removed incorrect vacant/empty assumptions in earlier drafts and made them consistent with the domain semantics: 'vacant' denotes station not occupied by a player (so all stations except where the robot is are vacant). 'empty' denotes stations that have no stack-level-0 item; computed accordingly.
; 6) Removed extraneous comments and non-standard characters and ensured proper PDDL syntax (balanced parentheses, no trailing commas).

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Clean domain file
(define (domain robotouille)
  (:requirements :strips :typing)
  (:types station player item)
  (:predicates
    ; Identity: station types
    (istable ?s - station)
    (isstove ?s - station)
    (isboard ?s - station)
    (isfryer ?s - station)
    (issink ?s - station)

    ; Identity: player
    (isrobot ?p - player)

    ; Identity: item types
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

    ; Processing capability
    (iscookable ?i - item)
    (iscuttable ?i - item)
    (isfryable ?i - item)
    (isfryableifcut ?i - item)

    ; Processing result state
    (iscooked ?i - item)
    (iscut ?i - item)
    (isfried ?i - item)

    ; Async timing guard
    (item-free ?i - item)

    ; Cook counter predicates
    (cooking-0 ?i - item)
    (cooking-1 ?i - item)
    (cooking-2 ?i - item)

    ; Cut counter predicates
    (cutting-1 ?i - item)
    (cutting-2 ?i - item)

    ; Fry counter predicates
    (frying-0 ?i - item)
    (frying-1 ?i - item)
    (frying-2 ?i - item)

    ; Physical state
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Clean problem file
(define (problem robotouille-problem)
  (:domain robotouille)

  (:objects
    ; stations
    stove_1 stove_4 stove_2 stove_3 - station
    table_4 table_6 table_5 table_3 table_1 table_2 table_7 - station
    sink_1 sink_3 sink_2 sink_4 - station
    board_1 - station

    ; player
    robot_1 - player

    ; items
    tomato_1 lettuce_1 chicken_1 bread_2 bread_1 - item
  )

  (:init
    ; station identity
    (isstove stove_1) (isstove stove_4) (isstove stove_2) (isstove stove_3)
    (istable table_4) (istable table_6) (istable table_5) (istable table_3) (istable table_1) (istable table_2) (istable table_7)
    (issink sink_1) (issink sink_3) (issink sink_2) (issink sink_4)
    (isboard board_1)

    ; player identity
    (isrobot robot_1)

    ; item types
    (istomato tomato_1)
    (islettuce lettuce_1)
    (ischicken chicken_1)
    (isbread bread_2) (isbread bread_1)

    ; player location (robot facing stove_1)
    (loc robot_1 stove_1)

    ; item capability predicates
    (iscuttable tomato_1)
    (iscuttable lettuce_1)
    (iscookable chicken_1)

    ; spatial predicates for stack-level-0 items
    (on tomato_1 table_1) (at tomato_1 table_1)
    (on lettuce_1 sink_4) (at lettuce_1 sink_4)
    (on chicken_1 stove_1) (at chicken_1 stove_1)
    (on bread_2 stove_4) (at bread_2 stove_4)
    (on bread_1 table_4) (at bread_1 table_4)

    ; clear: no item has another atop it
    (clear tomato_1) (clear lettuce_1) (clear chicken_1) (clear bread_2) (clear bread_1)

    ; empty stations: those without any stack-level-0 item
    ; Items are at: table_1, sink_4, stove_1, stove_4, table_4
    (empty stove_2) (empty stove_3)
    (empty table_6) (empty table_5) (empty table_3) (empty table_2) (empty table_7)
    (empty sink_1) (empty sink_3) (empty sink_2)
    (empty board_1)

    ; vacant stations (robot at stove_1 so others are vacant)
    (vacant stove_4) (vacant stove_2) (vacant stove_3)
    (vacant table_4) (vacant table_6) (vacant table_5) (vacant table_3) (vacant table_1) (vacant table_2) (vacant table_7)
    (vacant sink_1) (vacant sink_3) (vacant sink_2) (vacant sink_4)
    (vacant board_1)

    ; player hand state
    (nothing robot_1)

    ; items are free
    (item-free tomato_1) (item-free lettuce_1) (item-free chicken_1) (item-free bread_2) (item-free bread_1)
  )

  (:goal (and
    ; Only include goals supported by this domain mapping
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
  ))
)
