(define (problem robotouille-prob)
  (:domain robotouille)
  (:objects
    table_2 table_1 stove_1 - station
    robot_1 - player
    bread_1 bread_2 chicken_1 cheese_1 - item
  )

  (:init (loc robot_1 table_2) (istable table_2) (istable table_1) (isstove stove_1) (vacant stove_1) (vacant table_1) (on bread_1 table_1) (at bread_1 table_1) (on bread_2 table_2) (at bread_2 table_2) (on chicken_1 stove_1) (at chicken_1 stove_1) (has robot_1 cheese_1) (iscookable chicken_1) (clear bread_1) (clear bread_2) (clear chicken_1) (clear cheese_1) (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free cheese_1))

  (:goal (and
    (on bread_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at cheese_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
