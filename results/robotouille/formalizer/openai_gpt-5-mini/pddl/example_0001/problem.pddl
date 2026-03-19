(define (problem sandwich_task)
  (:domain robotouille-async)

  (:objects
    ;; stations
    table_1 table_2 table_3 board_1 stove_1 - station

    ;; player
    robot_1 - player

    ;; items
    bread_1 bread_2 chicken_1 lettuce_1 - item

    ;; no containers or water used in this scenario
  )

  (:init
    ;; station identities
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

    ;; spatial: player starts at (0,2) facing up -> facing_pos (0,1) which is table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; items on stations (at and on). bread_1 and bread_2 on table_1, chicken on table_2, lettuce on table_3
    (at bread_1 table_1)
    (on bread_1 table_1)
    (clear bread_1)

    (at bread_2 table_1)
    (on bread_2 table_1)
    (clear bread_2)

    (at chicken_1 table_2)
    (on chicken_1 table_2)
    (clear chicken_1)

    (at lettuce_1 table_3)
    (on lettuce_1 table_3)
    (clear lettuce_1)

    ;; station empty flags: table_1, table_2, table_3 are not empty (have items). board_1 and stove_1 are empty
    (empty board_1)
    (empty stove_1)

    ;; vacant stations: robot at table_1, so other stations vacant
    (vacant table_2)
    (vacant table_3)
    (vacant board_1)
    (vacant stove_1)

    ;; station_free: all stations initially free
    (station_free table_1)
    (station_free table_2)
    (station_free table_3)
    (station_free board_1)
    (station_free stove_1)

    ;; water/container predicates not used in this problem
  )

  (:goal (and
    ;; bread_1 is on a table (on table_1)
    (on bread_1 table_1)

    ;; lettuce is cut and at the table
    (iscut lettuce_1)
    (at lettuce_1 table_1)

    ;; chicken is cooked and at the table
    (iscooked chicken_1)
    (at chicken_1 table_1)

    ;; bread_2 is at the table and has nothing on top
    (at bread_2 table_1)
    (clear bread_2)
  ))
)