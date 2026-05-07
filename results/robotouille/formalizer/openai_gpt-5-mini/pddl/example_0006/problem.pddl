(define (problem robotouille-problem)
  (:domain robotouille)

  (:objects
    table_1 table_2 table_3 table_4 table_5 stove_1 stove_2 sink_1 - station
    robot_1 - player
    bread_1 bread_2 bread_3 chicken_1 cheese_1 - item
  )

  (:init (istable table_1) (istable table_2) (issink sink_1) (isstove stove_2) (istable table_5) (istable table_3) (isstove stove_1) (istable table_4) (loc robot_1 table_1) (nothing robot_1) (empty stove_2) (empty stove_1) (empty table_4) (vacant table_2) (vacant sink_1) (vacant stove_2) (vacant table_5) (vacant table_3) (vacant stove_1) (vacant table_4) (on bread_3 table_5) (at bread_3 table_5) (on bread_1 table_1) (at bread_1 table_1) (on bread_2 table_2) (at bread_2 table_2) (on chicken_1 sink_1) (at chicken_1 sink_1) (on cheese_1 table_3) (at cheese_1 table_3) (item-free bread_1) (item-free bread_2) (item-free bread_3) (item-free chicken_1) (item-free cheese_1) (iscookable chicken_1) (clear bread_1) (clear bread_2) (clear bread_3) (clear cheese_1) (clear chicken_1))

  (:goal (and
    (on bread_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at cheese_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
