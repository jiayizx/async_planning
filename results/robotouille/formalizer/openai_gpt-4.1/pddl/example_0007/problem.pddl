(define (problem onion-soup-3)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 table_4 table_5 stove_1 board_1 sink_1 - station
    onion_1 onion_2 onion_3 - item
    pot_1 - container
    bowl_1 - container
    water_1 - water
  )
  (:init
    ;; Station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)

    ;; Item identities
    (isrobot robot_1)
    (isonion onion_1)
    (isonion onion_2)
    (isonion onion_3)

    ;; Item capability flags
    (iscuttable onion_1)
    (iscuttable onion_2)
    (iscuttable onion_3)
    (isfryableifcut onion_1)
    (isfryableifcut onion_2)
    (isfryableifcut onion_3)

    ;; Container identities
    (ispottype pot_1)
    (isbowltype bowl_1)

    ;; Player location: robot_1 at (0,0) facing down (+Y), so facing (0,1) => table_1
    (loc robot_1 table_1)

    ;; Player hands empty
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Items on stations
    (at onion_1 table_3)
    (on onion_1 table_3)
    (clear onion_1)
    (at onion_2 table_4)
    (on onion_2 table_4)
    (clear onion_2)
    (at onion_3 table_5)
    (on onion_3 table_5)
    (clear onion_3)

    ;; Tables with no items
    (empty table_1)
    (empty table_2)
    (empty table_3)
    (empty table_4)
    (empty table_5)
    (empty stove_1)
    (empty board_1)
    (empty sink_1)

    ;; All stations vacant except where robot_1 is
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant stove_1)
    (vacant board_1)
    (vacant sink_1)

    ;; Containers on stations
    (container_at pot_1 table_1)
    (container_on_station pot_1)
    (container_at bowl_1 table_2)
    (container_on_station bowl_1)

    ;; Water not yet created
    (water_available water_1)

    ;; All processing stations are free
    (station_free stove_1)
    (station_free board_1)
    (station_free sink_1)
  )
  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
    (addedto onion_1 water_1)
    (addedto onion_2 water_1)
    (addedto onion_3 water_1)
    (isboiling water_1)
    (in water_1 bowl_1)
    (container_at bowl_1 table_1)
  ))
)
