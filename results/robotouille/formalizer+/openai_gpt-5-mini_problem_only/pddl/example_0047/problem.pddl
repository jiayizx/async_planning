(define (problem onion-cheese-burger)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 - station
    fryer_1 - station
    stove_1 - station
    board_1 - station
    bottombun_1 topbun_1 onion_1 onion_2 patty_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    (isfryer fryer_1) (isstove stove_1) (isboard board_1)
    ; Item identity
    (isbottombun bottombun_1) (istopbun topbun_1)
    (isonion onion_1) (isonion onion_2)
    (ispatty patty_1) (ischeese cheese_1)
    ; Player identity and location
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)
    ; Capability flags
    (iscookable patty_1)
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable onion_2) (isfryableifcut onion_2)
    ; Item positions (stack-level 0 => on + at)
    (on bottombun_1 table_1) (at bottombun_1 table_1)
    (on topbun_1 fryer_1) (at topbun_1 fryer_1)
    (on onion_1 stove_1) (at onion_1 stove_1)
    (on onion_2 board_1) (at onion_2 board_1)
    (on patty_1 table_2) (at patty_1 table_2)
    (on cheese_1 table_3) (at cheese_1 table_3)
    ; Clear: all topmost items (no atop references)
    (clear bottombun_1) (clear topbun_1) (clear onion_1) (clear onion_2) (clear patty_1) (clear cheese_1)
    ; Empty stations (no item with stack-level 0 at that station)
    (empty table_4)
    ; Vacant stations (no player at)
    (vacant fryer_1) (vacant stove_1) (vacant board_1) (vacant table_2) (vacant table_3) (vacant table_4)
    ; item-free for all items
    (item-free bottombun_1) (item-free topbun_1) (item-free onion_1) (item-free onion_2) (item-free patty_1) (item-free cheese_1)
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