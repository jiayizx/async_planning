(define (problem lettuce-cheeseburger)
  (:domain robotouille-async)
  (:objects
    ;; stations
    table_1 table_2 table_3 table_4 - station
    stove_1 - station
    board_1 - station

    ;; player
    robot_1 - player

    ;; items
    bottombun_1 topbun_1 cheese_1 lettuce_1 patty_1 - item
  )

  (:init
    ;; station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (isstove stove_1)
    (isboard board_1)

    ;; player identity
    (isrobot robot_1)

    ;; item identities
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (ischeese cheese_1)
    (islettuce lettuce_1)
    (ispatty patty_1)

    ;; capability flags
    (iscuttable lettuce_1)
    (iscookable patty_1)

    ;; initial player location: at (0,2) facing up -> facing station at (0,1) = table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; items: positions and stacks
    ;; bottombun is directly on table_1 (bottom), topbun is atop bottombun
    (at bottombun_1 table_1)
    (on bottombun_1 table_1)
    (at topbun_1 table_1)
    (atop topbun_1 bottombun_1)

    ;; other items at their given stations
    (at cheese_1 table_2)
    (on cheese_1 table_2)

    (at patty_1 table_3)
    (on patty_1 table_3)

    (at lettuce_1 table_4)
    (on lettuce_1 table_4)

    ;; clear predicates: topmost items (topbun, cheese, patty, lettuce)
    (clear topbun_1)
    (clear cheese_1)
    (clear patty_1)
    (clear lettuce_1)

    ;; bottom items that are covered are not clear (bottombun is under topbun) -- omitted since default is false

    ;; station vacancy: robot at table_1 so table_1 not vacant; others vacant
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant stove_1)
    (vacant board_1)
    ;; table_1 is not vacant (robot there) -- omitted since default is false

    ;; empty stations: station has no item directly on surface
    ;; table_1 has bottombun directly on it -> not empty
    ;; table_2 has cheese on -> not empty
    ;; table_3 has patty on -> not empty
    ;; table_4 has lettuce on -> not empty
    (empty board_1)
    (empty stove_1)

    ;; station_free for processing stations
    (station_free stove_1)
    (station_free board_1)
    (station_free table_1)
    (station_free table_2)
    (station_free table_3)
    (station_free table_4)
  )

  (:goal (and
    ;; bottombun is on table_1
    (on bottombun_1 table_1)

    ;; patty is cooked and at table_1
    (iscooked patty_1)
    (at patty_1 table_1)

    ;; lettuce is cut and at table_1
    (iscut lettuce_1)
    (at lettuce_1 table_1)

    ;; cheese at table_1
    (at cheese_1 table_1)

    ;; topbun at table_1 and clear
    (at topbun_1 table_1)
    (clear topbun_1)

    ;; stacking order under topbun: bottombun -> cheese -> lettuce -> patty -> topbun
    (atop cheese_1 bottombun_1)
    (atop lettuce_1 cheese_1)
    (atop patty_1 lettuce_1)
    (atop topbun_1 patty_1)
  ))
)
