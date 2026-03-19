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

    ;; Items on stations (initial state: all items are on their respective tables, not stacked)
    (at bread_1 table_1)
    (on bread_1 table_1)
    (clear bread_1)
    (at bread_2 table_1)
    (on bread_2 table_1)
    (clear bread_2)
    (at chicken_1 table_2)
    (on chicken_1 table_2)
    (clear chicken_1)
    (at cheese_1 table_3)
    (on cheese_1 table_3)
    (clear cheese_1)

    ;; Stations vacant except where robot_1 is
    (vacant table_2)
    (vacant table_3)
    (vacant stove_1)
    ;; table_1 is occupied by robot_1

    ;; Empty predicates: only stations with no items directly on them
    (empty stove_1)
    ;; table_2, table_3, table_1 have items on them

    ;; All processing stations are initially free
    (station_free stove_1)
  )
  (:goal (and
    ;; bread_1 is on table_1
    (at bread_1 table_1)
    ;; chicken_1 is cooked
    (iscooked chicken_1)
    ;; chicken_1 is at table_1
    (at chicken_1 table_1)
    ;; cheese_1 is at table_1
    (at cheese_1 table_1)
    ;; bread_2 is at table_1
    (at bread_2 table_1)
    ;; stacking order: bread_1 < chicken_1 < cheese_1 < bread_2
    (on bread_1 table_1)
    (atop chicken_1 bread_1)
    (atop cheese_1 chicken_1)
    (atop bread_2 cheese_1)
    ;; bread_2 is clear (top of stack)
    (clear bread_2)
  ))
)
