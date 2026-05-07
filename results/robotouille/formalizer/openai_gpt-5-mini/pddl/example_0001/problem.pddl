(define (problem robotouille-prob)
  (:domain robotouille)
  (:objects
    table_2 stove_4 table_1 board_1 sink_1 stove_3 stove_2 table_3 stove_1 table_4 - station
    robot_1 - player
    bread_1 chicken_1 bread_2 topbun_1 patty_1 topbun_2 bread_3 cheese_1 - item
  )

  (:init (istable table_2) (isstove stove_4) (istable table_1) (isboard board_1) (issink sink_1) (isstove stove_3) (isstove stove_2) (istable table_3) (isstove stove_1) (istable table_4) (loc robot_1 table_2) (nothing robot_1) (on bread_1 table_2) (at bread_1 table_2) (on chicken_1 table_3) (at chicken_1 table_3) (on bread_2 sink_1) (at bread_2 sink_1) (on topbun_1 stove_1) (at topbun_1 stove_1) (on patty_1 stove_3) (at patty_1 stove_3) (on topbun_2 board_1) (at topbun_2 board_1) (on bread_3 stove_4) (at bread_3 stove_4) (on cheese_1 table_1) (at cheese_1 table_1) (clear bread_1) (clear chicken_1) (clear bread_2) (clear topbun_1) (clear patty_1) (clear topbun_2) (clear bread_3) (clear cheese_1) (iscookable chicken_1) (iscookable patty_1) (item-free bread_1) (item-free chicken_1) (item-free bread_2) (item-free topbun_1) (item-free patty_1) (item-free topbun_2) (item-free bread_3) (item-free cheese_1) (empty stove_2) (empty table_4) (vacant stove_4) (vacant table_1) (vacant board_1) (vacant sink_1) (vacant stove_3) (vacant stove_2) (vacant table_3) (vacant stove_1) (vacant table_4))

  (:goal (and
    (on bread_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at cheese_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
