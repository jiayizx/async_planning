(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    board_1 - station
    table_3 - station
    stove_1 - station
    table_1 - station
    table_2 - station
    bread_1 - item
    bread_2 - item
    chicken_1 - item
    cheese_1 - item
    robot_1 - player
  )
  (:init
    (isboard board_1)
    (istable table_3)
    (isstove stove_1)
    (istable table_1)
    (istable table_2)
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (ischeese cheese_1)
    (isrobot robot_1)
    (iscookable chicken_1)
    (loc robot_1 board_1)
    (on bread_1 board_1)
    (at bread_1 board_1)
    (on bread_2 table_3)
    (at bread_2 table_3)
    (on chicken_1 stove_1)
    (at chicken_1 stove_1)
    (has robot_1 cheese_1)
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    (empty table_1)
    (empty table_2)
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant stove_1)
    (item-free bread_1)
    (item-free bread_2)
    (item-free chicken_1)
    (item-free cheese_1)
  )
  (:goal (and
    (on bread_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at cheese_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
