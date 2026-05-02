(define (problem onion-soup)
  (:domain robotouille)
  (:objects
    table_5 board_1 table_2 fryer_1 sink_1 table_4 stove_1 table_3 sink_2 table_1 - station
    onion_1 onion_2 onion_3 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_5) (isboard board_1) (istable table_2) (isfryer fryer_1) (issink sink_1)
    (istable table_4) (isstove stove_1) (istable table_3) (issink sink_2) (istable table_1)

    ; Item identity
    (isonion onion_1) (isonion onion_2) (isonion onion_3)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_5)
    (nothing robot_1)

    ; Capability flags
    (iscuttable onion_1) (iscuttable onion_2) (iscuttable onion_3)

    ; Item locations (stack-level 0 -> on + at)
    (on onion_1 table_2) (at onion_1 table_2)
    (on onion_2 board_1) (at onion_2 board_1)
    (on onion_3 table_5) (at onion_3 table_5)

    ; Clear: topmost items
    (clear onion_1) (clear onion_2) (clear onion_3)

    ; Empty stations (no item with stack-level 0)
    (empty fryer_1) (empty sink_1) (empty table_4) (empty stove_1) (empty table_3) (empty sink_2) (empty table_1)

    ; Vacant stations (player at table_5, others vacant)
    (vacant board_1) (vacant table_2) (vacant fryer_1) (vacant sink_1) (vacant table_4) (vacant stove_1) (vacant table_3) (vacant sink_2) (vacant table_1)

    ; item-free: all items start free
    (item-free onion_1) (item-free onion_2) (item-free onion_3)
  )
  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
  ))
)
