(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_3 table_1 board_1 fryer_1 table_2 - station
    bottombun_1 topbun_1 onion_1 onion_2 patty_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_3)
    (istable table_1)
    (isboard board_1)
    (isfryer fryer_1)
    (istable table_2)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (isonion onion_1)
    (isonion onion_2)
    (ispatty patty_1)
    (ischeese cheese_1)

    ; Item capabilities
    (iscuttable onion_1)
    (isfryableifcut onion_1)
    (iscuttable onion_2)
    (isfryableifcut onion_2)
    (iscookable patty_1)

    ; Player location
    (loc robot_1 table_3)

    ; Player hand state
    (has robot_1 cheese_1)

    ; Player hand state: robot_1 is holding cheese_1, so do not add (nothing robot_1)

    ; Item locations (not held)
    (on bottombun_1 table_3)
    (at bottombun_1 table_3)
    (on topbun_1 table_1)
    (at topbun_1 table_1)
    (on onion_1 board_1)
    (at onion_1 board_1)
    (on onion_2 fryer_1)
    (at onion_2 fryer_1)
    (on patty_1 table_2)
    (at patty_1 table_2)
    ; cheese_1 is held, so no at/on

    ; Clear predicates
    (clear bottombun_1)
    (clear topbun_1)
    (clear onion_1)
    (clear onion_2)
    (clear patty_1)
    ; cheese_1 is held, so not clear

    ; Empty stations: none, all have items with stack-level 0

    ; Vacant stations (no player at them)
    (vacant table_1)
    (vacant board_1)
    (vacant fryer_1)
    (vacant table_2)
    ; table_3 is occupied by robot_1

    ; All items start item-free
    (item-free bottombun_1)
    (item-free topbun_1)
    (item-free onion_1)
    (item-free onion_2)
    (item-free patty_1)
    (item-free cheese_1)
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
