(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_1 table_4 table_3 stove_1 board_1 fryer_1 table_5 table_7 stove_2 table_2 table_6 - station
    robot_1 - player
    onion_1 patty_1 tomato_1 bottombun_1 topbun_1 onion_2 cheese_1 - item
  )

  (:init
    ; station types
    (istable table_1) (istable table_4) (istable table_3) (isstove stove_1) (isboard board_1)
    (isfryer fryer_1) (istable table_5) (istable table_7) (isstove stove_2) (istable table_2)
    (istable table_6)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_1)

    ; item identities
    (isonion onion_1) (ispatty patty_1) (istomato tomato_1) (isbottombun bottombun_1)
    (istopbun topbun_1) (isonion onion_2) (ischeese cheese_1)

    ; capabilities
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscookable patty_1)
    (iscuttable tomato_1)
    (iscuttable onion_2) (isfryableifcut onion_2)

    ; physical placement (stack-level 0 items: at + on)
    (on onion_1 stove_1) (at onion_1 stove_1)
    (on patty_1 board_1) (at patty_1 board_1)
    (on tomato_1 table_5) (at tomato_1 table_5)
    (on bottombun_1 table_4) (at bottombun_1 table_4)
    (on topbun_1 table_1) (at topbun_1 table_1)
    (on onion_2 table_3) (at onion_2 table_3)
    (on cheese_1 fryer_1) (at cheese_1 fryer_1)

    ; clear: no items are stacked on any other and none are held
    (clear onion_1) (clear patty_1) (clear tomato_1) (clear bottombun_1)
    (clear topbun_1) (clear onion_2) (clear cheese_1)

    ; item-free for all items
    (item-free onion_1) (item-free patty_1) (item-free tomato_1) (item-free bottombun_1)
    (item-free topbun_1) (item-free onion_2) (item-free cheese_1)

    ; empty stations (those with no stack-level-0 items)
    (empty table_7) (empty stove_2) (empty table_2) (empty table_6)

    ; vacant stations (not occupied by player)
    (vacant table_4) (vacant table_3) (vacant stove_1) (vacant board_1) (vacant fryer_1)
    (vacant table_5) (vacant table_7) (vacant stove_2) (vacant table_2) (vacant table_6)

    ; player hand state
    (nothing robot_1)
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