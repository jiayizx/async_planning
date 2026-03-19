(define (problem robotouille-problem)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 table_4 table_5 table_6 table_7 table_8 stove_1 board_1 sink_1 - station
    tomato_1 onion_1 chicken_1 chicken_2 bread_1 bread_2 bread_3 bread_4 - item
    bowl - container
    pot - container
    water - water
  )
  (:init
    ;; Station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (istable table_6)
    (istable table_7)
    (istable table_8)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)

    ;; Item identities
    (isrobot robot_1)
    (istomato tomato_1)
    (isonion onion_1)
    (ischicken chicken_1)
    (ischicken chicken_2)
    (isbread bread_1)
    (isbread bread_2)
    (isbread bread_3)
    (isbread bread_4)

    ;; Container identities
    (isbowltype bowl)
    (ispottype pot)

    ;; Item capability flags
    (iscuttable tomato_1)
    (iscuttable onion_1)
    (iscookable chicken_1)
    (iscookable chicken_2)

    ;; Player location: robot_1 at table_1 (since facing down from (0,0) to (0,1))
    (loc robot_1 table_1)

    ;; Player starts empty-handed
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Items on stations
    (at tomato_1 table_3)
    (on tomato_1 table_3)
    (clear tomato_1)

    (at onion_1 table_4)
    (on onion_1 table_4)
    (clear onion_1)

    (at chicken_1 table_5)
    (on chicken_1 table_5)
    (clear chicken_1)

    (at chicken_2 table_6)
    (on chicken_2 table_6)
    (clear chicken_2)

    (at bread_1 table_7)
    (on bread_1 table_7)
    (atop bread_2 bread_1)
    (at bread_2 table_7)
    (clear bread_2)

    (at bread_3 table_8)
    (on bread_3 table_8)
    (atop bread_4 bread_3)
    (at bread_4 table_8)
    (clear bread_4)

    ;; Bowl and pot locations
    (container_on_station bowl)
    (container_at bowl table_1)
    (container_on_station pot)
    (container_at pot table_1)

    ;; Water is available
    (water_available water)

    ;; All stations vacant except where robot_1 is
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant table_6)
    (vacant table_7)
    (vacant table_8)
    (vacant stove_1)
    (vacant board_1)
    (vacant sink_1)

    ;; Empty predicates for stations with no item directly on them
    (empty table_1)
    (empty table_2)
    (empty stove_1)
    (empty board_1)
    (empty sink_1)

    ;; Processing stations are free
    (station_free stove_1)
    (station_free board_1)
    (station_free sink_1)

  )
  (:goal (and
    (in water bowl)
    (isboiling water)
    (iscut tomato_1)
    (addedto tomato_1 water)
    (iscut onion_1)
    (addedto onion_1 water)
    (container_at bowl table_1)
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
    (on bread_3 table_3)
    (iscooked chicken_2)
    (at chicken_2 table_3)
    (at bread_4 table_3)
    (clear bread_4)
    ;; Removed (in water pot) from goal, as it is not required for the soup to be served in the bowl
  ))
)
