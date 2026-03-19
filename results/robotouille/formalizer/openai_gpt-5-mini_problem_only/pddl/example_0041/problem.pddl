(define (problem robotouille-problem-1)
  (:domain robotouille)
  (:objects
    table_3 table_1 stove_1 board_1 table_4 fryer_1 table_5 table_2 - station
    robot_1 - player
    bottombun_1 cheese_1 patty_1 topbun_1 onion_1 onion_2 - item
  )

  (:init
    ; station identity
    (istable table_3) (istable table_1) (isstove stove_1) (isboard board_1)
    (istable table_4) (isfryer fryer_1) (istable table_5) (istable table_2)

    ; player identity & location
    (isrobot robot_1)
    (loc robot_1 table_3)

    ; item identity
    (isbottombun bottombun_1) (ischeese cheese_1) (ispatty patty_1)
    (istopbun topbun_1) (isonion onion_1) (isonion onion_2)

    ; item capabilities
    (iscookable patty_1)
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable onion_2) (isfryableifcut onion_2)

    ; physical placement (items not held)
    (on bottombun_1 table_3) (at bottombun_1 table_3)
    (on cheese_1 table_5) (at cheese_1 table_5)
    (on patty_1 table_4) (at patty_1 table_4)
    (on topbun_1 table_1) (at topbun_1 table_1)
    (on onion_1 board_1) (at onion_1 board_1)
    (on onion_2 stove_1) (at onion_2 stove_1)

    ; clear items (no item is atop another and none are held)
    (clear bottombun_1) (clear cheese_1) (clear patty_1)
    (clear topbun_1) (clear onion_1) (clear onion_2)

    ; empty stations (no stack-level-0 items on them)
    (empty fryer_1) (empty table_2)

    ; vacant stations (not occupied by the player)
    (vacant table_1) (vacant stove_1) (vacant board_1) (vacant table_4)
    (vacant fryer_1) (vacant table_5) (vacant table_2)

    ; player hand state
    (nothing robot_1)

    ; all items start free (not being processed)
    (item-free bottombun_1) (item-free cheese_1) (item-free patty_1)
    (item-free topbun_1) (item-free onion_1) (item-free onion_2)
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