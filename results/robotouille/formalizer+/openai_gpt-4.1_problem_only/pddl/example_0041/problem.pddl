(define (problem onion-cheese-burger-and-onion-rings)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 stove_1 board_1 fryer_1 - station
    bottombun_1 cheese_1 patty_1 topbun_1 onion_1 onion_2 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5)
    (isstove stove_1)
    (isboard board_1)
    (isfryer fryer_1)
    ; Item identity
    (isbottombun bottombun_1)
    (ischeese cheese_1)
    (ispatty patty_1)
    (istopbun topbun_1)
    (isonion onion_1) (isonion onion_2)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_3)
    (nothing robot_1)
    ; Capability flags
    (iscookable patty_1)
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable onion_2) (isfryableifcut onion_2)
    ; bottombun_1: stack-level 0 on table_3
    (on bottombun_1 table_3)
    (at bottombun_1 table_3)
    ; cheese_1: stack-level 0 on table_5
    (on cheese_1 table_5)
    (at cheese_1 table_5)
    ; patty_1: stack-level 0 on table_4
    (on patty_1 table_4)
    (at patty_1 table_4)
    ; topbun_1: stack-level 0 on table_1
    (on topbun_1 table_1)
    (at topbun_1 table_1)
    ; onion_1: stack-level 0 on board_1
    (on onion_1 board_1)
    (at onion_1 board_1)
    ; onion_2: stack-level 0 on stove_1
    (on onion_2 stove_1)
    (at onion_2 stove_1)
    ; Clear: topmost item at each occupied station
    (clear bottombun_1)
    (clear cheese_1)
    (clear patty_1)
    (clear topbun_1)
    (clear onion_1)
    (clear onion_2)
    ; Empty: stations with no items on surface (stack-level 0)
    (empty fryer_1)
    (empty table_2)
    ; Vacant: stations where no player stands
    (vacant table_1) (vacant table_2) (vacant table_4) (vacant table_5) (vacant stove_1) (vacant board_1) (vacant fryer_1)
    ; item-free: all items start free
    (item-free bottombun_1)
    (item-free cheese_1)
    (item-free patty_1)
    (item-free topbun_1)
    (item-free onion_1)
    (item-free onion_2)
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
