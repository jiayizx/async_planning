(define (problem cheese-chicken-sandwich)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 stove_1 - station
    bread_1 bread_2 chicken_1 cheese_1 - item
  )
  (:init
    ;; Station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (isstove stove_1)

    ;; Item identities
    (isrobot robot_1)
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (ischeese cheese_1)

    ;; Item capability flags
    (iscookable chicken_1)

    ;; Player location: robot_1 at (0,2) facing up (-Y), so facing (0,1) => table_1
    (loc robot_1 table_1)

    ;; Player hands empty
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Station vacancy (robot_1 at table_1, others vacant)
    (vacant stove_1)
    (vacant table_2)
    (vacant table_3)

    ;; Items on stations
    (at bread_1 table_1)
    (on bread_1 table_1)
    (at bread_2 table_1)
    (on bread_2 table_1)
    (at chicken_1 table_2)
    (on chicken_1 table_2)
    (at cheese_1 table_3)
    (on cheese_1 table_3)

    ;; Each item is clear (nothing stacked at start)
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    (clear cheese_1)

    ;; Table_1 is not empty (has bread_1 and bread_2), table_2 and table_3 not empty, stove_1 is empty
    (empty stove_1)

    ;; Station processing flags
    (station_free stove_1)
    (station_free table_1)
    (station_free table_2)
    (station_free table_3)
  )
  (:goal (and
    ;; Sandwich stack: bread_1 (bottom), then cooked chicken_1, then cheese_1, then bread_2 (top)
    (at bread_1 table_1)
    (on bread_1 table_1)
    (at chicken_1 table_1)
    (atop chicken_1 bread_1)
    (iscooked chicken_1)
    (at cheese_1 table_1)
    (atop cheese_1 chicken_1)
    (at bread_2 table_1)
    (atop bread_2 cheese_1)
    (clear bread_2)
  ))
)
