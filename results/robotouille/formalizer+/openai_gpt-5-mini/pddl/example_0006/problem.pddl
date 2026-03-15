(define (problem make_potato_soup)
  (:domain robotouille-async)
  (:objects
    table_1 stove_1 table_2 board_1 sink_1 table_3 - station
    robot_1 - player
    potato_1 - item
    pot_1 bowl_1 - container
    water_1 - water
  )

  (:init
    ;; player identity and location
    (isrobot robot_1)
    ;; player starts at (0,0) facing down -> facing_pos = (0,1) -> table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; station identities
    (istable table_1)
    (isstove stove_1)
    (istable table_2)
    (isboard board_1)
    (issink sink_1)
    (istable table_3)

    ;; station vacancy (table_1 is occupied by robot_1)
    (vacant stove_1)
    (vacant table_2)
    (vacant board_1)
    (vacant sink_1)
    (vacant table_3)

    ;; items
    (ispotato potato_1)

    ;; item spatial: potato_1 is on table_1
    (at potato_1 table_1)
    (on potato_1 table_1)
    (clear potato_1)

    ;; table emptiness
    (empty stove_1)
    (empty table_2)
    (empty board_1)
    (empty sink_1)
    (empty table_3)
    ;; table_1 is not empty because potato_1 is on it

    ;; processing capability flags
    (iscuttable potato_1)

    ;; station availability flags required by durative actions
    (station_free stove_1)
    (station_free board_1)

    ;; containers and water
    (container_at pot_1 sink_1)
    (container_on_station pot_1)
    (ispottype pot_1)

    (container_at bowl_1 table_3)
    (container_on_station bowl_1)
    (isbowltype bowl_1)

    (water_available water_1)

    ;; nothing else held
  )

  (:goal (and
    ;; soup served into a bowl on a table
    (container_at bowl_1 table_3)
    ;; water is in the bowl
    (in water_1 bowl_1)
    (has_water bowl_1 water_1)
    ;; water is boiling
    (isboiling water_1)
    ;; potato was added to the water
    (addedto potato_1 water_1)
    ;; potato must be cut as required
    (iscut potato_1)
  ))
)