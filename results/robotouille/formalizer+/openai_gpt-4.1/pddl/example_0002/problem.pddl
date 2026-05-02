(define (problem fried-chicken-sandwich)
  (:domain robotouille-async)
  (:objects
    robot_1 - player
    table_1 table_2 table_3 table_4 board_1 fryer_1 - station
    bread_1 bread_2 chicken_1 lettuce_1 tomato_1 - item
  )
  (:init
    ;; Station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (isboard board_1)
    (isfryer fryer_1)

    ;; Item identities
    (isrobot robot_1)
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (islettuce lettuce_1)
    (istomato tomato_1)

    ;; Item capability flags
    (isfryable chicken_1)
    (iscuttable lettuce_1)
    (iscuttable tomato_1)

    ;; Player location: robot_1 at (0,2) facing up (-Y), so facing (0,1) => table_1
    (loc robot_1 table_1)

    ;; Player hands empty
    (nothing robot_1)
    (nocontainer robot_1)

    ;; Items on stations
    (at bread_1 table_1)
    (on bread_1 table_1)
    (at bread_2 table_1)
    (atop bread_2 bread_1)
    (clear bread_2)

    (at chicken_1 table_2)
    (on chicken_1 table_2)
    (clear chicken_1)

    (at lettuce_1 table_3)
    (on lettuce_1 table_3)
    (clear lettuce_1)

    (at tomato_1 table_4)
    (on tomato_1 table_4)
    (clear tomato_1)

    ;; Empty/vacant stations
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant board_1)
    (vacant fryer_1)
    ;; table_1 is occupied by robot_1, so not vacant

    ;; Empty predicates for stations
    ;; table_1 has bread_1 (on) and bread_2 (atop), so not empty
    (empty table_2)
    (empty table_3)
    (empty table_4)
    (empty board_1)
    (empty fryer_1)
    ;; table_1 is not empty

    ;; Station free predicates for processing stations
    (station_free board_1)
    (station_free fryer_1)
  )
  (:goal (and
    (on bread_1 table_1)
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    (iscut tomato_1)
    (at tomato_1 table_1)
    (isfried chicken_1)
    (at chicken_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
    (atop bread_2 tomato_1)
    (atop tomato_1 lettuce_1)
    (atop lettuce_1 chicken_1)
    (atop chicken_1 bread_1)
  ))
)
