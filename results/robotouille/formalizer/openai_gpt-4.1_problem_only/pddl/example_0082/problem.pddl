(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_6 table_3 table_7 table_2 stove_1 table_5 board_1 sink_1 table_1 table_4 - station
    tomato_1 onion_1 chicken_2 chicken_1 bread_4 bread_3 bread_1 bread_2 - item
    robot_1 - player
  )
  (:init
    ;; Station identity
    (istable table_6)
    (istable table_3)
    (istable table_7)
    (istable table_2)
    (isstove stove_1)
    (istable table_5)
    (isboard board_1)
    (issink sink_1)
    (istable table_1)
    (istable table_4)

    ;; Item identity
    (istomato tomato_1)
    (isonion onion_1)
    (ischicken chicken_2)
    (ischicken chicken_1)
    (isbread bread_4)
    (isbread bread_3)
    (isbread bread_1)
    (isbread bread_2)

    ;; Player identity
    (isrobot robot_1)

    ;; Item capabilities
    (iscuttable tomato_1)
    (iscuttable onion_1)
    (iscookable chicken_2)
    (iscookable chicken_1)

    ;; Player location
    (loc robot_1 table_6)

    ;; Player hand state
    (nothing robot_1)

    ;; Item locations (not held)
    (on tomato_1 table_6)
    (at tomato_1 table_6)
    (on onion_1 table_3)
    (at onion_1 table_3)
    (on chicken_2 table_7)
    (at chicken_2 table_7)
    (on chicken_1 table_2)
    (at chicken_1 table_2)
    (on bread_4 stove_1)
    (at bread_4 stove_1)
    (on bread_3 table_5)
    (at bread_3 table_5)
    (on bread_1 board_1)
    (at bread_1 board_1)
    (on bread_2 sink_1)
    (at bread_2 sink_1)

    ;; All items are item-free at start
    (item-free tomato_1)
    (item-free onion_1)
    (item-free chicken_2)
    (item-free chicken_1)
    (item-free bread_4)
    (item-free bread_3)
    (item-free bread_1)
    (item-free bread_2)

    ;; Clear items (no item is atop another, and none are held)
    (clear tomato_1)
    (clear onion_1)
    (clear chicken_2)
    (clear chicken_1)
    (clear bread_4)
    (clear bread_3)
    (clear bread_1)
    (clear bread_2)

    ;; Empty stations (no item with stack-level 0 on them)
    ;; All stations have an item with stack-level 0, so none are empty

    ;; Vacant stations (no player at them)
    (vacant table_3)
    (vacant table_7)
    (vacant table_2)
    (vacant stove_1)
    (vacant table_5)
    (vacant board_1)
    (vacant sink_1)
    (vacant table_1)
    (vacant table_4)
    ;; table_6 is occupied by robot_1
  )
  (:goal (and
    (iscut tomato_1)
    (iscut onion_1)
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
  ))
)
