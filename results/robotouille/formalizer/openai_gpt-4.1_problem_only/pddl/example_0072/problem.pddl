(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_5 table_6 table_2 table_1 table_3 - station
    fryer_1 - station
    stove_1 - station
    board_1 - station
    sink_1 - station
    tomato_1 lettuce_1 chicken_1 bread_2 bread_1 - item
    robot_1 - player
  )
  (:init
    ;; Station identity
    (istable table_5)
    (istable table_6)
    (istable table_2)
    (istable table_1)
    (istable table_3)
    (isfryer fryer_1)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)

    ;; Player identity
    (isrobot robot_1)

    ;; Item identity
    (istomato tomato_1)
    (islettuce lettuce_1)
    (ischicken chicken_1)
    (isbread bread_2)
    (isbread bread_1)

    ;; Item capabilities
    (iscuttable tomato_1)
    (iscuttable lettuce_1)
    (iscookable chicken_1)

    ;; Player location
    (loc robot_1 table_5)
    (vacant table_6)
    (vacant table_2)
    (vacant table_1)
    (vacant table_3)
    (vacant fryer_1)
    (vacant stove_1)
    (vacant board_1)
    (vacant sink_1)

    ;; Player hand state
    (nothing robot_1)

    ;; Item locations (not held)
    (on tomato_1 table_5)
    (at tomato_1 table_5)
    (on lettuce_1 board_1)
    (at lettuce_1 board_1)
    (on chicken_1 fryer_1)
    (at chicken_1 fryer_1)
    (on bread_2 table_6)
    (at bread_2 table_6)
    (on bread_1 table_2)
    (at bread_1 table_2)

    ;; Clear predicates
    (clear tomato_1)
    (clear lettuce_1)
    (clear chicken_1)
    (clear bread_2)
    (clear bread_1)

    ;; Empty stations (no item with stack-level 0 on them)
    (empty table_1)
    (empty table_3)
    (empty sink_1)

    ;; All items start item-free
    (item-free tomato_1)
    (item-free lettuce_1)
    (item-free chicken_1)
    (item-free bread_2)
    (item-free bread_1)
  )
  (:goal (and
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
  ))
)
