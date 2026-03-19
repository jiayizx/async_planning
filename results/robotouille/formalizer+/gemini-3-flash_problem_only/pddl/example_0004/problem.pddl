(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 table_6 table_7 table_8 stove_1 board_1 sink_1 - station
    patty_1 cheese_1 bread_1 bread_2 chicken_1 - item
    robot_1 - player
  )
  (:init
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5) (istable table_6) (istable table_7) (istable table_8)
    (isstove stove_1) (isboard board_1) (issink sink_1)
    (ispatty patty_1) (ischeese cheese_1) (isbread bread_1) (isbread bread_2) (ischicken chicken_1)
    (isrobot robot_1)
    (loc robot_1 table_3)
    (nothing robot_1)
    (iscookable patty_1) (iscookable chicken_1)
    (on patty_1 table_1) (at patty_1 table_1)
    (on cheese_1 stove_1) (at cheese_1 stove_1)
    (on bread_2 table_7) (at bread_2 table_7)
    (on bread_1 table_3) (at bread_1 table_3)
    (on chicken_1 table_4) (at chicken_1 table_4)
    (clear patty_1) (clear cheese_1) (clear bread_2) (clear bread_1) (clear chicken_1)
    (empty board_1) (empty sink_1) (empty table_6) (empty table_2) (empty table_5) (empty table_8)
    (vacant table_1) (vacant table_2) (vacant table_4) (vacant table_5) (vacant table_6) (vacant table_7) (vacant table_8) (vacant stove_1) (vacant board_1) (vacant sink_1)
    (item-free patty_1) (item-free cheese_1) (item-free bread_1) (item-free bread_2) (item-free chicken_1)
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