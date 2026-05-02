(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_5 table_2 table_4 table_1 table_3 - station
    stove_1 stove_2 - station
    board_1 - station
    sink_1 - station

    onion_1 onion_2 onion_3 - item

    robot_1 - player
  )

  (:init
    ; station identity
    (istable table_5) (istable table_2) (istable table_4) (istable table_1) (istable table_3)
    (isstove stove_1) (isstove stove_2)
    (isboard board_1)
    (issink sink_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_5)

    ; item identity
    (isonion onion_1) (isonion onion_2) (isonion onion_3)

    ; item capabilities
    (iscuttable onion_1) (iscuttable onion_2) (iscuttable onion_3)

    ; item positions (stack-level 0 -> at + on)
    (at onion_1 board_1) (on onion_1 board_1)
    (at onion_2 table_5) (on onion_2 table_5)
    (at onion_3 stove_1) (on onion_3 stove_1)

    ; clear predicates (no item has another atop it)
    (clear onion_1) (clear onion_2) (clear onion_3)

    ; empty stations: those with no stack-level-0 item
    (empty stove_2) (empty table_2) (empty table_4) (empty sink_1) (empty table_1) (empty table_3)

    ; vacant stations (not occupied by a player). robot_1 at table_5, so all others vacant
    (vacant stove_1) (vacant stove_2) (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant sink_1) (vacant board_1)

    ; player hand state
    (nothing robot_1)

    ; item-free for all items
    (item-free onion_1) (item-free onion_2) (item-free onion_3)
  )

  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
  ))
)
