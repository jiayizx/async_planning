(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    board_1 board_3 board_2 board_4 - station
    table_4 table_3 table_2 table_5 table_1 - station
    stove_1 - station
    sink_2 sink_1 - station
    onion_3 onion_1 onion_2 - item
    robot_1 - player
  )

  (:init
    ;; station identity
    (isboard board_1) (isboard board_3) (isboard board_2) (isboard board_4)
    (istable table_4) (istable table_3) (istable table_2) (istable table_5) (istable table_1)
    (isstove stove_1)
    (issink sink_2) (issink sink_1)

    ;; player identity and location
    (isrobot robot_1)
    (loc robot_1 board_1)

    ;; item identity
    (isonion onion_3) (isonion onion_1) (isonion onion_2)

    ;; item capabilities
    (iscuttable onion_3) (iscuttable onion_1) (iscuttable onion_2)

    ;; item positions (stack-level 0 -> on + at)
    (on onion_3 board_3) (at onion_3 board_3)
    (on onion_1 board_1) (at onion_1 board_1)
    (on onion_2 board_2) (at onion_2 board_2)

    ;; items are free (not being processed)
    (item-free onion_3) (item-free onion_1) (item-free onion_2)

    ;; clear items (no item atop them)
    (clear onion_3) (clear onion_1) (clear onion_2)

    ;; empty stations (no item with stack-level 0 at these stations)
    (empty table_4) (empty sink_2) (empty table_3) (empty table_2) (empty table_5) (empty board_4) (empty sink_1) (empty table_1) (empty stove_1)

    ;; vacant stations (not occupied by player)
    (vacant board_3) (vacant board_2) (vacant board_4)
    (vacant table_4) (vacant table_3) (vacant table_2) (vacant table_5) (vacant table_1)
    (vacant stove_1)
    (vacant sink_2) (vacant sink_1)

    ;; player hand state
    (nothing robot_1)
  )

  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
  ))
)
