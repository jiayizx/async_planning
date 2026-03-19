(define (problem onion-cheese-burger)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 table_6 table_7 - station
    fryer_1 stove_1 sink_1 board_1 - station
    onion_1 onion_2 patty_1 cheese_1 bottombun_1 topbun_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5) (istable table_6) (istable table_7)
    (isfryer fryer_1) (isstove stove_1) (issink sink_1) (isboard board_1)
    ; Item identity
    (isonion onion_1) (isonion onion_2)
    (ispatty patty_1) (ischeese cheese_1)
    (isbottombun bottombun_1) (istopbun topbun_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_3)
    (nothing robot_1)
    ; Capability flags
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable onion_2) (isfryableifcut onion_2)
    (iscookable patty_1)
    ; Item locations (stack-level 0 -> on + at)
    (on onion_1 table_1) (at onion_1 table_1)
    (on patty_1 table_5) (at patty_1 table_5)
    (on cheese_1 fryer_1) (at cheese_1 fryer_1)
    (on bottombun_1 table_3) (at bottombun_1 table_3)
    (on topbun_1 table_6) (at topbun_1 table_6)
    (on onion_2 table_4) (at onion_2 table_4)
    ; Clear: topmost items (no item atop them)
    (clear onion_1) (clear patty_1) (clear cheese_1) (clear bottombun_1) (clear topbun_1) (clear onion_2)
    ; Empty stations (no stack-level 0 item present)
    (empty sink_1) (empty table_2) (empty stove_1) (empty board_1) (empty table_7)
    ; Vacant stations (no player stands there)
    (vacant table_1) (vacant table_2) (vacant table_4) (vacant table_5) (vacant table_6) (vacant table_7)
    (vacant fryer_1) (vacant stove_1) (vacant sink_1) (vacant board_1)
    ; item-free: all items start free
    (item-free onion_1) (item-free onion_2) (item-free patty_1) (item-free cheese_1) (item-free bottombun_1) (item-free topbun_1)
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