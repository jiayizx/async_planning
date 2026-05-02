(define (problem robotouille-problem-1)
  (:domain robotouille)
  (:objects
    table_1 table_5 table_2 table_9 stove_1 table_7 table_8 fryer_1 table_10 board_1 sink_1 table_4 table_3 table_6 - station
    onion_1 potato_1 onion_2 lettuce_1 bottombun_1 topbun_1 bread_1 bread_2 onion_3 chicken_1 - item
    robot_1 - player
  )

  (:init
    ; station identity
    (istable table_1) (istable table_5) (istable table_2) (istable table_9) (istable table_7)
    (istable table_8) (istable table_10) (istable table_4) (istable table_3) (istable table_6)
    (isstove stove_1)
    (isfryer fryer_1)
    (isboard board_1)
    (issink sink_1)

    ; player identity
    (isrobot robot_1)

    ; item identity types
    (isonion onion_1) (ispotato potato_1) (isonion onion_2) (islettuce lettuce_1)
    (isbottombun bottombun_1) (istopbun topbun_1) (isbread bread_1) (isbread bread_2)
    (isonion onion_3) (ischicken chicken_1)

    ; player location
    (loc robot_1 table_1)

    ; item capabilities
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable potato_1) (isfryableifcut potato_1)
    (iscuttable onion_2) (isfryableifcut onion_2)
    (iscuttable onion_3) (isfryableifcut onion_3)
    (iscookable chicken_1)

    ; item placement / holdings
    (on onion_1 table_1) (at onion_1 table_1)
    (on potato_1 sink_1) (at potato_1 sink_1)
    (on onion_2 table_5) (at onion_2 table_5)
    (has robot_1 lettuce_1)
    (on bottombun_1 table_2) (at bottombun_1 table_2)
    (on topbun_1 table_9) (at topbun_1 table_9)
    (on bread_1 fryer_1) (at bread_1 fryer_1)
    (on bread_2 stove_1) (at bread_2 stove_1)
    (on onion_3 table_7) (at onion_3 table_7)
    (on chicken_1 table_3) (at chicken_1 table_3)

    ; clear: items that are not held and have no item atop them
    (clear onion_1) (clear potato_1) (clear onion_2)
    (clear bottombun_1) (clear topbun_1) (clear bread_1) (clear bread_2)
    (clear onion_3) (clear chicken_1)

    ; empty stations (no stack-level-0 item initially)
    (empty table_8) (empty table_10) (empty board_1) (empty table_4) (empty table_6)

    ; vacant stations (not occupied by the player)
    (vacant table_5) (vacant table_2) (vacant table_9) (vacant stove_1) (vacant table_7)
    (vacant table_8) (vacant fryer_1) (vacant table_10) (vacant board_1) (vacant sink_1)
    (vacant table_4) (vacant table_3) (vacant table_6)

    ; player holding state: robot_1 holds lettuce_1 (so no (nothing robot_1))

    ; all items start free (not being processed)
    (item-free onion_1) (item-free potato_1) (item-free onion_2) (item-free lettuce_1)
    (item-free bottombun_1) (item-free topbun_1) (item-free bread_1) (item-free bread_2)
    (item-free onion_3) (item-free chicken_1)
  )

  (:goal (and
    (on bottombun_1 table_10)
    (iscut lettuce_1)
    (at lettuce_1 table_10)
    (iscut onion_2)
    (isfried onion_2)
    (at onion_2 table_10)
    (at topbun_1 table_10)
    (clear topbun_1)
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (iscut onion_3)
    (at onion_3 table_2)
    (at bread_2 table_2)
    (clear bread_2)
  ))
)