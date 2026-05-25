(define (problem robotouille-problem)
  (:domain robotouille)

  (:objects
    table_1 board_1 fryer_1 table_2 table_3 table_4 - station
    robot_1 - player
    bread_1 bread_2 chicken_1 lettuce_1 tomato_1 - item
  )

  (:init (istable table_1) (isboard board_1) (isfryer fryer_1) (istable table_2) (istable table_3) (istable table_4) (loc robot_1 table_1) (nothing robot_1) (on bread_1 table_1) (at bread_1 table_1) (at bread_2 table_1) (atop bread_2 bread_1) (at chicken_1 table_2) (at lettuce_1 table_3) (at tomato_1 table_4) (clear bread_2) (clear chicken_1) (clear lettuce_1) (clear tomato_1) (empty board_1) (empty fryer_1) (vacant board_1) (vacant fryer_1) (vacant table_2) (vacant table_3) (vacant table_4) (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free lettuce_1) (item-free tomato_1) (isfryable chicken_1) (iscuttable lettuce_1) (iscuttable tomato_1))

  (:goal (and
    (on bread_1 table_1)
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    (iscut tomato_1)
    (at tomato_1 table_1)
    (isfried chicken_1)
    (at chicken_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
