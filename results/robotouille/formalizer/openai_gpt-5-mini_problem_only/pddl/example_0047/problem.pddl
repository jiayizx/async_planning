(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 - station
    stove_1 - station
    fryer_1 - station
    board_1 - station
    robot_1 - player
    bottombun_1 topbun_1 onion_1 onion_2 patty_1 cheese_1 - item
  )

  (:init
    ;--- station identity ---
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    (isstove stove_1)
    (isfryer fryer_1)
    (isboard board_1)

    ;--- player identity ---
    (isrobot robot_1)

    ;--- item type identities ---
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (isonion onion_1) (isonion onion_2)
    (ispatty patty_1)
    (ischeese cheese_1)

    ;--- player location ---
    (loc robot_1 table_1)

    ;--- item capability predicates ---
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable onion_2) (isfryableifcut onion_2)
    (iscookable patty_1)

    ;--- item spatial state (on/at for stack-level 0 items) ---
    (on bottombun_1 table_1) (at bottombun_1 table_1)
    (on topbun_1 fryer_1) (at topbun_1 fryer_1)
    (on onion_1 stove_1) (at onion_1 stove_1)
    (on onion_2 board_1) (at onion_2 board_1)
    (on patty_1 table_2) (at patty_1 table_2)
    (on cheese_1 table_3) (at cheese_1 table_3)

    ;--- clear: none are stacked on top of another and none are held ---
    (clear bottombun_1) (clear topbun_1) (clear onion_1) (clear onion_2)
    (clear patty_1) (clear cheese_1)

    ;--- empty stations (no item with stack-level 0 at them) ---
    (empty table_4)

    ;--- vacant stations (not occupied by a player) ---
    (vacant fryer_1) (vacant stove_1) (vacant board_1)
    (vacant table_2) (vacant table_3) (vacant table_4)

    ;--- player hand state ---
    (nothing robot_1)

    ;--- all items start free (not being processed) ---
    (item-free bottombun_1) (item-free topbun_1) (item-free onion_1)
    (item-free onion_2) (item-free patty_1) (item-free cheese_1)
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