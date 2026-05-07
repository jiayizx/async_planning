(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    fryer_1 board_1 stove_1 table_3 table_2 sink_1 stove_4 stove_2 table_4 stove_3 table_1 - station
    robot_1 - player
    bread_2 patty_1 chicken_1 cheese_1 tomato_1 cheese_2 bread_1 - item
  )

  (:init (isfryer fryer_1) (isboard board_1) (isstove stove_1) (istable table_3) (istable table_2) (issink sink_1) (isstove stove_4) (isstove stove_2) (istable table_4) (isstove stove_3) (istable table_1) (loc robot_1 fryer_1) (has robot_1 tomato_1) (nothing robot_1) (vacant board_1) (vacant stove_1) (vacant table_3) (vacant table_2) (vacant sink_1) (vacant stove_4) (vacant stove_2) (vacant table_4) (vacant stove_3) (vacant table_1) (empty sink_1) (empty stove_4) (empty stove_2) (empty table_4) (empty table_1) (on bread_2 board_1) (at bread_2 board_1) (on patty_1 stove_3) (at patty_1 stove_3) (on chicken_1 stove_1) (at chicken_1 stove_1) (on cheese_1 table_2) (at cheese_1 table_2) (on cheese_2 table_3) (at cheese_2 table_3) (on bread_1 fryer_1) (at bread_1 fryer_1) (has robot_1 tomato_1) (clear bread_2) (clear patty_1) (clear chicken_1) (clear cheese_1) (clear tomato_1) (clear cheese_2) (clear bread_1) (iscookable patty_1) (iscookable chicken_1) (iscuttable tomato_1) (item-free bread_2) (item-free patty_1) (item-free chicken_1) (item-free cheese_1) (item-free tomato_1) (item-free cheese_2) (item-free bread_1))

  (:goal (and
    (on bread_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at cheese_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
