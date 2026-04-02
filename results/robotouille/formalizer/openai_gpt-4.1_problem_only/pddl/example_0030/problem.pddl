(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    board_1 board_2 fryer_1 table_1 table_2 table_3 table_4 table_5 sink_1 sink_2 stove_1 - station
    robot_1 - player
    topbun_1 topbun_2 onion_1 bottombun_1 potato_1 tomato_1 patty_1 - item
  )
  (:init
    ; Station identity
    (isboard board_1)
    (isboard board_2)
    (isfryer fryer_1)
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (issink sink_1)
    (issink sink_2)
    (isstove stove_1)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (istopbun topbun_1)
    (istopbun topbun_2)
    (isonion onion_1)
    (isbottombun bottombun_1)
    (ispotato potato_1)
    (istomato tomato_1)
    (ispatty patty_1)

    ; Item capabilities
    (iscuttable onion_1)
    (iscuttable potato_1)
    (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)

    ; Player location
    (loc robot_1 board_1)

    ; Player hand state
    (nothing robot_1)

    ; Item locations (on/at/atop/has)
    (on topbun_1 table_1)
    (at topbun_1 table_1)
    (on onion_1 sink_1)
    (at onion_1 sink_1)
    (on bottombun_1 sink_2)
    (at bottombun_1 sink_2)
    (on topbun_2 fryer_1)
    (at topbun_2 fryer_1)
    (on potato_1 table_3)
    (at potato_1 table_3)
    (on tomato_1 board_1)
    (at tomato_1 board_1)
    (on patty_1 table_2)
    (at patty_1 table_2)

    ; Clear predicates
    (clear topbun_1)
    (clear onion_1)
    (clear bottombun_1)
    (clear topbun_2)
    (clear potato_1)
    (clear tomato_1)
    (clear patty_1)

    ; Empty stations (no item with stack-level 0 on them)
    (empty board_2)
    (empty table_4)
    (empty table_5)
    (empty stove_1)

    ; Vacant stations (no player at them)
    (vacant board_2)
    (vacant fryer_1)
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant sink_1)
    (vacant sink_2)
    (vacant stove_1)

    ; All items start item-free
    (item-free topbun_1)
    (item-free topbun_2)
    (item-free onion_1)
    (item-free bottombun_1)
    (item-free potato_1)
    (item-free tomato_1)
    (item-free patty_1)
  )
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
