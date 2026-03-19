(define (problem tomato-burger-and-fries)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_4 table_3 board_1 stove_1 fryer_1 - station
    bottombun_1 topbun_1 potato_1 tomato_1 patty_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    (isboard board_1) (isstove stove_1) (isfryer fryer_1)
    ; Item identity
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (ispotato potato_1)
    (istomato tomato_1)
    (ispatty patty_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_4)
    ; Player hand state
    ; robot_1 is holding potato_1
    (has robot_1 potato_1)
    ; Capability flags
    (iscuttable potato_1) (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)
    ; bottombun_1: stack-level 0 on table_4
    (on bottombun_1 table_4)
    (at bottombun_1 table_4)
    ; topbun_1: stack-level 0 on table_2
    (on topbun_1 table_2)
    (at topbun_1 table_2)
    ; tomato_1: stack-level 0 on stove_1
    (on tomato_1 stove_1)
    (at tomato_1 stove_1)
    ; patty_1: stack-level 0 on board_1
    (on patty_1 board_1)
    (at patty_1 board_1)
    ; Clear: topmost item at each occupied station and all held items not covered
    (clear bottombun_1)
    (clear topbun_1)
    (clear tomato_1)
    (clear patty_1)
    (clear potato_1)
    ; Empty: stations with no items on surface (stack-level 0)
    (empty table_1)
    (empty table_3)
    (empty fryer_1)
    ; Vacant: stations where no player stands
    (vacant table_1) (vacant table_2) (vacant table_3) (vacant board_1) (vacant stove_1) (vacant fryer_1)
    ; item-free: all items start free
    (item-free bottombun_1)
    (item-free topbun_1)
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
