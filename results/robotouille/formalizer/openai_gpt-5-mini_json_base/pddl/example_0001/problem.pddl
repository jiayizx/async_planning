(define (problem robotouille-prob)
  (:domain robotouille)
  (:objects
    table_1 board_1 stove_1 table_2 table_3 - station
    robot_1 - player
    bread_1 bread_2 chicken_1 lettuce_1 - item
  )

  (:init (istable table_1) (isboard board_1) (isstove stove_1) (istable table_2) (istable table_3) (isrobot robot_1) (loc robot_1 table_1) (nothing robot_1) (empty board_1) (empty stove_1) (vacant board_1) (vacant stove_1) (vacant table_2) (vacant table_3) (on bread_1 table_1) (at bread_1 table_1) (at bread_2 table_1) (atop bread_2 bread_1) (on chicken_1 table_2) (at chicken_1 table_2) (on lettuce_1 table_3) (at lettuce_1 table_3) (clear bread_2) (clear chicken_1) (clear lettuce_1) (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free lettuce_1) (iscookable chicken_1) (iscuttable lettuce_1))

  (:goal (and
    ; bread_1 directly on table_1
    (on bread_1 table_1)
    ; lettuce cut
    (iscut lettuce_1)
    ; lettuce at table_1
    (at lettuce_1 table_1)
    ; chicken cooked
    (iscooked chicken_1)
    ; chicken at table_1
    (at chicken_1 table_1)
    ; bread_2 at table_1
    (at bread_2 table_1)
    ; bread_2 clear
    (clear bread_2)
  ))
)
