(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    ; stations
    stove_1 stove_5 stove_2 stove_3 stove_4 - station
    table_3 table_5 table_4 table_2 table_1 table_6 - station
    sink_1 sink_3 sink_2 sink_4 - station
    board_1 - station

    ; players
    robot_1 - player

    ; items
    onion_3 onion_1 onion_2 bowl_1 water_1 - item
  )

  (:init
    ; station identities
    (istove stove_1) (istove stove_5) (istove stove_2) (istove stove_3) (istove stove_4)
    (istable table_3) (istable table_5) (istable table_4) (istable table_2) (istable table_1) (istable table_6)
    (issink sink_1) (issink sink_3) (issink sink_2) (issink sink_4)
    (isboard board_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 stove_1)

    ; item identities
    (isonion onion_3) (isonion onion_1) (isonion onion_2)
    ; generic identities for bowl and water (no specific predicates available in domain)
    (ispotato bowl_1) (ispotato water_1)

    ; item capabilities
    (iscuttable onion_3) (iscuttable onion_1) (iscuttable onion_2)

    ; physical placement for items (stack-level 0 => on + at)
    (on onion_3 table_5) (at onion_3 table_5)
    (on onion_1 stove_1) (at onion_1 stove_1)
    (on onion_2 sink_4) (at onion_2 sink_4)

    ; items are clear (no atop targets) and item-free
    (clear onion_3) (clear onion_1) (clear onion_2)
    (item-free onion_3) (item-free onion_1) (item-free onion_2)
    (item-free bowl_1) (item-free water_1)

    ; player hand state
    (nothing robot_1)

    ; empty stations: those with no stack-level-0 item on them
    (empty sink_1) (empty table_3) (empty table_4) (empty table_2) (empty table_1) (empty table_6)
    (empty sink_3) (empty sink_2) (empty stove_3) (empty stove_4) (empty stove_5) (empty board_1)
    ; note: stove_1, sink_4, table_5 are occupied by items (non-empty)

    ; vacant stations: all except where the player is located (stove_1)
    (vacant stove_5) (vacant stove_2) (vacant stove_3) (vacant stove_4)
    (vacant table_3) (vacant table_5) (vacant table_4) (vacant table_2) (vacant table_1) (vacant table_6)
    (vacant sink_1) (vacant sink_3) (vacant sink_2) (vacant sink_4) (vacant board_1)
    ; remove vacancy for stove_1 because robot_1 is there
    (not-implemented-placeholder)
  )

  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
  ))
)
