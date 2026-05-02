(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_5 table_2 stove_1 board_1 table_3 fryer_1 table_1 table_4 - station
    robot_1 - player
    bottombun_1 topbun_1 onion_2 onion_1 patty_1 cheese_1 - item
  )
  (:init
    ;; Station identity
    (istable table_5)
    (istable table_2)
    (isstove stove_1)
    (isboard board_1)
    (istable table_3)
    (isfryer fryer_1)
    (istable table_1)
    (istable table_4)

    ;; Player identity
    (isrobot robot_1)

    ;; Item identity
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (isonion onion_2)
    (isonion onion_1)
    (ispatty patty_1)
    (ischeese cheese_1)

    ;; Item capabilities
    (iscuttable onion_2)
    (isfryableifcut onion_2)
    (iscuttable onion_1)
    (isfryableifcut onion_1)
    (iscookable patty_1)

    ;; Player location
    (loc robot_1 table_5)

    ;; Player hand state
    ;; robot_1 is holding topbun_1, so no (nothing robot_1)

    ;; Items held
    (has robot_1 topbun_1)

    ;; Items on stations (stack-level 0, not held)
    (on bottombun_1 table_4)
    (at bottombun_1 table_4)
    (on onion_2 table_5)
    (at onion_2 table_5)
    (on onion_1 table_2)
    (at onion_1 table_2)
    (on patty_1 stove_1)
    (at patty_1 stove_1)
    (on cheese_1 board_1)
    (at cheese_1 board_1)

    ;; Items clear (no other item atop, not held)
    (clear bottombun_1)
    (clear onion_2)
    (clear onion_1)
    (clear patty_1)
    (clear cheese_1)
    ;; topbun_1 is held, so not clear

    ;; Stations empty (no item with stack-level 0 on them)
    (empty table_3)
    (empty fryer_1)
    (empty table_1)

    ;; Stations vacant (no player at them)
    (vacant table_2)
    (vacant stove_1)
    (vacant board_1)
    (vacant table_3)
    (vacant fryer_1)
    (vacant table_1)
    (vacant table_4)

    ;; All items start item-free
    (item-free bottombun_1)
    (item-free topbun_1)
    (item-free onion_2)
    (item-free onion_1)
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
