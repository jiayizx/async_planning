(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    board_1 board_2 - station
    sink_1 sink_2 - station
    stove_1 - station
    table_1 table_2 table_3 table_4 - station
    fryer_1 fryer_2 - station
    robot_1 - player
    lettuce_1 - item
    topbun_1 topbun_2 - item
    bottombun_1 - item
    potato_1 - item
    tomato_1 - item
    patty_1 - item
  )
  (:init
    ; Station identity
    (isboard board_1)
    (isboard board_2)
    (issink sink_1)
    (issink sink_2)
    (isstove stove_1)
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (isfryer fryer_1)
    (isfryer fryer_2)
    ; Player identity
    (isrobot robot_1)
    ; Item identity
    (islettuce lettuce_1)
    (istopbun topbun_1)
    (istopbun topbun_2)
    (isbottombun bottombun_1)
    (ispotato potato_1)
    (istomato tomato_1)
    (ispatty patty_1)
    ; Item capabilities
    (iscuttable lettuce_1)
    (iscuttable potato_1)
    (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)
    ; Player location
    (loc robot_1 board_1)
    ; Player hand state
    (has robot_1 bottombun_1)
    ; Items on stations (not held, stack-level 0)
    (on lettuce_1 table_1)
    (at lettuce_1 table_1)
    (on topbun_2 table_2)
    (at topbun_2 table_2)
    (on topbun_1 board_1)
    (at topbun_1 board_1)
    (on potato_1 sink_2)
    (at potato_1 sink_2)
    (on tomato_1 board_2)
    (at tomato_1 board_2)
    (on patty_1 stove_1)
    (at patty_1 stove_1)
    ; Clear predicates
    (clear lettuce_1)
    (clear topbun_2)
    (clear topbun_1)
    (clear potato_1)
    (clear tomato_1)
    (clear patty_1)
    ; Empty stations (no item with stack-level 0 on them)
    (empty fryer_2)
    (empty table_3)
    (empty fryer_1)
    (empty table_4)
    ; Vacant stations (no player at them)
    (vacant sink_1)
    (vacant sink_2)
    (vacant stove_1)
    ; (vacant table_1) ; robot_1 is at board_1, not table_1
    (vacant table_2)
    (vacant fryer_1)
    (vacant fryer_2)
    (vacant table_3)
    (vacant table_4)
    (vacant board_2)
    ; All items start item-free
    (item-free lettuce_1)
    (item-free topbun_1)
    (item-free topbun_2)
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
