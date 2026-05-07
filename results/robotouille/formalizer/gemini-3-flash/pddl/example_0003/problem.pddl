(define (problem robotouille_prob)
  (:domain robotouille)
  (:objects
    board_1 table_3 stove_1 table_1 table_2 - station
    bread_1 bread_2 chicken_1 cheese_1 - item
    robot_1 - player
  )
  (:init (loc robot_1 board_1) (has robot_1 cheese_1) (vacant table_3) (vacant stove_1) (vacant table_1) (vacant table_2) (isboard board_1) (istable table_3) (isstove stove_1) (istable table_1) (istable table_2) (on bread_1 board_1) (at bread_1 board_1) (clear bread_1) (on bread_2 table_3) (at bread_2 table_3) (clear bread_2) (on chicken_1 stove_1) (at chicken_1 stove_1) (clear chicken_1) (iscookable chicken_1) (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free cheese_1) (empty table_1) (empty table_2))
  (:goal (and
    (on bread_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at cheese_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)