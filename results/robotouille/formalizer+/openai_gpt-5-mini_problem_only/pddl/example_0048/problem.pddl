(define (problem onion-cheese-burger)
  (:domain robotouille)
  (:objects
    table_5 table_2 stove_1 board_1 table_3 fryer_1 table_1 table_4 - station
    bottombun_1 topbun_1 onion_2 onion_1 patty_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_5) (istable table_2) (isstove stove_1) (isboard board_1)
    (istable table_3) (isfryer fryer_1) (istable table_1) (istable table_4)

    ; Item identity
    (isbottombun bottombun_1) (istopbun topbun_1)
    (isonion onion_2) (isonion onion_1) (ispatty patty_1) (ischeese cheese_1)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_5)
    ; robot_1 is holding topbun_1
    (has robot_1 topbun_1)

    ; Capability flags
    (iscuttable onion_2) (isfryableifcut onion_2)
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscookable patty_1)

    ; Item locations (stack-level 0 items -> on + at)
    (on bottombun_1 table_4) (at bottombun_1 table_4)
    (on onion_2 table_5) (at onion_2 table_5)
    (on onion_1 table_2) (at onion_1 table_2)
    (on patty_1 stove_1) (at patty_1 stove_1)
    (on cheese_1 board_1) (at cheese_1 board_1)

    ; Clear: topmost items (not held)
    (clear bottombun_1) (clear onion_2) (clear onion_1) (clear patty_1) (clear cheese_1)

    ; Empty stations (no item with stack-level 0 at that station)
    (empty table_3) (empty fryer_1) (empty table_1)

    ; Vacant stations (no player stands there)
    (vacant table_2) (vacant stove_1) (vacant board_1) (vacant table_3)
    (vacant fryer_1) (vacant table_1) (vacant table_4)

    ; Player hand state: robot_1 holds an item, so no (nothing robot_1)

    ; All items start item-free
    (item-free bottombun_1) (item-free topbun_1) (item-free onion_2)
    (item-free onion_1) (item-free patty_1) (item-free cheese_1)
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