(define (problem potato-soup-preparation)
  (:domain robotouille)
  (:objects
    fryer_1 fryer_2 board_1 board_2 table_1 table_2 table_3 stove_1 sink_1 - station
    topbun_1 patty_1 potato_1 - item
    robot_1 - player
  )
  (:init
    (isfryer fryer_1) (isfryer fryer_2)
    (isboard board_1) (isboard board_2)
    (istable table_1) (istable table_2) (istable table_3)
    (isstove stove_1) (issink sink_1)
    (istopbun topbun_1) (ispatty patty_1) (ispotato potato_1)
    (isrobot robot_1)
    (loc robot_1 fryer_2)
    (nothing robot_1)
    (iscookable patty_1) (iscuttable potato_1)
    (on topbun_1 table_3) (at topbun_1 table_3)
    (on patty_1 fryer_1) (at patty_1 fryer_1)
    (on potato_1 fryer_2) (at potato_1 fryer_2)
    (clear topbun_1) (clear patty_1) (clear potato_1)
    (empty board_1) (empty board_2) (empty table_1) (empty table_2) (empty stove_1) (empty sink_1)
    (vacant fryer_1) (vacant board_1) (vacant board_2) (vacant table_1) (vacant table_2) (vacant table_3) (vacant stove_1) (vacant sink_1)
    (item-free topbun_1) (item-free patty_1) (item-free potato_1)
  )
  (:goal (and
    (on potato_1 table_1)
  ))
)