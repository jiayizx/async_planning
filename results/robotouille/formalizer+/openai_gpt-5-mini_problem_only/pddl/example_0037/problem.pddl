(define (problem tomato-burger-fries)
  (:domain robotouille)
  (:objects
    fryer_1 table_2 stove_1 board_1 table_1 table_3 - station
    bottombun_1 topbun_1 potato_1 tomato_1 patty_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (isfryer fryer_1) (istable table_2) (isstove stove_1) (isboard board_1) (istable table_1) (istable table_3)
    ; Item identity
    (isbottombun bottombun_1) (istopbun topbun_1) (ispotato potato_1) (istomato tomato_1) (ispatty patty_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 fryer_1)
    (nothing robot_1)
    ; Capability flags
    (iscuttable potato_1) (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)
    ; Item locations (all stack-level 0 -> on + at)
    (on bottombun_1 fryer_1) (at bottombun_1 fryer_1)
    (on topbun_1 table_2) (at topbun_1 table_2)
    (on potato_1 stove_1) (at potato_1 stove_1)
    (on tomato_1 board_1) (at tomato_1 board_1)
    (on patty_1 table_1) (at patty_1 table_1)
    ; Clear: all items are topmost (no stacking)
    (clear bottombun_1) (clear topbun_1) (clear potato_1) (clear tomato_1) (clear patty_1)
    ; Empty stations (no item with stack-level 0 at that station)
    (empty table_3)
    ; Vacant stations (player at fryer_1)
    (vacant table_2) (vacant stove_1) (vacant board_1) (vacant table_1) (vacant table_3)
    ; item-free: all items start free
    (item-free bottombun_1) (item-free topbun_1) (item-free potato_1) (item-free tomato_1) (item-free patty_1)
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