(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    fryer_1 - station
    stove_4 - station
    stove_1 - station
    table_3 - station
    table_2 - station
    table_1 - station
    stove_3 - station
    stove_2 - station
    table_5 - station
    table_4 - station
    board_1 - station
    onion_2 - item
    bottombun_1 - item
    onion_1 - item
    cheese_1 - item
    tomato_1 - item
    patty_1 - item
    topbun_1 - item
    robot_1 - player
  )
  (:init
    (isfryer fryer_1)
    (isstove stove_4)
    (isstove stove_1)
    (istable table_3)
    (istable table_2)
    (istable table_1)
    (isstove stove_3)
    (isstove stove_2)
    (istable table_5)
    (istable table_4)
    (isboard board_1)
    (isonion onion_2)
    (isbottombun bottombun_1)
    (isonion onion_1)
    (ischeese cheese_1)
    (istomato tomato_1)
    (ispatty patty_1)
    (istopbun topbun_1)
    (isrobot robot_1)
    (iscuttable onion_2)
    (isfryableifcut onion_2)
    (iscuttable onion_1)
    (isfryableifcut onion_1)
    (iscuttable tomato_1)
    (iscookable patty_1)
    (loc robot_1 fryer_1)
    (has robot_1 tomato_1)
    (on onion_2 stove_4)
    (at onion_2 stove_4)
    (on bottombun_1 table_4)
    (at bottombun_1 table_4)
    (on onion_1 stove_1)
    (at onion_1 stove_1)
    (on cheese_1 table_2)
    (at cheese_1 table_2)
    (on patty_1 table_3)
    (at patty_1 table_3)
    (on topbun_1 fryer_1)
    (at topbun_1 fryer_1)
    (clear onion_2)
    (clear bottombun_1)
    (clear onion_1)
    (clear cheese_1)
    (clear patty_1)
    (clear topbun_1)
    (empty table_1)
    (empty stove_3)
    (empty stove_2)
    (empty table_5)
    (empty board_1)
    (vacant stove_4)
    (vacant stove_1)
    (vacant table_3)
    (vacant table_2)
    (vacant table_1)
    (vacant stove_3)
    (vacant stove_2)
    (vacant table_5)
    (vacant table_4)
    (vacant board_1)
    (item-free onion_2)
    (item-free bottombun_1)
    (item-free onion_1)
    (item-free cheese_1)
    (item-free tomato_1)
    (item-free patty_1)
    (item-free topbun_1)
  )
  (:goal (and
    (on bottombun_1 table_1)
    (iscooked patty_1)
    (at patty_1 table_1)
    (iscut onion_1)
    (at onion_1 table_1)
    (at cheese_1 table_1)
    (at topbun_1 table_1)
    (clear topbun_1)
    (iscut onion_2)
    (isfried onion_2)
    (on onion_2 table_2)
  ))
)
