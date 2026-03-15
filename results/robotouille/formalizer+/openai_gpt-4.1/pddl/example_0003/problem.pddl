(define (problem lettuce_cheeseburger)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 table_4 stove_1 board_1 - station
    bottombun_1 topbun_1 cheese_1 lettuce_1 patty_1 - item
  )
  (:init
    ;; === Station identity ===
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (isstove stove_1)
    (isboard board_1)

    ;; === Item identity ===
    (isrobot robot_1)
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (ischeese cheese_1)
    (islettuce lettuce_1)
    (ispatty patty_1)

    ;; === Item capability flags ===
    (iscuttable lettuce_1)
    (iscookable patty_1)

    ;; === Spatial: player ===
    (loc robot_1 table_1) ; robot at (0,2) facing up, so facing (0,1) = table_1
    (nothing robot_1)
    (nocontainer robot_1)

    ;; === Spatial: items on stations ===
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

    ;; === Spatial: stations ===
    ;; table_1: has items
    ;; table_2: has cheese_1
    ;; table_3: has patty_1
    ;; table_4: has lettuce_1
    ;; stove_1: empty
    (empty stove_1)
    (empty board_1)
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant stove_1)
    (vacant board_1)
    ;; table_1 is occupied by robot_1

    ;; === Station free predicates for processing stations ===
    (station_free stove_1)
    (station_free board_1)
  )
  (:goal (and
    ;; bottombun_1 is on table (any table)
    (at bottombun_1 table_1)
    (on bottombun_1 table_1)
    ;; patty_1 is cooked
    (iscooked patty_1)
    ;; patty_1 is at table (any table)
    (at patty_1 table_1)
    ;; lettuce_1 is cut
    (iscut lettuce_1)
    ;; lettuce_1 is at table
    (at lettuce_1 table_1)
    ;; cheese_1 is at table
    (at cheese_1 table_1)
    ;; topbun_1 is at table
    (at topbun_1 table_1)
    ;; stacking order: bottombun_1 (bottom), then patty_1, then lettuce_1, then cheese_1, then topbun_1 (top)
    (atop patty_1 bottombun_1)
    (atop lettuce_1 patty_1)
    (atop cheese_1 lettuce_1)
    (atop topbun_1 cheese_1)
    ;; topbun_1 is clear
    (clear topbun_1)
  ))
)
