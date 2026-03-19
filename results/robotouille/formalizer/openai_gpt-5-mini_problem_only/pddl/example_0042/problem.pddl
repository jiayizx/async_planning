(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    fryer_1 stove_4 stove_1 table_3 table_2 table_1 stove_3 stove_2 table_5 table_4 board_1 - station
    robot_1 - player
    onion_2 bottombun_1 onion_1 cheese_1 tomato_1 patty_1 topbun_1 - item
  )

  (:init
    ; station identity
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

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 fryer_1)

    ; item identities
    (isonion onion_2)
    (isbottombun bottombun_1)
    (isonion onion_1)
    (ischeese cheese_1)
    (istomato tomato_1)
    (ispatty patty_1)
    (istopbun topbun_1)

    ; item capabilities
    (iscuttable onion_2)
    (isfryableifcut onion_2)
    (iscuttable onion_1)
    (isfryableifcut onion_1)
    (iscuttable tomato_1)
    (iscookable patty_1)

    ; item locations (on / at for stack-level 0; held items use has)
    (on onion_2 stove_4)
    (at onion_2 stove_4)

    (on bottombun_1 table_4)
    (at bottombun_1 table_4)

    (on onion_1 stove_1)
    (at onion_1 stove_1)

    (on cheese_1 table_2)
    (at cheese_1 table_2)

    (has robot_1 tomato_1)

    (on patty_1 table_3)
    (at patty_1 table_3)

    (on topbun_1 fryer_1)
    (at topbun_1 fryer_1)

    ; clear: every item that is not topped by another and not held
    (clear onion_2)
    (clear bottombun_1)
    (clear onion_1)
    (clear cheese_1)
    (clear patty_1)
    (clear topbun_1)
    ; tomato_1 is held, so not declared clear

    ; empty stations: those with no stack-level-0 items
    (empty table_1)
    (empty stove_3)
    (empty stove_2)
    (empty table_5)
    (empty board_1)

    ; vacant stations: all stations not occupied by the player
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
    ; fryer_1 is occupied by robot_1, so not vacant

    ; player hand state: robot is holding tomato_1, so no (nothing robot_1)

    ; all items start item-free
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
