(define (problem potato-soup)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 stove_1 board_1 sink_1 - station
    potato_1 - item
    robot_1 - player
  )
  (:init
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    (isstove stove_1) (isboard board_1) (issink sink_1)
    (ispotato potato_1)
    (isrobot robot_1)
    (loc robot_1 table_4)
    (nothing robot_1)
    (iscuttable potato_1)
    (on potato_1 table_4)
    (at potato_1 table_4)
    (clear potato_1)
    (empty table_1) (empty table_2) (empty table_3) (empty stove_1) (empty board_1) (empty sink_1)
    (vacant table_1) (vacant table_2) (vacant table_3) (vacant stove_1) (vacant board_1) (vacant sink_1)
    (item-free potato_1)
  )
  (:goal (and
    (iscut potato_1)
    (at potato_1 table_1)
  ))
)