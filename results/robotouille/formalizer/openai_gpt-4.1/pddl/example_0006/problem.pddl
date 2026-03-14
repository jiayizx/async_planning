(define (problem potato-soup-bowl)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 stove_1 table_2 board_1 sink_1 table_3 - station
    potato_1 - item
    pot_1 - container
    bowl_1 - container
    water_1 - water
  )
  (:init
    ;; Station identities
    (istable table_1)
    (isstove stove_1)
    (istable table_2)
    (isboard board_1)
    (issink sink_1)
    (istable table_3)

    ;; Item identities
    (ispotato potato_1)
    (iscuttable potato_1)
    (isfryableifcut potato_1)

    ;; Container identities
    (ispottype pot_1)
    (isbowltype bowl_1)

    ;; Player identity and location
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Station vacancy
    (vacant stove_1)
    (vacant table_2)
    (vacant board_1)
    (vacant sink_1)
    (vacant table_3)
    ;; robot_1 is at table_1, so not vacant

    ;; Item spatial predicates
    (at potato_1 table_1)
    (on potato_1 table_1)
    (clear potato_1)
    ;; potato_1 is the only item on table_1

    ;; Station emptiness
    (empty stove_1)
    (empty table_2)
    (empty board_1)
    (empty sink_1)
    (empty table_3)
    ;; table_1 has potato_1 on it, so not empty

    ;; Container locations
    (container_at pot_1 table_2)
    (container_on_station pot_1)
    (container_at bowl_1 table_3)
    (container_on_station bowl_1)

    ;; Water availability
    (water_available water_1)

    ;; Station free flags
    (station_free stove_1)
    (station_free board_1)
    (station_free sink_1)
    (station_free table_1)
    (station_free table_2)
    (station_free table_3)
  )
  (:goal (and
    (in water_1 bowl_1)
    (addedto potato_1 water_1)
    (isboiling water_1)
    (container_at bowl_1 table_3)
  ))
)
