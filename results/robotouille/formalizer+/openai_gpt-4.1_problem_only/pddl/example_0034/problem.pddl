(define (problem tomato-burger-and-fries)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 table_6 table_7 stove_1 fryer_1 board_1 board_2 board_3 - station
    patty_1 patty_2 bottombun_1 topbun_1 tomato_1 potato_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5) (istable table_6) (istable table_7)
    (isstove stove_1)
    (isfryer fryer_1)
    (isboard board_1) (isboard board_2) (isboard board_3)
    ; Item identity
    (ispatty patty_1) (ispatty patty_2)
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (istomato tomato_1)
    (ispotato potato_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_3)
    (nothing robot_1)
    ; Capability flags
    (iscookable patty_1) (iscookable patty_2)
    (iscuttable tomato_1)
    (iscuttable potato_1) (isfryableifcut potato_1)
    ; patty_1: stack-level 0 on table_1
    (on patty_1 table_1)
    (at patty_1 table_1)
    ; tomato_1: stack-level 0 on board_2
    (on tomato_1 board_2)
    (at tomato_1 board_2)
    ; patty_2: stack-level 0 on fryer_1
    (on patty_2 fryer_1)
    (at patty_2 fryer_1)
    ; bottombun_1: stack-level 0 on table_3
    (on bottombun_1 table_3)
    (at bottombun_1 table_3)
    ; topbun_1: stack-level 0 on table_4
    (on topbun_1 table_4)
    (at topbun_1 table_4)
    ; potato_1: stack-level 0 on table_5
    (on potato_1 table_5)
    (at potato_1 table_5)
    ; Clear: topmost item at each occupied station
    (clear patty_1)
    (clear tomato_1)
    (clear patty_2)
    (clear bottombun_1)
    (clear topbun_1)
    (clear potato_1)
    ; Empty: stations with no items on surface
    (empty table_2) (empty table_6) (empty table_7) (empty stove_1) (empty board_1) (empty board_3)
    ; Vacant: stations where no player stands
    (vacant table_1) (vacant table_2) (vacant table_4) (vacant table_5) (vacant table_6) (vacant table_7) (vacant stove_1) (vacant fryer_1) (vacant board_1) (vacant board_2) (vacant board_3)
    ; item-free: all items start free
    (item-free patty_1) (item-free patty_2) (item-free bottombun_1) (item-free topbun_1) (item-free tomato_1) (item-free potato_1)
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
