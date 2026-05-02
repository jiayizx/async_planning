(define (problem potato-soup-bowl)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 stove_1 board_1 sink_1 - station
    potato_1 - item
    pot_1 - container
    bowl_1 - container
    water_1 - water
  )
  (:init
    ;; Station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)

    ;; Player identity
    (isrobot robot_1)

    ;; Item identity
    (ispotato potato_1)

    ;; Item capability flags
    (iscuttable potato_1)
    (isfryableifcut potato_1)

    ;; Container identities
    (ispottype pot_1)
    (isbowltype bowl_1)

    ;; Player location: at (0,0) facing down (+Y), so facing (0,1) = table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Station vacancy
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant stove_1)
    (vacant board_1)
    (vacant sink_1)

    ;; Items on stations
    (at potato_1 table_1)
    (on potato_1 table_1)
    (clear potato_1)
    ;; table_1 is not empty (potato_1 is on it)
    (empty table_2)
    (empty table_3)
    (empty stove_1)
    (empty board_1)
    (empty sink_1)

    ;; Containers on stations
    (container_at pot_1 table_2)
    (container_on_station pot_1)
    (container_at bowl_1 table_3)
    (container_on_station bowl_1)

    ;; Water available for fill
    (water_available water_1)

    ;; All processing stations are initially free
    (station_free stove_1)
    (station_free board_1)
    (station_free sink_1)
  )
  (:goal (and
    (in water_1 bowl_1)
    (addedto potato_1 water_1)
    (isboiling water_1)
    (container_at bowl_1 table_3)
  ))
)
