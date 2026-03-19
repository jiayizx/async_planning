; Analysis of the error and issues
; 1) The OPTIC error (failed to open /dev/loop8 ...) is a container/runtime error from Apptainer/Singularity (host lacks loop devices or container cannot be attached).
;    This is NOT caused by PDDL syntax or semantics and cannot be fixed by changing PDDL. It must be addressed in the execution environment (enable loop devices, run on suitable host,
;    or run the planner without containerization). Keep this in mind: if you see identical error again, it's an environment issue.
;
; 2) Separate PDDL-level issues from prior iterations that I must correct here:
;    - I previously added new predicates to the domain to accommodate unsupported goal predicates (in, isboiling, addedto, container_at). That was wrong: you provided a fixed domain
;      file and the problem must be compatible with it. The domain must be left exactly as given. I will restore the original domain unchanged.
;    - The JSON goals included predicates that are not part of the original domain (the soup/container goals). Those cannot be represented in this domain. According to your rules,
;      only the goal predicates that map to domain predicates should appear in the problem. Thus the problem goal must include only domain-supported predicates (mapped from the JSON pddl_args):
;         item_on -> (on item station)
;         item_at -> (at item station)
;         iscut -> (iscut item)
;         iscookable/iscooked -> (iscooked item)
;         clear -> (clear item)
;      I will therefore omit the soup-specific goals (in, isboiling, addedto, container_at) because the domain does not define them.
;    - Ensure :objects declares all stations, players and items using their pddl_name and types. Ensure :init contains identity predicates for each object type present, loc for the player,
;      item capabilities (iscookable/iscuttable) from items' predicates, on/at for items with stack-level 0, clear for topmost items, empty for stations without stack-level-0 items,
;      vacant for all stations not occupied by the player, nothing for empty-handed player, and item-free for all items. I will follow the STEP-BY-STEP rules precisely.
;
; Fixes delivered below:
; - The domain is restored exactly to the original domain you provided (no additions or deletions).
; - The problem PDDL declares all objects and sets initial predicates strictly following the rules and the JSON input.
; - The goal contains only predicates that exist in the domain (mapped from JSON pddl_args). Soup goals are omitted because they are not supported by the domain.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Original domain (unchanged)      ;;
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Corrected problem PDDL           ;;
;; - Uses only predicates/types from the original domain
;; - Declares all objects and initial predicates per the rules
;; - Goal contains only domain-supported predicates mapped from JSON pddl_args
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (problem tomato-soup-lettuce-chicken)
  (:domain robotouille)
  (:objects
    stove_1 stove_4 stove_2 stove_3 - station
    table_4 table_6 table_5 table_3 table_1 table_2 table_7 - station
    sink_1 sink_3 sink_2 sink_4 - station
    board_1 - station

    tomato_1 lettuce_1 chicken_1 bread_2 bread_1 - item

    robot_1 - player
  )
  (:init
    ; Station identity
    (isstove stove_1) (isstove stove_4) (isstove stove_2) (isstove stove_3)
    (istable table_4) (istable table_6) (istable table_5) (istable table_3) (istable table_1) (istable table_2) (istable table_7)
    (issink sink_1) (issink sink_3) (issink sink_2) (issink sink_4)
    (isboard board_1)

    ; Item identity
    (istomato tomato_1) (islettuce lettuce_1) (ischicken chicken_1) (isbread bread_2) (isbread bread_1)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 stove_1)
    (nothing robot_1)

    ; Capability flags (from JSON item predicates)
    (iscuttable tomato_1) (iscuttable lettuce_1)
    (iscookable chicken_1)

    ; Item locations (stack-level 0 -> on + at)
    (on tomato_1 table_1) (at tomato_1 table_1)
    (on lettuce_1 sink_4) (at lettuce_1 sink_4)
    (on chicken_1 stove_1) (at chicken_1 stove_1)
    (on bread_2 stove_4) (at bread_2 stove_4)
    (on bread_1 table_4) (at bread_1 table_4)

    ; Clear: topmost item at each occupied station
    (clear tomato_1) (clear lettuce_1) (clear chicken_1) (clear bread_2) (clear bread_1)

    ; Empty: stations with no stack-level-0 items (based on JSON items list)
    ; Non-empty: stove_1, stove_4, table_4, table_1, sink_4
    (empty stove_2) (empty stove_3)
    (empty table_6) (empty table_5) (empty table_3) (empty table_2) (empty table_7)
    (empty sink_1) (empty sink_3) (empty sink_2)
    (empty board_1)

    ; Vacant: every station not occupied by the player (robot at stove_1)
    (vacant stove_4) (vacant stove_2) (vacant stove_3)
    (vacant table_4) (vacant table_6) (vacant table_5) (vacant table_3) (vacant table_1) (vacant table_2) (vacant table_7)
    (vacant sink_1) (vacant sink_3) (vacant sink_2) (vacant sink_4)
    (vacant board_1)

    ; item-free: all items start free
    (item-free tomato_1) (item-free lettuce_1) (item-free chicken_1) (item-free bread_2) (item-free bread_1)
  )

  (:goal (and
    ; Only include goals that can be represented in this domain (from JSON pddl_args)
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
  ))
)
