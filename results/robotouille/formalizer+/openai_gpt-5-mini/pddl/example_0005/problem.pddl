(define (problem robotouille-async-problem)
  (:domain robotouille-async)
  (:objects
    ;; stations
    table_1 table_2 table_3 table_4 table_5 - station
    stove_1 - station
    board_1 - station
    fryer_1 - station

    ;; player
    robot_1 - player

    ;; items
    bottombun_1 topbun_1 - item
    onion_1 onion_2 - item
    patty_1 - item
    cheese_1 - item
  )

  (:init
    ;; station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (isstove stove_1)
    (isboard board_1)
    (isfryer fryer_1)

    ;; player identity
    (isrobot robot_1)

    ;; item identities
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (isonion onion_1)
    (isonion onion_2)
    (ispatty patty_1)
    (ischeese cheese_1)

    ;; capability flags
    (iscuttable onion_1)
    (iscuttable onion_2)
    (isfryableifcut onion_1)
    (isfryableifcut onion_2)
    (iscookable patty_1)

    ;; processing station availability
    (station_free stove_1)
    (station_free board_1)
    (station_free fryer_1)

    ;; player start: at (0,2) facing up -> facing position (0,1) which is table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; station vacancy: player stands at table_1 so it's not vacant; others vacant
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant stove_1)
    (vacant board_1)
    (vacant fryer_1)

    ;; items on stations and stacking
    ;; table_1: bottombun_1 directly on table, topbun_1 stacked on bottombun_1
    (at bottombun_1 table_1)
    (on bottombun_1 table_1)
    (at topbun_1 table_1)
    (atop topbun_1 bottombun_1)
    (clear topbun_1)

    ;; table_2: onion_1
    (at onion_1 table_2)
    (on onion_1 table_2)
    (clear onion_1)

    ;; table_3: patty_1
    (at patty_1 table_3)
    (on patty_1 table_3)
    (clear patty_1)

    ;; table_4: onion_2
    (at onion_2 table_4)
    (on onion_2 table_4)
    (clear onion_2)

    ;; table_5: cheese_1
    (at cheese_1 table_5)
    (on cheese_1 table_5)
    (clear cheese_1)

    ;; mark emptiness for processing stations that currently have no direct item
    (empty stove_1)
    (empty board_1)
    (empty fryer_1)
  )

  (:goal (and
    ;; onion cheese burger on table_1: bottom bun on table_1, patty cooked and at table_1,
    ;; onion_1 cut and at table_1, cheese at table_1, topbun at table_1 and clear
    (on bottombun_1 table_1)
    (iscooked patty_1)
    (at patty_1 table_1)
    (iscut onion_1)
    (at onion_1 table_1)
    (at cheese_1 table_1)
    (at topbun_1 table_1)
    (clear topbun_1)

    ;; fried onion rings on separate table: onion_2 cut and fried and located at table_2
    (iscut onion_2)
    (isfried onion_2)
    (at onion_2 table_2)
  ))
)