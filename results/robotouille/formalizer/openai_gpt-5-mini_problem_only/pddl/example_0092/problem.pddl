(define (problem robotouille-problem-1)
  (:domain robotouille)
  (:objects
    table_7 table_4 table_8 fryer_1 stove_1 table_6 board_1 sink_1 table_1 table_5 table_3 table_2 - station
    robot_1 - player
    onion_3 potato_1 onion_1 lettuce_1 bottombun_1 topbun_1 bread_2 bread_1 onion_2 chicken_1 - item
  )

  (:init
    ; station identity
    (istable table_7) (istable table_4) (istable table_8) (isfryer fryer_1) (isstove stove_1)
    (istable table_6) (isboard board_1) (issink sink_1) (istable table_1) (istable table_5)
    (istable table_3) (istable table_2)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_7)

    ; item identities
    (isonion onion_3) (ispotato potato_1) (isonion onion_1) (islettuce lettuce_1)
    (isbottombun bottombun_1) (istopbun topbun_1) (isbread bread_2) (isbread bread_1)
    (isonion onion_2) (ischicken chicken_1)

    ; item capabilities
    (iscuttable onion_3) (isfryableifcut onion_3)
    (iscuttable potato_1) (isfryableifcut potato_1)
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable lettuce_1)
    (iscuttable onion_2) (isfryableifcut onion_2)
    (iscookable chicken_1)

    ; item locations (stack-level 0: both on + at)
    (on onion_3 table_7) (at onion_3 table_7)
    (on potato_1 table_2) (at potato_1 table_2)
    (on onion_1 table_3) (at onion_1 table_3)
    (on lettuce_1 table_4) (at lettuce_1 table_4)
    (on bottombun_1 table_8) (at bottombun_1 table_8)
    (on topbun_1 fryer_1) (at topbun_1 fryer_1)
    (on bread_2 stove_1) (at bread_2 stove_1)
    (on bread_1 table_6) (at bread_1 table_6)
    (on onion_2 board_1) (at onion_2 board_1)
    (on chicken_1 sink_1) (at chicken_1 sink_1)

    ; clear: no items have anything atop them
    (clear onion_3) (clear potato_1) (clear onion_1) (clear lettuce_1)
    (clear bottombun_1) (clear topbun_1) (clear bread_2) (clear bread_1)
    (clear onion_2) (clear chicken_1)

    ; empty stations (those with no stack-level-0 items)
    (empty table_1) (empty table_5)

    ; vacant stations (all stations not occupied by a player)
    (vacant table_4) (vacant table_8) (vacant fryer_1) (vacant stove_1) (vacant table_6)
    (vacant board_1) (vacant sink_1) (vacant table_1) (vacant table_5) (vacant table_3) (vacant table_2)
    ; table_7 is not vacant because robot_1 is located there

    ; player hand state
    (nothing robot_1)

    ; all items start free (not being processed)
    (item-free onion_3) (item-free potato_1) (item-free onion_1) (item-free lettuce_1)
    (item-free bottombun_1) (item-free topbun_1) (item-free bread_2) (item-free bread_1)
    (item-free onion_2) (item-free chicken_1)
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
