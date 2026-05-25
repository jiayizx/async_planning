(define (problem robotouille-prob)
  (:domain robotouille)
  (:objects
    table_1 table_2 stove_1 board_1 table_3 fryer_1 table_4 - station
    robot_1 - player
    bottombun_1 topbun_1 potato_1 tomato_1 patty_1 - item
  )

  (:init (loc robot_1 table_1) (nothing robot_1) (istable table_1) (istable table_2) (isstove stove_1) (isboard board_1) (istable table_3) (isfryer fryer_1) (istable table_4) (empty stove_1) (empty board_1) (empty fryer_1) (vacant table_2) (vacant stove_1) (vacant board_1) (vacant table_3) (vacant fryer_1) (vacant table_4) (on bottombun_1 table_1) (at bottombun_1 table_1) (atop topbun_1 bottombun_1) (at topbun_1 table_1) (on potato_1 table_2) (at potato_1 table_2) (on tomato_1 table_4) (at tomato_1 table_4) (on patty_1 table_3) (at patty_1 table_3) (clear topbun_1) (clear potato_1) (clear tomato_1) (clear patty_1) (item-free bottombun_1) (item-free topbun_1) (item-free potato_1) (item-free tomato_1) (item-free patty_1) (iscuttable potato_1) (isfryable potato_1) (iscuttable tomato_1) (iscookable patty_1))

  (:goal (and
    (on bottombun_1 table_1)
    (iscooked patty_1)
    (at patty_1 table_1)
    (iscut tomato_1)
    (at tomato_1 table_1)
    (at topbun_1 table_1)
    (clear topbun_1)
    (iscut potato_1)
    (isfried potato_1)
    (on potato_1 table_2)
  ))
)
