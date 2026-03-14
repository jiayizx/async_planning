(define (problem lettuce_cheeseburger)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 table_4 stove_1 board_1 - station
    bottombun_1 topbun_1 cheese_1 lettuce_1 patty_1 - item
  )
  (:init
    ;; Station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (isstove stove_1)
    (isboard board_1)

    ;; Item identities
    (isrobot robot_1)
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (ischeese cheese_1)
    (islettuce lettuce_1)
    (ispatty patty_1)

    ;; Item capability flags
    (iscuttable lettuce_1)
    (iscookable patty_1)

    ;; Player location: robot_1 at (0,2) facing up (-Y), so facing (0,1) => table_1
    (loc robot_1 table_1)

    ;; Player starts empty-handed
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Items on stations
    ;; table_1: bottombun_1 (bottom), topbun_1 (top)
    (at bottombun_1 table_1)
    (on bottombun_1 table_1)
    (atop topbun_1 bottombun_1)
    (at topbun_1 table_1)
    (clear topbun_1)

    ;; table_2: cheese_1
    (at cheese_1 table_2)
    (on cheese_1 table_2)
    (clear cheese_1)

    ;; table_3: patty_1
    (at patty_1 table_3)
    (on patty_1 table_3)
    (clear patty_1)

    ;; table_4: lettuce_1
    (at lettuce_1 table_4)
    (on lettuce_1 table_4)
    (clear lettuce_1)

    ;; All other stations are empty
    (empty stove_1)
    (empty board_1)

    ;; Player is at table_1, so table_1 is not vacant
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant stove_1)
    (vacant board_1)

    ;; Processing stations are free
    (station_free stove_1)
    (station_free board_1)
  )
  (:goal (and
    ;; bottombun_1 is on table_1
    (on bottombun_1 table_1)
    (at bottombun_1 table_1)
    ;; patty_1 is cooked and at table_1
    (iscooked patty_1)
    (at patty_1 table_1)
    ;; lettuce_1 is cut and at table_1
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    ;; cheese_1 is at table_1
    (at cheese_1 table_1)
    ;; topbun_1 is at table_1 and clear
    (at topbun_1 table_1)
    (clear topbun_1)
    ;; stacking order: bottombun_1 (bottom), then patty_1, then lettuce_1, then cheese_1, then topbun_1 (top)
    (atop patty_1 bottombun_1)
    (atop lettuce_1 patty_1)
    (atop cheese_1 lettuce_1)
    (atop topbun_1 cheese_1)
  ))
)
