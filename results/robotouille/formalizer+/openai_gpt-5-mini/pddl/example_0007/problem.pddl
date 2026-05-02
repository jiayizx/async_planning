(define (problem make_onion_soup)
    (:domain robotouille-async)
    (:objects
        table_1 table_2 table_3 table_4 table_5 - station
        stove_1 - station
        board_1 - station
        sink_1 - station

        robot_1 - player

        onion_1 onion_2 onion_3 - item

        pot_1 bowl_1 - container

        water_1 - water
    )

    (:init
        ;; station identities
        (istable table_1)
        (istable table_2)
        (istable table_3)
        (istable table_4)
        (istable table_5)
        (isstove stove_1)
        (isboard board_1)
        (issink sink_1)

        ;; player identity and initial location
        (isrobot robot_1)
        ;; Player at (0,0) facing down -> facing position (0,1) which is table_1
        (loc robot_1 table_1)

        ;; vacant: true for stations with no player
        (vacant table_2)
        (vacant table_3)
        (vacant table_4)
        (vacant table_5)
        (vacant stove_1)
        (vacant board_1)
        (vacant sink_1)
        ;; table_1 is occupied by player, so no (vacant table_1)

        ;; items identities
        (isonion onion_1)
        (isonion onion_2)
        (isonion onion_3)

        ;; item capability flags
        (iscuttable onion_1)
        (iscuttable onion_2)
        (iscuttable onion_3)

        ;; items are on their tables
        (at onion_1 table_3)
        (on onion_1 table_3)
        (clear onion_1)

        (at onion_2 table_4)
        (on onion_2 table_4)
        (clear onion_2)

        (at onion_3 table_5)
        (on onion_3 table_5)
        (clear onion_3)

        ;; station surfaces empty where no items are directly on them
        (empty table_1)
        (empty table_2)
        (empty stove_1)
        (empty board_1)
        (empty sink_1)

        ;; containers
        (ispottype pot_1)
        (isbowltype bowl_1)

        ;; place bowl on table_2 (goal requires bowl on a table)
        (container_at bowl_1 table_2)
        (container_on_station bowl_1)

        ;; place pot at sink to allow filling
        (container_at pot_1 sink_1)
        (container_on_station pot_1)

        ;; player initially has empty hands and no container
        (nothing robot_1)
        (nocontainer robot_1)

        ;; water
        (water_available water_1)

        ;; station free flags for processing stations
        (station_free stove_1)
        (station_free board_1)
    )

    (:goal (and
        ;; soup requirements
        (in water_1 bowl_1)
        (isboiling water_1)

        ;; three cut onions added to the water
        (iscut onion_1)
        (addedto onion_1 water_1)
        (iscut onion_2)
        (addedto onion_2 water_1)
        (iscut onion_3)
        (addedto onion_3 water_1)

        ;; bowl is on a table
        (container_at bowl_1 table_2)
    ))
)
