(define (problem onion-cheese-burger-and-onion-rings)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 board_1 fryer_1 - station
    bottombun_1 topbun_1 onion_1 onion_2 patty_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3)
    (isboard board_1) (isfryer fryer_1)
    ; Item identity
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (isonion onion_1) (isonion onion_2)
    (ispatty patty_1)
    (ischeese cheese_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_3)
    (has robot_1 cheese_1)
    ; Capability flags
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable onion_2) (isfryableifcut onion_2)
    (iscookable patty_1)
    ; bottombun_1: stack-level 0 on table_3
    (on bottombun_1 table_3)
    (at bottombun_1 table_3)
    ; topbun_1: stack-level 0 on table_1
    (on topbun_1 table_1)
    (at topbun_1 table_1)
    ; onion_1: stack-level 0 on board_1
    (on onion_1 board_1)
    (at onion_1 board_1)
    ; onion_2: stack-level 0 on fryer_1
    (on onion_2 fryer_1)
    (at onion_2 fryer_1)
    ; patty_1: stack-level 0 on table_2
    (on patty_1 table_2)
    (at patty_1 table_2)
    ; Clear predicates: topmost items not held and not under another item
    (clear bottombun_1)
    (clear topbun_1)
    (clear onion_1)
    (clear onion_2)
    (clear patty_1)
    ; Empty: stations with no item at stack-level 0
    ; table_1: has topbun_1 (not empty)
    ; table_2: has patty_1 (not empty)
    ; table_3: has bottombun_1 (not empty)
    ; board_1: has onion_1 (not empty)
    ; fryer_1: has onion_2 (not empty)
    ; Vacant: stations with no player standing
    (vacant table_1) (vacant table_2) (vacant board_1) (vacant fryer_1) (vacant table_3)
    ; item-free: all items start free
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
