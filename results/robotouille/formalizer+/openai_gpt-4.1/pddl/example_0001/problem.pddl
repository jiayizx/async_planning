(define (problem lettuce-chicken-sandwich)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 board_1 stove_1 - station
    bread_1 bread_2 chicken_1 lettuce_1 - item
  )
  (:init
    ;; Station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (isboard board_1)
    (isstove stove_1)

    ;; Item identities
    (isrobot robot_1)
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (islettuce lettuce_1)

    ;; Item capability flags
    (iscookable chicken_1)
    (iscuttable lettuce_1)

    ;; Player location: robot_1 at (0,2) facing up (-Y), so facing (0,1) => table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Station vacancy
    (vacant board_1)
    (vacant stove_1)
    (vacant table_2)
    (vacant table_3)
    ;; robot_1 is at table_1, so table_1 is not vacant

    ;; Items on stations
    (at bread_1 table_1)
    (on bread_1 table_1)
    (at bread_2 table_1)
    (on bread_2 table_1)
    (at chicken_1 table_2)
    (on chicken_1 table_2)
    (at lettuce_1 table_3)
    (on lettuce_1 table_3)

    ;; Clear predicates (all items are alone on their stations)
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    (clear lettuce_1)

    ;; Empty predicates (no station is empty since all have items)
    ;; table_1: bread_1 and bread_2 (both on table_1, but both are 'on' so not empty)
    ;; table_2: chicken_1
    ;; table_3: lettuce_1
    ;; board_1, stove_1: empty
    (empty board_1)
    (empty stove_1)

    ;; No stacks yet
    ;; No atop predicates

    ;; Station free predicates for processing stations
    (station_free board_1)
    (station_free stove_1)
  )
  (:goal (and
    ;; Sandwich stack: bread_1, chicken_1, lettuce_1, bread_2 (from bottom to top)
    (on bread_1 table_1)
    (atop chicken_1 bread_1)
    (atop lettuce_1 chicken_1)
    (atop bread_2 lettuce_1)
    (clear bread_2)
    (iscooked chicken_1)
    (iscut lettuce_1)
    (at bread_1 table_1)
    (at chicken_1 table_1)
    (at lettuce_1 table_1)
    (at bread_2 table_1)
  ))
)
