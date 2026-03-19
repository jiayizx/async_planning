(define (problem robotouille-problem)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 table_4 table_5 table_6 stove_1 board_1 sink_1 - station
    tomato_1 lettuce_1 chicken_1 bread_1 bread_2 - item
    bowl_1 pot_1 - container
    water_1 - water
  )
  (:init
    ;; === Station identity ===
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (istable table_6)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)

    ;; === Item identity ===
    (isrobot robot_1)
    (istomato tomato_1)
    (islettuce lettuce_1)
    (ischicken chicken_1)
    (isbread bread_1)
    (isbread bread_2)

    ;; === Container identity ===
    (isbowltype bowl_1)
    (ispottype pot_1)

    ;; === Item capability flags ===
    (iscuttable tomato_1)
    (iscuttable lettuce_1)
    (iscookable chicken_1)

    ;; === Player location and hands ===
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; === Station vacancy ===
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant table_6)
    (vacant stove_1)
    (vacant board_1)
    (vacant sink_1)
    ;; robot_1 is at table_1, so table_1 is not vacant

    ;; === Items on stations ===
    (at tomato_1 table_3)
    (on tomato_1 table_3)
    (clear tomato_1)
    (empty table_3)

    (at lettuce_1 table_4)
    (on lettuce_1 table_4)
    (clear lettuce_1)
    (empty table_4)

    (at chicken_1 table_5)
    (on chicken_1 table_5)
    (clear chicken_1)
    (empty table_5)

    (at bread_1 table_6)
    (on bread_1 table_6)
    (atop bread_2 bread_1)
    (at bread_2 table_6)
    (clear bread_2)
    ;; bread_1 is not clear because bread_2 is atop
    (empty table_6)

    ;; === Containers on stations ===
    (container_at bowl_1 table_1)
    (container_on_station bowl_1)
    (container_at pot_1 sink_1)
    (container_on_station pot_1)

    ;; === Water availability ===
    (water_available water_1)

    ;; === Station free flags ===
    (station_free stove_1)
    (station_free board_1)
    (station_free sink_1)

    ;; === No items on table_1 and table_2 at start ===
    (empty table_1)
    (empty table_2)
  )
  (:goal (and
    (in water_1 bowl_1)
    (isboiling water_1)
    (addedto tomato_1 water_1)
    (container_at bowl_1 table_1)
    (at bread_1 table_2)
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (at lettuce_1 table_2)
    (iscut lettuce_1)
    (at bread_2 table_2)
    (clear bread_2)
    (has_water bowl_1 water_1)
  ))
)
