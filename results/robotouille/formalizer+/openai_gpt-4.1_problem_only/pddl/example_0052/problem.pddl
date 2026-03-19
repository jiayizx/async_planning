(define (problem potato-soup-bowl)
  (:domain robotouille)
  (:objects
    fryer_1 fryer_2 stove_1 stove_2 table_1 table_2 table_3 board_1 sink_1 - station
    potato_1 - item
    robot_1 - player
  )
  (:init
    (isfryer fryer_1) (isfryer fryer_2)
    (isstove stove_1) (isstove stove_2)
    (istable table_1) (istable table_2) (istable table_3)
    (isboard board_1)
    (issink sink_1)
    (ispotato potato_1)
    (isrobot robot_1)
    (loc robot_1 fryer_2)
    (nothing robot_1)
    (iscuttable potato_1)
    (on potato_1 fryer_2)
    (at potato_1 fryer_2)
    (clear potato_1)
    (empty stove_1) (empty stove_2) (empty table_1) (empty table_2) (empty table_3) (empty board_1)
    (vacant fryer_1) (vacant stove_1) (vacant stove_2) (vacant table_1) (vacant table_2) (vacant table_3) (vacant board_1) (vacant sink_1)
    (item-free potato_1)
  )
  (:goal (and))
)
