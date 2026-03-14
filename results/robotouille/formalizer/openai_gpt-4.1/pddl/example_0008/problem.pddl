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
    ;; Station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (istable table_6)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)

    ;; Item identities
    (istomato tomato_1)
    (islettuce lettuce_1)
    (ischicken chicken_1)
    (isbread bread_1)
    (isbread bread_2)

    ;; Container identities
    (isbowltype bowl_1)
    (ispottype pot_1)

    ;; Player identity
    (isrobot robot_1)

    ;; Item capability flags
    (iscuttable tomato_1)
    (iscuttable lettuce_1)
    (iscookable chicken_1)

    ;; Player location: robot_1 at (0,0) facing down (+Y), so facing (0,1) => table_1
    (loc robot_1 table_1)

    ;; Player starts empty-handed
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Items on stations
    (at tomato_1 table_3)
    (on tomato_1 table_3)
    (clear tomato_1)

    (at lettuce_1 table_4)
    (on lettuce_1 table_4)
    (clear lettuce_1)

    (at chicken_1 table_5)
    (on chicken_1 table_5)
    (clear chicken_1)

    (at bread_1 table_6)
    (on bread_1 table_6)
    (atop bread_2 bread_1)
    (at bread_2 table_6)
    (clear bread_2)

    ;; Bowl is on table_1, empty
    (container_at bowl_1 table_1)
    (container_on_station bowl_1)

    ;; Pot is on sink_1, empty
    (container_at pot_1 sink_1)
    (container_on_station pot_1)

    ;; Water not yet created
    (water_available water_1)

    ;; All stations vacant except where robot_1 is
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant table_6)
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
    ;; Soup: bowl with boiling water and tomato in it, on table_1
    (in water_1 bowl_1)
    (isboiling water_1)
    (addedto tomato_1 water_1)
    (container_at bowl_1 table_1)

    ;; Sandwich: bread_1, chicken_1, lettuce_1, bread_2 stacked on table_2
    (at bread_1 table_2)
    (on bread_1 table_2)
    (atop chicken_1 bread_1)
    (atop lettuce_1 chicken_1)
    (atop bread_2 lettuce_1)
    (at bread_2 table_2)
    (clear bread_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
  ))
)
