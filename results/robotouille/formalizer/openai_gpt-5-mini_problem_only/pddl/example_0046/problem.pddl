(define (problem robotouille_prob)
  (:domain robotouille)
  (:objects
    fryer_1 table_1 table_5 board_1 table_4 table_2 table_3 stove_1 - station
    robot_1 - player
    cheese_1 bottombun_1 topbun_1 onion_1 onion_2 patty_1 - item
  )

  (:init
    ;; station identity
    (isfryer fryer_1)
    (istable table_1)
    (istable table_5)
    (isboard board_1)
    (istable table_4)
    (istable table_2)
    (istable table_3)
    (isstove stove_1)

    ;; player identity and location
    (isrobot robot_1)
    (loc robot_1 fryer_1)

    ;; item identities
    (ischeese cheese_1)
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (isonion onion_1)
    (isonion onion_2)
    (ispatty patty_1)

    ;; item capabilities (from predicates field)
    (iscuttable onion_1)
    (isfryableifcut onion_1)
    (iscuttable onion_2)
    (isfryableifcut onion_2)
    (iscookable patty_1)

    ;; spatial / placement predicates (items not held)
    (on cheese_1 table_4)
    (at cheese_1 table_4)

    (on bottombun_1 fryer_1)
    (at bottombun_1 fryer_1)

    (on topbun_1 table_1)
    (at topbun_1 table_1)

    (on onion_1 table_3)
    (at onion_1 table_3)

    (on onion_2 table_5)
    (at onion_2 table_5)

    (on patty_1 board_1)
    (at patty_1 board_1)

    ;; all items are clear (no item is atop another and none are held)
    (clear cheese_1)
    (clear bottombun_1)
    (clear topbun_1)
    (clear onion_1)
    (clear onion_2)
    (clear patty_1)

    ;; empty stations: those with no stack-level-0 item at them
    (empty table_2)
    (empty stove_1)

    ;; vacant stations: all except where the player is located (fryer_1)
    (vacant table_1)
    (vacant table_5)
    (vacant board_1)
    (vacant table_4)
    (vacant table_2)
    (vacant table_3)
    (vacant stove_1)

    ;; player hand state
    (nothing robot_1)

    ;; items start free
    (item-free cheese_1)
    (item-free bottombun_1)
    (item-free topbun_1)
    (item-free onion_1)
    (item-free onion_2)
    (item-free patty_1)
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
