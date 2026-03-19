(define (problem lettuce-chicken-sandwich)
  (:domain robotouille-async)
  (:objects
    table_1 table_2 table_3 board_1 stove_1 - station
    robot_1 - player
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

    ;; Player hands empty
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Items on stations
    (at bread_1 table_1)
    (on bread_1 table_1)
    (at bread_2 table_1)
    (atop bread_2 bread_1)
    (clear bread_2)

    (at chicken_1 table_2)
    (on chicken_1 table_2)
    (clear chicken_1)

    (at lettuce_1 table_3)
    (on lettuce_1 table_3)
    (clear lettuce_1)

    ;; Station emptiness
    ;; table_1 is not empty (bread_1/bread_2 stack)
    ;; table_2 has chicken_1 (not empty)
    ;; table_3 has lettuce_1 (not empty)
    ;; board_1 and stove_1 are empty
    (empty board_1)
    (empty stove_1)

    ;; Station vacancy
    ;; robot_1 is at table_1, so table_1 not vacant
    (vacant board_1)
    (vacant stove_1)
    (vacant table_2)
    (vacant table_3)

    ;; Processing stations are free
    (station_free board_1)
    (station_free stove_1)
  )
  (:goal (and
    ;; bread_1 is on a table (can be any table, but let's use table_1)
    (on bread_1 table_1)
    (at bread_1 table_1)
    ;; lettuce_1 is cut
    (iscut lettuce_1)
    ;; lettuce_1 is at a table (let's use table_1)
    (at lettuce_1 table_1)
    ;; chicken_1 is cooked
    (iscooked chicken_1)
    ;; chicken_1 is at a table (let's use table_1)
    (at chicken_1 table_1)
    ;; bread_2 is at a table (let's use table_1)
    (at bread_2 table_1)
    ;; stacking order: bread_1 on table, lettuce_1 atop bread_1, chicken_1 atop lettuce_1, bread_2 atop chicken_1
    (atop lettuce_1 bread_1)
    (atop chicken_1 lettuce_1)
    (atop bread_2 chicken_1)
    ;; bread_2 is clear (nothing on top)
    (clear bread_2)
  ))
)
