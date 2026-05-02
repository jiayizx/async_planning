(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_5 table_2 stove_1 board_1 table_3 fryer_1 table_1 table_4 - station
    robot_1 - player
    bottombun_1 topbun_1 onion_2 onion_1 patty_1 cheese_1 - item
  )

  (:init
    ; station types
    (istable table_5) (istable table_2) (isstove? )
    (istable table_3) (istable table_1) (istable table_4)
    (istable table_5) ; duplicate harmless identity
    (isstove stove_1)
    (isboard board_1)
    (isfryer fryer_1)

    ; player identity
    (isrobot robot_1)

    ; item types
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (isonion onion_1)
    (isonion onion_2)
    (ispatty patty_1)
    (ischeese cheese_1)

    ; capabilities
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable onion_2) (isfryableifcut onion_2)
    (iscookable patty_1)

    ; initial player location
    (loc robot_1 table_5)

    ; item placements (items held use has instead of at/on)
    (on bottombun_1 table_4) (at bottombun_1 table_4)
    (on onion_2 table_5) (at onion_2 table_5)
    (on onion_1 table_2) (at onion_1 table_2)
    (on patty_1 stove_1) (at patty_1 stove_1)
    (on cheese_1 board_1) (at cheese_1 board_1)
    (has robot_1 topbun_1)

    ; clear predicates for items not topped and not held
    (clear bottombun_1) (clear onion_2) (clear onion_1) (clear patty_1) (clear cheese_1)

    ; empty stations (no stack-level-0 item starts there)
    (empty table_3) (empty fryer_1) (empty table_1)

    ; vacant stations (no player occupying them)
    (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4)
    (vacant stove_1) (vacant board_1) (vacant fryer_1)

    ; item-free for all items
    (item-free bottombun_1) (item-free topbun_1) (item-free onion_2)
    (item-free onion_1) (item-free patty_1) (item-free cheese_1)
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
