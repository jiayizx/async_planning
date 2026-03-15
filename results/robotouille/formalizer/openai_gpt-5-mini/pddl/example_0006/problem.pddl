(define (problem make_potato_soup)
    (:domain robotouille-async)

    (:objects
        table_1 table_2 table_3 - station
        stove_1 board_1 sink_1 - station
        robot_1 - player
        potato_1 - item
        pot_1 bowl_1 - container
        water_1 - water
    )

    (:init
        ;; station identities
        (istable table_1)
        (istable table_2)
        (istable table_3)
        (isstove stove_1)
        (isboard board_1)
        (issink sink_1)

        ;; player identity
        (isrobot robot_1)

        ;; item identities
        (ispotato potato_1)

        ;; container types
        (ispottype pot_1)
        (isbowltype bowl_1)

        ;; capability flags
        (iscuttable potato_1)

        ;; initial item states (none processed yet)
        ;; (iscut potato_1) is not true initially

        ;; spatial: player starts at (0,0) facing down -> facing station is (0,1) = table_1
        (loc robot_1 table_1)
        (nothing robot_1)
        (nocontainer robot_1)

        ;; spatial: item locations
        (at potato_1 table_1)
        (on potato_1 table_1)
        (clear potato_1)

        ;; containers on stations
        (container_at pot_1 sink_1)
        (container_on_station pot_1)
        (container_at bowl_1 table_3)
        (container_on_station bowl_1)

        ;; water availability (water object exists and is available to be filled)
        (water_available water_1)

        ;; station free flags (all stations free initially)
        (station_free table_1)
        (station_free table_2)
        (station_free table_3)
        (station_free stove_1)
        (station_free board_1)
        (station_free sink_1)

        ;; empty: stations with no items on their surface
        ;; table_1 has potato_1 so not empty. Others have no items.
        (empty table_2)
        (empty table_3)
        (empty stove_1)
        (empty board_1)
        (empty sink_1)

        ;; vacant: stations without the player
        (vacant table_2)
        (vacant table_3)
        (vacant stove_1)
        (vacant board_1)
        (vacant sink_1)
        ;; table_1 is not vacant because player is there

        ;; containers do not yet have water
        ;; has_water predicates false initially
    )

    (:goal (and
        (in water_1 bowl_1)
        (addedto potato_1 water_1)
        (isboiling water_1)
        (container_at bowl_1 table_3)
        (iscut potato_1)
    ))
)
