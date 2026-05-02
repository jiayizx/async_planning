(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    fryer_1 - station
    table_1 - station
    table_2 - station
    table_3 - station
    stove_1 - station
    board_1 - station
    sink_1 - station
    potato_1 - item
    robot_1 - player
  )
  (:init
    (isfryer fryer_1)
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)
    (ispotato potato_1)
    (iscuttable potato_1)
    (isrobot robot_1)
    (loc robot_1 fryer_1)
    (on potato_1 fryer_1)
    (at potato_1 fryer_1)
    (clear potato_1)
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant stove_1)
    (vacant board_1)
    (vacant sink_1)
    (nothing robot_1)
    (item-free potato_1)
    (empty table_2)
    (empty board_1)
    (empty sink_1)
    (empty table_3)
  )
  (:goal (and))
)
