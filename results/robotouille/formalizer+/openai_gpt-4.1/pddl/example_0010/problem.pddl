(define (problem robotouille-problem)
  (:domain robotouille-async)
  (:objects
    fryer_1 stove_1 table_1 board_1 sink_1 table_2 table_3 table_4 table_5 table_6 table_7 table_8 table_9 table_10 - station
    robot_1 - player
    onion_1 potato_1 onion_2 lettuce_1 bottombun_1 topbun_1 bread_1 bread_2 onion_3 chicken_1 - item
    pot_1 bowl_1 - container
    water_1 - water
  )
  (:init
    ;; Station identities
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

    ;; Item identities
    (isonion onion_1)
    (ispotato potato_1)
    (isonion onion_2)
    (islettuce lettuce_1)
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (isbread bread_1)
    (isbread bread_2)
    (isonion onion_3)
    (ischicken chicken_1)

    ;; Container identities
    (ispottype pot_1)
    (isbowltype bowl_1)

    ;; Item capability flags
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

    ;; Player location: robot_1 at (0,0) facing down (+Y), so facing (0,1) => fryer_1
    (loc robot_1 fryer_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Station vacant predicates (robot_1 at fryer_1)
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

    ;; Items on stations
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
    (clear bottombun_1)
    (at topbun_1 table_6)
    (atop topbun_1 bottombun_1)
    (clear topbun_1)
    (at bread_1 table_7)
    (on bread_1 table_7)
    (clear bread_1)
    (at bread_2 table_7)
    (atop bread_2 bread_1)
    (clear bread_2)
    (at onion_3 table_8)
    (on onion_3 table_8)
    (clear onion_3)
    (at chicken_1 table_9)
    (on chicken_1 table_9)
    (clear chicken_1)

    ;; Empty predicates for stations with no item directly on them
    (empty table_1)
    (empty board_1)
    (empty sink_1)
    (empty table_10)
    (empty fryer_1)
    (empty stove_1)

    ;; Containers: pot_1 and bowl_1 start on table_1
    (container_at pot_1 table_1)
    (container_on_station pot_1)
    (container_at bowl_1 table_1)
    (container_on_station bowl_1)

    ;; Water available for filling
    (water_available water_1)

    ;; All processing stations are initially free
    (station_free fryer_1)
    (station_free stove_1)
    (station_free board_1)
  )
  (:goal (and
    ;; Soup: in(water, bowl), isboiling(water), addedto(onion_1, water), addedto(potato_1, water), bowl at table_1
    (in water_1 bowl_1)
    (isboiling water_1)
    (addedto onion_1 water_1)
    (addedto potato_1 water_1)
    (container_at bowl_1 table_1)

    ;; Burger: bottombun on table_2, lettuce cut and at table_2, onion_2 cut, fried, at table_2, topbun at table_2 and clear
    (on bottombun_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (iscut onion_2)
    (isfried onion_2)
    (at onion_2 table_2)
    (at topbun_1 table_2)
    (clear topbun_1)

    ;; Sandwich: bread_1 on table_3, chicken cooked and at table_3, onion_3 cut and at table_3, bread_2 at table_3 and clear
    (on bread_1 table_3)
    (iscooked chicken_1)
    (at chicken_1 table_3)
    (iscut onion_3)
    (at onion_3 table_3)
    (at bread_2 table_3)
    (clear bread_2)
  ))
)
