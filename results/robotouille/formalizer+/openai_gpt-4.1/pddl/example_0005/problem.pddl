(define (problem onion-cheese-burger-and-onion-rings)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 table_4 table_5 stove_1 board_1 fryer_1 - station
    bottombun_1 topbun_1 onion_1 onion_2 patty_1 cheese_1 - item
  )
  (:init
    ;; === Station identity ===
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (isstove stove_1)
    (isboard board_1)
    (isfryer fryer_1)

    ;; === Item identity ===
    (isrobot robot_1)
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (isonion onion_1)
    (isonion onion_2)
    (ispatty patty_1)
    (ischeese cheese_1)

    ;; === Item capability flags ===
    (iscuttable onion_1)
    (iscuttable onion_2)
    (iscookable patty_1)
    (isfryableifcut onion_1)
    (isfryableifcut onion_2)

    ;; === Player location and state ===
    (loc robot_1 table_1)   ;; (0,2) facing up -> (0,1) = table_1
    (nothing robot_1)
    (nocontainer robot_1)

    ;; === Items on stations ===
    ;; table_1: bottombun_1, topbun_1 (stacked)
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

    ;; All other stations are empty
    (empty stove_1)
    (empty board_1)
    (empty fryer_1)
    ;; table_1, table_2, table_3, table_4, table_5 are not empty (have items)

    ;; All stations are vacant except where robot is
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant stove_1)
    (vacant board_1)
    (vacant fryer_1)
    ;; table_1 is occupied by robot_1

    ;; All processing stations are free
    (station_free stove_1)
    (station_free board_1)
    (station_free fryer_1)
  )
  (:goal (and
    ;; Burger on table_1: bottombun_1, patty_1 (cooked), onion_1 (cut, fried), cheese_1, topbun_1 (clear)
    (at bottombun_1 table_1)
    (at patty_1 table_1)
    (iscooked patty_1)
    (at onion_1 table_1)
    (iscut onion_1)
    (isfried onion_1)
    (at cheese_1 table_1)
    (at topbun_1 table_1)
    (clear topbun_1)
    ;; Stacking order: bottombun_1 at bottom, then patty_1, then onion_1, then cheese_1, then topbun_1
    (atop patty_1 bottombun_1)
    (atop onion_1 patty_1)
    (atop cheese_1 onion_1)
    (atop topbun_1 cheese_1)
    ;; Onion rings: onion_2 cut and fried, on table_2
    (at onion_2 table_2)
    (iscut onion_2)
    (isfried onion_2)
    (on onion_2 table_2)
    (clear onion_2)
  ))
)
