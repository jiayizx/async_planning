(define (problem tomato-burger-fries)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 table_4 stove_1 board_1 fryer_1 - station
    bottombun_1 topbun_1 potato_1 tomato_1 patty_1 - item
  )
  (:init
    ;; Station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (isstove stove_1)
    (isboard board_1)
    (isfryer fryer_1)

    ;; Item identities
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (ispotato potato_1)
    (istomato tomato_1)
    (ispatty patty_1)
    (isrobot robot_1)

    ;; Item capability flags
    (iscuttable potato_1)
    (iscuttable tomato_1)
    (isfryableifcut potato_1)
    (iscookable patty_1)

    ;; Player location: robot_1 at (0,2) facing up (-Y), so facing (0,1) => table_1
    (loc robot_1 table_1)

    ;; Player hands empty
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Items on stations
    (at bottombun_1 table_1)
    (at topbun_1 table_1)
    (at potato_1 table_2)
    (at tomato_1 table_4)
    (at patty_1 table_3)

    ;; Stacking: bottombun_1 is on table_1, topbun_1 is on bottombun_1
    (on bottombun_1 table_1)
    (atop topbun_1 bottombun_1)
    (clear topbun_1)
    ;; bottombun_1 is not clear (topbun_1 is on it)
    ;; table_1 is not empty (bottombun_1 is on it)
    ;; table_1 is not vacant (robot_1 is at table_1)

    ;; potato_1 is on table_2
    (on potato_1 table_2)
    (clear potato_1)
    (empty table_3)
    (empty table_4)
    (empty stove_1)
    (empty board_1)
    (empty fryer_1)

    ;; tomato_1 is on table_4
    (on tomato_1 table_4)
    (clear tomato_1)

    ;; patty_1 is on table_3
    (on patty_1 table_3)
    (clear patty_1)

    ;; Station vacancy
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant stove_1)
    (vacant board_1)
    (vacant fryer_1)
    ;; table_1 is occupied by robot_1

    ;; Station free flags for processing stations
    (station_free stove_1)
    (station_free board_1)
    (station_free fryer_1)
  )
  (:goal (and
    (on bottombun_1 table_1)
    (at patty_1 table_1)
    (iscooked patty_1)
    (at tomato_1 table_1)
    (iscut tomato_1)
    (at topbun_1 table_1)
    (clear topbun_1)
    (iscut potato_1)
    (isfried potato_1)
    (on potato_1 table_2)
  ))
)
