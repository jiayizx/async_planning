(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_4 table_3 table_1 table_2 - station
    stove_1 - station
    board_1 - station
    sink_1 - station
    robot_1 - player
    potato_1 - item
  )
  (:init
    (istable table_4)
    (istable table_3)
    (istable table_1)
    (istable table_2)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)
    (isrobot robot_1)
    (ispotato potato_1)
    (iscuttable potato_1)
    (loc robot_1 table_4)
    (on potato_1 table_4)
    (at potato_1 table_4)
    (clear potato_1)
    (empty table_1)
    (empty board_1)
    (empty sink_1)
    (empty table_2)
    (vacant table_3)
    (vacant stove_1)
    (vacant table_1)
    (vacant board_1)
    (vacant sink_1)
    (vacant table_2)
    (nothing robot_1)
    (item-free potato_1)
  )
  (:goal (and))
)
