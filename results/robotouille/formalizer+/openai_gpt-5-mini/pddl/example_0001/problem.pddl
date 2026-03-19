(define (problem robotouille-prob-1)
  (:domain robotouille-async)
  (:objects
    table_1 table_2 table_3 - station
    board_1 stove_1 - station
    robot_1 - player
    bread_1 bread_2 chicken_1 lettuce_1 - item
  )

  (:init
    ;; station types
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (isboard board_1)
    (isstove stove_1)

    ;; player identity
    (isrobot robot_1)

    ;; item identities
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (islettuce lettuce_1)

    ;; capability flags
    (iscookable chicken_1)
    (iscuttable lettuce_1)

    ;; player location: at (0,2) facing up -> facing pos (0,1) which is table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; items: bread_2 directly on table_1, bread_1 stacked on bread_2
    (at bread_2 table_1)
    (on bread_2 table_1)
    (at bread_1 table_1)
    (atop bread_1 bread_2)

    ;; chicken and lettuce initial positions
    (at chicken_1 table_2)
    (on chicken_1 table_2)
    (at lettuce_1 table_3)
    (on lettuce_1 table_3)

    ;; clear: topmost items
    (clear bread_1)
    (clear chicken_1)
    (clear lettuce_1)

    ;; vacancies: robot occupies table_1, other stations vacant
    (vacant table_2)
    (vacant table_3)
    (vacant board_1)
    (vacant stove_1)

    ;; empties for stations with no direct-on items
    (empty board_1)
    (empty stove_1)

    ;; station_free flags for all stations
    (station_free table_1)
    (station_free table_2)
    (station_free table_3)
    (station_free board_1)
    (station_free stove_1)
  )

  (:goal (and
    ;; bread_1 is on a table (table_1)
    (on bread_1 table_1)

    ;; lettuce is cut and on table_1
    (iscut lettuce_1)
    (at lettuce_1 table_1)

    ;; chicken is cooked and on table_1
    (iscooked chicken_1)
    (at chicken_1 table_1)

    ;; bread_2 is on table_1 and clear (nothing on top)
    (on bread_2 table_1)
    (clear bread_2)
  ))
)
