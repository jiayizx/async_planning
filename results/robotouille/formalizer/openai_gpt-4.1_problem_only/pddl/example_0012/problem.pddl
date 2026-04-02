(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    fryer_1 - station
    table_3 - station
    board_1 - station
    stove_1 - station
    table_1 - station
    table_2 - station
    chicken_1 - item
    bread_2 - item
    bread_1 - item
    lettuce_1 - item
    robot_1 - player
  )
  (:init
    (isfryer fryer_1)
    (istable table_3)
    (isboard board_1)
    (isstove stove_1)
    (istable table_1)
    (istable table_2)
    (ischicken chicken_1)
    (isbread bread_2)
    (isbread bread_1)
    (islettuce lettuce_1)
    (isrobot robot_1)
    (iscookable chicken_1)
    (iscuttable lettuce_1)
    (loc robot_1 fryer_1)
    (on chicken_1 board_1)
    (at chicken_1 board_1)
    (on bread_2 table_3)
    (at bread_2 table_3)
    (on bread_1 fryer_1)
    (at bread_1 fryer_1)
    (on lettuce_1 stove_1)
    (at lettuce_1 stove_1)
    (clear chicken_1)
    (clear bread_2)
    (clear bread_1)
    (clear lettuce_1)
    (empty table_1)
    (empty table_2)
    (vacant table_3)
    (vacant board_1)
    (vacant stove_1)
    (vacant table_1)
    (vacant table_2)
    (nothing robot_1)
    (item-free chicken_1)
    (item-free bread_2)
    (item-free bread_1)
    (item-free lettuce_1)
  )
  (:goal (and
    (on bread_1 table_1)
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
