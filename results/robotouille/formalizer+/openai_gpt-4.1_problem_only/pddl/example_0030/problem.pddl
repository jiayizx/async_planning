(define (problem tomato-burger-and-fries)
  (:domain robotouille)
  (:objects
    board_1 board_2 fryer_1 sink_1 sink_2 stove_1 table_1 table_2 table_3 table_4 table_5 - station
    topbun_1 topbun_2 bottombun_1 onion_1 potato_1 tomato_1 patty_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (isboard board_1) (isboard board_2)
    (isfryer fryer_1)
    (issink sink_1) (issink sink_2)
    (isstove stove_1)
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5)
    ; Item identity
    (istopbun topbun_1) (istopbun topbun_2)
    (isbottombun bottombun_1)
    (isonion onion_1)
    (ispotato potato_1)
    (istomato tomato_1)
    (ispatty patty_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 board_1)
    (nothing robot_1)
    ; Capability flags
    (iscuttable onion_1)
    (iscuttable potato_1) (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)
    ; Item locations
    (on topbun_1 table_1) (at topbun_1 table_1)
    (on onion_1 sink_1) (at onion_1 sink_1)
    (on bottombun_1 sink_2) (at bottombun_1 sink_2)
    (on topbun_2 fryer_1) (at topbun_2 fryer_1)
    (on potato_1 table_3) (at potato_1 table_3)
    (on tomato_1 board_1) (at tomato_1 board_1)
    (on patty_1 table_2) (at patty_1 table_2)
    ; Clear predicates (all items are clear since no stacking and none are held)
    (clear topbun_1) (clear onion_1) (clear bottombun_1) (clear topbun_2) (clear potato_1) (clear tomato_1) (clear patty_1)
    ; Empty stations (no item with stack-level 0 on these stations)
    (empty board_2) (empty stove_1) (empty table_4) (empty table_5)
    ; Vacant stations (no player at these stations)
    (vacant board_2) (vacant fryer_1) (vacant sink_1) (vacant sink_2) (vacant stove_1) (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5)
    ; item-free: all items start free
    (item-free topbun_1) (item-free topbun_2) (item-free bottombun_1) (item-free onion_1) (item-free potato_1) (item-free tomato_1) (item-free patty_1)
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
