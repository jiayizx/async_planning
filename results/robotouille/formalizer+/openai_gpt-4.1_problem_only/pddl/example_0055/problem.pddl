(define (problem potato-soup-bowl)
  (:domain robotouille)
  (:objects
    sink_1 sink_2 table_1 table_2 table_3 stove_1 board_1 - station
    potato_1 - item
    robot_1 - player
  )
  (:init
    (issink sink_1) (issink sink_2)
    (istable table_1) (istable table_2) (istable table_3)
    (isstove stove_1)
    (isboard board_1)
    (ispotato potato_1)
    (isrobot robot_1)
    (loc robot_1 sink_2)
    (nothing robot_1)
    (iscuttable potato_1)
    (on potato_1 sink_2)
    (at potato_1 sink_2)
    (clear potato_1)
    (empty sink_1) (empty table_2) (empty table_3) (empty stove_1)
    (vacant sink_1) (vacant table_1) (vacant table_2) (vacant table_3) (vacant stove_1) (vacant board_1)
    (item-free potato_1)
  )
  (:goal (and)
  )
)
