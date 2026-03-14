(define (problem fried-chicken-sandwich)
  (:domain robotouille-async)
  (:objects
    ;; stations
    table_1 table_2 table_3 table_4 - station
    board_1 - station
    fryer_1 - station

    ;; player
    robot_1 - player

    ;; items
    bread_1 bread_2 chicken_1 lettuce_1 tomato_1 - item
  )

  (:init
    ;; Station identity
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (isboard board_1)
    (isfryer fryer_1)

    ;; Player identity
    (isrobot robot_1)

    ;; Item identities
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (islettuce lettuce_1)
    (istomato tomato_1)

    ;; Capability flags
    (isfryable chicken_1)
    (iscuttable lettuce_1)
    (iscuttable tomato_1)

    ;; Player start location: at (0,2) facing up => facing_pos = (0,1) => table_1
    (loc robot_1 table_1)
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Items spatial placement
    ;; table_1 at (0,1): bread_1 directly on table, bread_2 stacked on bread_1
    (at bread_1 table_1)
    (on bread_1 table_1)

    (at bread_2 table_1)
    (atop bread_2 bread_1)
    (clear bread_2)

    ;; table_2 at (1,3): chicken_1 on table_2
    (at chicken_1 table_2)
    (on chicken_1 table_2)
    (clear chicken_1)

    ;; table_3 at (2,3): lettuce_1 on table_3
    (at lettuce_1 table_3)
    (on lettuce_1 table_3)
    (clear lettuce_1)

    ;; table_4 at (3,3): tomato_1 on table_4
    (at tomato_1 table_4)
    (on tomato_1 table_4)
    (clear tomato_1)

    ;; Stations that are empty (i.e., have no item directly on their surface)
    (empty board_1)
    (empty fryer_1)

    ;; Vacant: stations with no player. Player at table_1 so table_1 not vacant.
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant board_1)
    (vacant fryer_1)

    ;; Processing stations are free initially (important for durative actions)
    (station_free board_1)
    (station_free fryer_1)
  )

  (:goal (and
    ;; bread_1 is on table_1
    (on bread_1 table_1)

    ;; lettuce and tomato are cut and located at table_1
    (iscut lettuce_1)
    (at lettuce_1 table_1)

    (iscut tomato_1)
    (at tomato_1 table_1)

    ;; chicken is fried and at table_1
    (isfried chicken_1)
    (at chicken_1 table_1)

    ;; bread_2 is at table_1 and clear (nothing on top)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
