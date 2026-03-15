(define (problem robotouille-problem)
  (:domain robotouille-async)
  (:objects
    ;; stations
    table_1 table_2 table_3 table_4 table_5 table_6 - station
    stove_1 board_1 sink_1 - station

    ;; player
    robot_1 - player

    ;; items
    tomato_1 lettuce_1 chicken_1 bread_1 bread_2 - item

    ;; containers and water
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
    (istable table_6)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)

    ;; player identity
    (isrobot robot_1)

    ;; item identities
    (istomato tomato_1)
    (islettuce lettuce_1)
    (ischicken chicken_1)
    (isbread bread_1)
    (isbread bread_2)

    ;; capability flags
    (iscuttable tomato_1)
    (iscuttable lettuce_1)
    (iscookable chicken_1)

    ;; player start: at (0,0) facing down -> facing station at (0,1) = table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; vacancy: robot at table_1 so table_1 is not vacant; others vacant
    (vacant table_2)
    (vacant stove_1)
    (vacant board_1)
    (vacant sink_1)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant table_6)

    ;; station_free for processing stations
    (station_free stove_1)
    (station_free board_1)
    (station_free sink_1)

    ;; items initial locations
    (at tomato_1 table_3)
    (on tomato_1 table_3)
    (clear tomato_1)

    (at lettuce_1 table_4)
    (on lettuce_1 table_4)
    (clear lettuce_1)

    (at chicken_1 table_5)
    (on chicken_1 table_5)
    (clear chicken_1)

    ;; stack on table_6: bread_1 on table, bread_2 on top
    (at bread_1 table_6)
    (on bread_1 table_6)
    (at bread_2 table_6)
    (atop bread_2 bread_1)
    (clear bread_2)

    ;; empty stations (no item directly on surface)
    (empty table_1)
    (empty table_2)
    (empty stove_1)
    (empty sink_1)

    ;; containers
    (container_at pot_1 sink_1)
    (container_on_station pot_1)
    (ispottype pot_1)

    (container_at bowl_1 table_1)
    (container_on_station bowl_1)
    (isbowltype bowl_1)

    ;; water available for fill
    (water_available water_1)
  )

  (:goal (and
    ;; soup goals
    (in water_1 bowl_1)
    (isboiling water_1)
    (addedto tomato_1 water_1)
    (container_at bowl_1 table_1)

    ;; sandwich goals on table_2
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
  ))
)