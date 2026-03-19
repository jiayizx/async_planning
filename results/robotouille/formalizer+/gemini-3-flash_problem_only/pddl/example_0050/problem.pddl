(define (problem potato-soup-task)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 board_1 board_2 board_3 stove_1 stove_2 sink_1 sink_2 sink_3 - station
    potato_1 - item
    robot_1 - player
  )
  (:init
    (istable table_1) (istable table_2) (istable table_3)
    (isboard board_1) (isboard board_2) (isboard board_3)
    (isstove stove_1) (isstove stove_2)
    (issink sink_1) (issink sink_2) (issink sink_3)
    (ispotato potato_1)
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)
    (iscuttable potato_1)
    (on potato_1 table_1)
    (at potato_1 table_1)
    (clear potato_1)
    (empty table_2) (empty table_3) (empty board_1) (empty board_2) (empty board_3) (empty stove_1) (empty stove_2) (empty sink_1) (empty sink_2) (empty sink_3)
    (vacant table_2) (vacant table_3) (vacant board_1) (vacant board_2) (vacant board_3) (vacant stove_1) (vacant stove_2) (vacant sink_1) (vacant sink_2) (vacant sink_3)
    (item-free potato_1)
  )
  (:goal (and
    (iscut potato_1)
    (at potato_1 table_1)
  ))
)