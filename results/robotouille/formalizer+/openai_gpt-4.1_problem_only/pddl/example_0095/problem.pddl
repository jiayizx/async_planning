(define (problem robotouille-multi-dish)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 table_6 table_7 table_8 table_9 fryer_1 board_1 sink_1 - station
    bottombun_1 topbun_1 bread_1 bread_2 lettuce_1 onion_1 onion_2 onion_3 potato_1 chicken_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5) (istable table_6) (istable table_7) (istable table_8) (istable table_9)
    (isfryer fryer_1)
    (isboard board_1)
    (issink sink_1)
    ; Item identity
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (isbread bread_1) (isbread bread_2)
    (islettuce lettuce_1)
    (isonion onion_1) (isonion onion_2) (isonion onion_3)
    (ispotato potato_1)
    (ischicken chicken_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_8)
    (nothing robot_1)
    ; Capability flags
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable onion_2) (isfryableifcut onion_2)
    (iscuttable onion_3) (isfryableifcut onion_3)
    (iscuttable potato_1) (isfryableifcut potato_1)
    (iscuttable lettuce_1)
    (iscookable chicken_1)
    ; Physical state: items on stations
    (on onion_2 table_8) (at onion_2 table_8)
    (on potato_1 table_1) (at potato_1 table_1)
    (on onion_3 table_9) (at onion_3 table_9)
    (on lettuce_1 fryer_1) (at lettuce_1 fryer_1)
    (on bottombun_1 table_3) (at bottombun_1 table_3)
    (on topbun_1 table_5) (at topbun_1 table_5)
    (on bread_2 board_1) (at bread_2 board_1)
    (on bread_1 sink_1) (at bread_1 sink_1)
    (on onion_1 table_4) (at onion_1 table_4)
    (on chicken_1 table_6) (at chicken_1 table_6)
    ; Clear: all items are clear (no stacking, no held items)
    (clear onion_2) (clear potato_1) (clear onion_3) (clear lettuce_1) (clear bottombun_1) (clear topbun_1) (clear bread_2) (clear bread_1) (clear onion_1) (clear chicken_1)
    ; Empty: stations with no item at stack-level 0
    (empty table_2) (empty table_7)
    ; Vacant: stations with no player
    (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5) (vacant table_6) (vacant table_7) (vacant table_9) (vacant fryer_1) (vacant board_1) (vacant sink_1)
    ; item-free: all items start free
    (item-free bottombun_1) (item-free topbun_1) (item-free bread_1) (item-free bread_2) (item-free lettuce_1) (item-free onion_1) (item-free onion_2) (item-free onion_3) (item-free potato_1) (item-free chicken_1)
  )
  (:goal (and
    (on bottombun_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (iscut onion_2)
    (isfried onion_2)
    (at onion_2 table_2)
    (at topbun_1 table_2)
    (clear topbun_1)
    (on bread_1 table_3)
    (iscooked chicken_1)
    (at chicken_1 table_3)
    (iscut onion_3)
    (at onion_3 table_3)
    (at bread_2 table_3)
    (clear bread_2)
  ))
)
