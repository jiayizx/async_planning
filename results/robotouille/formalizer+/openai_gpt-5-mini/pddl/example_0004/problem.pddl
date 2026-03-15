(define (problem robotouille-async-prob)
  (:domain robotouille-async)

  (:objects
    ; stations
    table_1 table_2 table_3 table_4 - station
    stove_1 - station
    board_1 - station
    fryer_1 - station

    ; player
    robot_1 - player

    ; items
    bottombun_1 topbun_1 potato_1 tomato_1 patty_1 - item

    ; no containers or water used in this problem
  )

  (:init
    ; station types
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (isstove stove_1)
    (isboard board_1)
    (isfryer fryer_1)

    ; player identity
    (isrobot robot_1)

    ; item identities
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (ispotato potato_1)
    (istomato tomato_1)
    (ispatty patty_1)

    ; capability flags
    (iscuttable potato_1)
    (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)

    ; initial item states (none processed yet)
    ; (iscut ...) (iscooked ...) (isfried ...) are false initially, so not listed

    ; player location: player at (0,2) facing up -> facing_pos = (0,1) which is table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ; spatial: items at stations and stacking
    ; table_1 has both bottom bun and top bun, with topbun atop bottombun
    (at bottombun_1 table_1)
    (on bottombun_1 table_1)
    (at topbun_1 table_1)
    (atop topbun_1 bottombun_1)
    (clear topbun_1)
    ; bottombun_1 is not clear (something on it) so no (clear bottombun_1)

    ; potato at table_2
    (at potato_1 table_2)
    (on potato_1 table_2)
    (clear potato_1)

    ; patty at table_3
    (at patty_1 table_3)
    (on patty_1 table_3)
    (clear patty_1)

    ; tomato at table_4
    (at tomato_1 table_4)
    (on tomato_1 table_4)
    (clear tomato_1)

    ; empty predicates: stations with NO items on their surface
    (empty stove_1)
    (empty board_1)
    (empty fryer_1)

    ; stations that do have items are not declared empty (table_1..4 have items)

    ; vacant: robot is at table_1 so that station is not vacant; others vacant
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant stove_1)
    (vacant board_1)
    (vacant fryer_1)

    ; station_free should be true for all stations initially so processing can start
    (station_free table_1)
    (station_free table_2)
    (station_free table_3)
    (station_free table_4)
    (station_free stove_1)
    (station_free board_1)
    (station_free fryer_1)
  )

  (:goal (and
    ; burger on table_1: bottom bun on table_1
    (at bottombun_1 table_1)

    ; patty cooked and at table_1
    (iscooked patty_1)
    (at patty_1 table_1)

    ; tomato cut and at table_1
    (iscut tomato_1)
    (at tomato_1 table_1)

    ; topbun at table_1 and clear
    (at topbun_1 table_1)
    (clear topbun_1)

    ; potato is cut and fried and located on table_2
    (iscut potato_1)
    (isfried potato_1)
    (at potato_1 table_2)
  ))
)
