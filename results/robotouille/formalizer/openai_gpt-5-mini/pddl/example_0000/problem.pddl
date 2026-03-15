(define (problem make_cheese_chicken_sandwich)
    (:domain robotouille-async)

    (:objects
        table_1 table_2 table_3 stove_1 - station
        robot_1 - player
        bread_1 bread_2 chicken_1 cheese_1 - item
    )

    (:init
        ;; station identities
        (istable table_1)
        (istable table_2)
        (istable table_3)
        (isstove stove_1)

        ;; player identity
        (isrobot robot_1)

        ;; item identities
        (isbread bread_1)
        (isbread bread_2)
        (ischicken chicken_1)
        (ischeese cheese_1)

        ;; item capability flags
        (iscookable chicken_1)

        ;; initial player location: player at (0,2) facing up -> facing_pos = (0,1) -> table_1
        (loc robot_1 table_1)
        (nothing robot_1)
        (nocontainer robot_1)

        ;; station vacancy (player at table_1 so it's not vacant)
        (vacant table_2)
        (vacant table_3)
        (vacant stove_1)

        ;; station_free flags
        (station_free table_1)
        (station_free table_2)
        (station_free table_3)
        (station_free stove_1)

        ;; initial items placement
        ;; bread_1 is bottom on table_1
        (at bread_1 table_1)
        (on bread_1 table_1)
        ;; bread_2 initially stacked on bread_1
        (at bread_2 table_1)
        (atop bread_2 bread_1)
        ;; chicken on table_2 (needs to be cooked later on stove)
        (at chicken_1 table_2)
        (on chicken_1 table_2)
        ;; cheese on table_3
        (at cheese_1 table_3)
        (on cheese_1 table_3)

        ;; clear predicates: topmost items
        (clear bread_2)
        (clear chicken_1)
        (clear cheese_1)
        ;; bread_1 is not clear because bread_2 is on it

        ;; stations that have no item directly on them
        ;; table_1 has bread_1 on it (not empty)
        ;; table_2 has chicken_1 on it (not empty)
        ;; table_3 has cheese_1 on it (not empty)
        (empty stove_1)
    )

    (:goal (and
        ;; final assembly on a table (we choose table_1)
        (at bread_1 table_1)
        (on bread_1 table_1)
        (iscooked chicken_1)
        (at chicken_1 table_1)
        (at cheese_1 table_1)
        (at bread_2 table_1)
        (clear bread_2)
        ;; stacking order: bread_2 on cheese_1, cheese_1 on chicken_1, chicken_1 on bread_1
        (atop bread_2 cheese_1)
        (atop cheese_1 chicken_1)
        (atop chicken_1 bread_1)
    ))
)