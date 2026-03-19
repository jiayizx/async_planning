(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_3 table_4 table_5 table_1 table_6 table_2 table_7 - station
    fryer_1 sink_1 stove_1 board_1 - station
    robot_1 - player
    onion_1 patty_1 cheese_1 bottombun_1 topbun_1 onion_2 - item
  )

  (:init
    ; station identity
    (istable table_3) (istable table_4) (istable table_5) (istable table_1)
    (istable table_6) (istable table_2) (istable table_7)
    (isfryer fryer_1) (issink sink_1) (isstove stove_1) (isboard board_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_3)

    ; item identities
    (isonion onion_1) (ispatty patty_1) (ischeese cheese_1)
    (isbottombun bottombun_1) (istopbun topbun_1) (isonion onion_2)

    ; item capability predicates
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscookable patty_1)
    (isfryable cheese_1)
    (iscuttable onion_2) (isfryableifcut onion_2)

    ; item locations (all stack-level 0 -> on + at)
    (on onion_1 table_1) (at onion_1 table_1)
    (on patty_1 table_5) (at patty_1 table_5)
    (on cheese_1 fryer_1) (at cheese_1 fryer_1)
    (on bottombun_1 table_3) (at bottombun_1 table_3)
    (on topbun_1 table_6) (at topbun_1 table_6)
    (on onion_2 table_4) (at onion_2 table_4)

    ; all items start free
    (item-free onion_1) (item-free patty_1) (item-free cheese_1)
    (item-free bottombun_1) (item-free topbun_1) (item-free onion_2)

    ; clear items (no item atop any of them)
    (clear onion_1) (clear patty_1) (clear cheese_1)
    (clear bottombun_1) (clear topbun_1) (clear onion_2)

    ; empty stations (no item with stack-level 0 on them)
    (empty table_2) (empty table_7) (empty sink_1) (empty stove_1) (empty board_1)

    ; vacant stations (player at table_3 so it's not vacant)
    (vacant table_4) (vacant table_5) (vacant table_1) (vacant table_6)
    (vacant table_2) (vacant table_7) (vacant fryer_1) (vacant sink_1)
    (vacant stove_1) (vacant board_1)

    ; player hand state
    (nothing robot_1)
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