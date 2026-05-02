(define (problem robotouille-problem)
    (:domain robotouille-async)

    (:objects
        ;; player
        robot_1 - player

        ;; stations
        fryer_1 stove_1 table_1 board_1 sink_1
        table_2 table_3 table_4 table_5 table_6
        table_7 table_8 table_9 table_10 - station

        ;; items
        onion_1 onion_2 onion_3 potato_1 lettuce_1 bottombun_1 topbun_1 bread_1 bread_2 chicken_1 - item

        ;; containers and water
        bowl_1 - container
        water_1 - water
    )

    (:init
        ;; Station types
        (isfryer fryer_1)
        (isstove stove_1)
        (istable table_1)
        (isboard board_1)
        (issink sink_1)
        (istable table_2)
        (istable table_3)
        (istable table_4)
        (istable table_5)
        (istable table_6)
        (istable table_7)
        (istable table_8)
        (istable table_9)
        (istable table_10)

        ;; Player identity
        (isrobot robot_1)

        ;; Item identity predicates
        (isonion onion_1)
        (isonion onion_2)
        (isonion onion_3)
        (ispotato potato_1)
        (islettuce lettuce_1)
        (isbottombun bottombun_1)
        (istopbun topbun_1)
        (isbread bread_1)
        (isbread bread_2)
        (ischicken chicken_1)

        ;; Capability flags
        (iscuttable onion_1)
        (isfryableifcut onion_1)
        (iscuttable potato_1)
        (isfryableifcut potato_1)
        (iscuttable onion_2)
        (isfryableifcut onion_2)
        (iscuttable lettuce_1)
        (iscuttable onion_3)
        (isfryableifcut onion_3)
        (iscookable chicken_1)

        ;; Player location: at (0,0) facing down -> facing position (0,1) => fryer_1
        (loc robot_1 fryer_1)
        (nothing robot_1)
        (nocontainer robot_1)

        ;; Items on stations (at/on/stacking)
        (at onion_1 table_2)
        (on onion_1 table_2)
        (clear onion_1)

        (at potato_1 table_3)
        (on potato_1 table_3)
        (clear potato_1)

        (at onion_2 table_4)
        (on onion_2 table_4)
        (clear onion_2)

        (at lettuce_1 table_5)
        (on lettuce_1 table_5)
        (clear lettuce_1)

        (at bottombun_1 table_6)
        (on bottombun_1 table_6)
        (at topbun_1 table_6)
        (atop topbun_1 bottombun_1)
        (clear topbun_1)

        (at bread_1 table_7)
        (on bread_1 table_7)
        (at bread_2 table_7)
        (atop bread_2 bread_1)
        (clear bread_2)

        (at onion_3 table_8)
        (on onion_3 table_8)
        (clear onion_3)

        (at chicken_1 table_9)
        (on chicken_1 table_9)
        (clear chicken_1)

        ;; Container initial placement: bowl on table_1
        (container_at bowl_1 table_1)
        (container_on_station bowl_1)
        (isbowltype bowl_1)

        ;; Water availability
        (water_available water_1)

        ;; Station free flags
        (station_free fryer_1)
        (station_free stove_1)
        (station_free board_1)
        (station_free sink_1)
        (station_free table_1)
        (station_free table_2)
        (station_free table_3)
        (station_free table_4)
        (station_free table_5)
        (station_free table_6)
        (station_free table_7)
        (station_free table_8)
        (station_free table_9)
        (station_free table_10)

        ;; Vacant flags (fryer_1 occupied by player)
        (vacant stove_1)
        (vacant table_1)
        (vacant board_1)
        (vacant sink_1)
        (vacant table_2)
        (vacant table_3)
        (vacant table_4)
        (vacant table_5)
        (vacant table_6)
        (vacant table_7)
        (vacant table_8)
        (vacant table_9)
        (vacant table_10)

        ;; Empty surfaces
        (empty fryer_1)
        (empty stove_1)
        (empty board_1)
        (empty sink_1)
        (empty table_1)
        (empty table_10)
    )

    (:goal (and
        ;; Soup goals
        (container_at bowl_1 table_1)
        (has_water bowl_1 water_1)
        (in water_1 bowl_1)
        (isboiling water_1)
        (addedto onion_1 water_1)
        (addedto potato_1 water_1)

        ;; Burger on table_2
        (at bottombun_1 table_2)
        (iscut lettuce_1)
        (at lettuce_1 table_2)
        (iscut onion_2)
        (isfried onion_2)
        (at onion_2 table_2)
        (at topbun_1 table_2)
        (clear topbun_1)

        ;; Sandwich on table_3
        (at bread_1 table_3)
        (iscooked chicken_1)
        (at chicken_1 table_3)
        (iscut onion_3)
        (at onion_3 table_3)
        (at bread_2 table_3)
        (clear bread_2)
    ))
)
