;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;      Robotouille - Original Domain  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
        :precondition (and
            (nothing ?p) (on ?i ?s) (loc ?p ?s) (clear ?i) (item-free ?i)
        )
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Problem: onion-soup
;; Notes on fixes from prior attempts:
;; - Use only predicates and types defined in the original domain.
;; - Declare identity predicates that exist in domain for every object.
;; - Do not invent new predicates. The original JSON goals that used in/isboiling/addedto/container_at cannot be represented without extending the domain; here we keep only goals expressible in the original domain (iscut of the three onions).
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (problem onion-soup)
  (:domain robotouille)
  (:objects
    sink_1 board_3 table_3 stove_2 table_5 table_6 table_4 board_1 board_2 sink_2 stove_1 table_2 table_1 - station
    cheese_1 onion_3 cheese_2 bread_1 tomato_1 onion_1 onion_2 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (issink sink_1) (isboard board_3) (istable table_3) (isstove stove_2)
    (istable table_5) (istable table_6) (istable table_4) (isboard board_1)
    (isboard board_2) (issink sink_2) (isstove stove_1) (istable table_2) (istable table_1)

    ; Item identity (use the domain's item-type predicates)
    (ischeese cheese_1) (isonion onion_3) (ischeese cheese_2) (isbread bread_1)
    (istomato tomato_1) (isonion onion_1) (isonion onion_2)

    ; Player identity and location
    (isrobot robot_1)
    (loc robot_1 sink_1)

    ; Held items
    (has robot_1 cheese_1)

    ; Capability flags from JSON
    (iscuttable onion_3) (iscuttable tomato_1) (iscuttable onion_1) (iscuttable onion_2)

    ; Spatial predicates for items (held items use has; others use on/at)
    (on onion_3 board_3) (at onion_3 board_3)
    (on cheese_2 sink_2) (at cheese_2 sink_2)
    (on bread_1 table_2) (at bread_1 table_2)
    (on tomato_1 board_1) (at tomato_1 board_1)
    (on onion_1 sink_1) (at onion_1 sink_1)
    (on onion_2 table_3) (at onion_2 table_3)

    ; Clear: topmost items not held and not underneath another
    (clear onion_3) (clear cheese_2) (clear bread_1) (clear tomato_1) (clear onion_1) (clear onion_2)

    ; Empty stations: those with no stack-level-0 item at their (x,y)
    (empty stove_2) (empty table_5) (empty table_6) (empty table_4) (empty board_2) (empty stove_1) (empty table_1)

    ; Vacant stations: every station except sink_1 where the robot stands
    (vacant board_3) (vacant table_3) (vacant stove_2) (vacant table_5) (vacant table_6) (vacant table_4)
    (vacant board_1) (vacant board_2) (vacant sink_2) (vacant stove_1) (vacant table_2) (vacant table_1)

    ; Player hand state: robot_1 holds cheese_1 -> do NOT include (nothing robot_1)

    ; item-free: all items start free
    (item-free cheese_1) (item-free onion_3) (item-free cheese_2) (item-free bread_1)
    (item-free tomato_1) (item-free onion_1) (item-free onion_2)
  )

  (:goal (and
    ; Goals expressible in the original domain
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
  ))
)
