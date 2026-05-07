(define (problem robotouille-task)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 stove_1 stove_2 stove_3 stove_4 - station
    lettuce_1 chicken_1 chicken_2 bottombun_1 bread_1 bread_2 cheese_1 - item
    robot_1 - player
  )
  (:init
    (loc robot_1 table_3)
    (nothing robot_1)
    (on bottombun_1 table_3) (at bottombun_1 table_3) (clear bottombun_1)
    (on lettuce_1 table_1) (at lettuce_1 table_1) (clear lettuce_1) (iscuttable lettuce_1)
    (on chicken_2 stove_4) (at chicken_2 stove_4) (clear chicken_2) (iscookable chicken_2)
    (on bread_1 table_2) (at bread_1 table_2) (clear bread_1)
    (on bread_2 table_3) (at bread_2 table_3) (atop bread_2 bottombun_1) (clear bread_2)
    (on chicken_1 stove_1) (at chicken_1 stove_1) (clear chicken_1) (iscookable chicken_1)
    (on cheese_1 stove_3) (at cheese_1 stove_3) (clear cheese_1)
    (istable table_1) (istable table_2) (istable table_3)
    (isstove stove_1) (isstove stove_2) (isstove stove_3) (isstove stove_4)
    (empty stove_2)
    (vacant table_1) (vacant table_2) (vacant stove_1) (vacant stove_2) (vacant stove_3) (vacant stove_4)
    (item-free lettuce_1) (item-free chicken_1) (item-free chicken_2) (item-free bottombun_1) (item-free bread_1) (item-free bread_2) (item-free cheese_1)
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