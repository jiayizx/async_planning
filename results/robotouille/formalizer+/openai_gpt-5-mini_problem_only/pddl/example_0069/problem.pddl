(define (problem onion-soup)
  (:domain robotouille)
  (:objects
    table_6 table_5 stove_1 table_1 board_1 sink_1 table_3 table_4 table_2 - station
    onion_3 onion_2 onion_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_6) (istable table_5) (isstove stove_1) (istable table_1)
    (isboard board_1) (issink sink_1) (istable table_3) (istable table_4) (istable table_2)
    ; Item identity
    (isonion onion_3) (isonion onion_2) (isonion onion_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_6)
    (nothing robot_1)
    ; Capability flags
    (iscuttable onion_3) (iscuttable onion_2) (iscuttable onion_1)
    ; Item locations (stack-level 0 -> on + at)
    (on onion_3 table_6) (at onion_3 table_6)
    (on onion_2 table_5) (at onion_2 table_5)
    (on onion_1 stove_1) (at onion_1 stove_1)
    ; Clear: topmost items
    (clear onion_3) (clear onion_2) (clear onion_1)
    ; Empty stations (no stack-level-0 item at these stations)
    (empty table_1) (empty board_1) (empty sink_1) (empty table_3) (empty table_4) (empty table_2)
    ; Vacant stations (no player stands there)
    (vacant table_5) (vacant stove_1) (vacant table_1) (vacant board_1) (vacant sink_1) (vacant table_3) (vacant table_4) (vacant table_2)
    ; item-free: all items start free
    (item-free onion_3) (item-free onion_2) (item-free onion_1)
  )
  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
  ))
)