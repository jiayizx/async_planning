(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 sink_1 stove_2 table_5 table_3 stove_1 table_4 - station
    bread_3 bread_1 bread_2 chicken_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    (istable table_1) (istable table_2) (istable table_5) (istable table_3) (istable table_4)
    (isstove stove_2) (isstove stove_1)
    (issink sink_1)

    (isbread bread_3) (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1) (ischeese cheese_1)

    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)

    (iscookable chicken_1)

    (on bread_3 table_5) (at bread_3 table_5)
    (on bread_1 table_1) (at bread_1 table_1)
    (on bread_2 table_2) (at bread_2 table_2)
    (on chicken_1 sink_1) (at chicken_1 sink_1)
    (on cheese_1 table_3) (at cheese_1 table_3)

    (clear bread_3) (clear bread_1) (clear bread_2) (clear chicken_1) (clear cheese_1)

    (empty stove_2) (empty stove_1) (empty table_4)

    (vacant table_2) (vacant sink_1) (vacant stove_2) (vacant table_5) (vacant table_3) (vacant stove_1) (vacant table_4)

    (item-free bread_3) (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free cheese_1)
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
