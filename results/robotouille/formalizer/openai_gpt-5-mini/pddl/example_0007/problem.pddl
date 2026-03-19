(define (problem make_onion_soup)
  (:domain robotouille-async)
  (:objects
    ;; stations
    table_1 table_2 table_3 table_4 table_5 stove_1 board_1 sink_1 - station
    ;; player
    robot_1 - player
    ;; items
    onion_1 onion_2 onion_3 - item
    ;; containers
    pot_1 bowl_1 - container
    ;; water
    water_1 - water
  )

  (:init
    ;; Station identity
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)

    ;; Player identity
    (isrobot robot_1)

    ;; Item identity
    (isonion onion_1)
    (isonion onion_2)
    (isonion onion_3)

    ;; Container types
    (ispottype pot_1)
    (isbowltype bowl_1)

    ;; Item capabilities
    (iscuttable onion_1)
    (iscuttable onion_2)
    (iscuttable onion_3)

    ;; Player start: at (0,0) facing down -> facing station at (0,1) = table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Items located on stations (on = directly on station surface)
    (at onion_1 table_3)
    (on onion_1 table_3)
    (clear onion_1)

    (at onion_2 table_4)
    (on onion_2 table_4)
    (clear onion_2)

    (at onion_3 table_5)
    (on onion_3 table_5)
    (clear onion_3)

    ;; Containers on stations
    (container_at pot_1 sink_1)
    (container_on_station pot_1)
    (container_at bowl_1 table_2)
    (container_on_station bowl_1)

    ;; Water availability (to be used by fill)
    (water_available water_1)

    ;; Station vacancy: robot stands at table_1, others vacant
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant stove_1)
    (vacant board_1)
    (vacant sink_1)

    ;; Station free flags (processing stations initially free)
    (station_free stove_1)
    (station_free board_1)
    (station_free sink_1)
    ;; also mark tables as free (not required but harmless)
    (station_free table_1)
    (station_free table_2)
    (station_free table_3)
    (station_free table_4)
    (station_free table_5)

    ;; Empty: stations with no items on surface
    (empty table_1)
    (empty table_2)
    (empty stove_1)
    (empty board_1)
    (empty sink_1)
    ;; tables 3-5 are NOT empty because they have onions

  )

  (:goal (and
    ;; water boiled and in bowl
    (in water_1 bowl_1)
    (isboiling water_1)
    ;; all three onions cut and added to the water
    (iscut onion_1)
    (addedto onion_1 water_1)
    (iscut onion_2)
    (addedto onion_2 water_1)
    (iscut onion_3)
    (addedto onion_3 water_1)
    ;; bowl located on a table (as required)
    (container_at bowl_1 table_2)
  ))
)
