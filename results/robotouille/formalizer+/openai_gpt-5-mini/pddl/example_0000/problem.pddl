(define (problem robotouille-prob)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 stove_1 - station
    bread_1 bread_2 chicken_1 cheese_1 - item
  )

  (:init
    ;; player identity
    (isrobot robot_1)

    ;; station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (isstove stove_1)

    ;; item identities
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (ischeese cheese_1)

    ;; capability flags
    (iscookable chicken_1)

    ;; player location: at (0,2) facing up => facing position (0,1) which is table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; station vacancies (robot at table_1 so it's not vacant)
    (vacant table_2)
    (vacant table_3)
    (vacant stove_1)
    ;; table_1 is occupied by the robot

    ;; station_free for all stations (processing stations available initially)
    (station_free table_1)
    (station_free table_2)
    (station_free table_3)
    (station_free stove_1)

    ;; Initial placement of items
    ;; bread_1 and bread_2 are on table_1
    (at bread_1 table_1)
    (on bread_1 table_1)
    (clear bread_1)

    (at bread_2 table_1)
    (on bread_2 table_1)
    (clear bread_2)

    ;; chicken on table_2
    (at chicken_1 table_2)
    (on chicken_1 table_2)
    (clear chicken_1)

    ;; cheese on table_3
    (at cheese_1 table_3)
    (on cheese_1 table_3)
    (clear cheese_1)

    ;; station empty flags: a station is empty only if no item directly on its surface
    ;; table_1 has bread_1 and bread_2 so not empty
    ;; table_2 has chicken_1 so not empty
    ;; table_3 has cheese_1 so not empty
    (empty stove_1)

    ;; No containers or water involved in this problem (none declared)
  )

  (:goal (and
    ;; bread_1 is on the table (we choose table_1 as the sandwich table)
    (at bread_1 table_1)
    (on bread_1 table_1)

    ;; chicken is cooked and at the same table
    (iscooked chicken_1)
    (at chicken_1 table_1)

    ;; cheese is at the same table
    (at cheese_1 table_1)

    ;; bread_2 is at the table and has nothing on top of it
    (at bread_2 table_1)
    (clear bread_2)

    ;; the three items bread_1, chicken_1, cheese_1 are stacked (bread_1 bottom)
    (atop chicken_1 bread_1)
    (atop cheese_1 chicken_1)
  ))
)
