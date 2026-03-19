(define (problem make-soup-and-sandwiches)
  (:domain robotouille)
  (:objects
    table_3 table_1 stove_1 table_2 board_1 sink_1 table_4 table_6 table_5 table_7 - station
    tomato_1 onion_1 chicken_2 chicken_1 bread_4 bread_1 bread_2 bread_3 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_3) (istable table_1) (isstove stove_1) (istable table_2)
    (isboard board_1) (issink sink_1) (istable table_4) (istable table_6) (istable table_5) (istable table_7)
    ; Item identity
    (istomato tomato_1) (isonion onion_1) (ischicken chicken_2) (ischicken chicken_1)
    (isbread bread_4) (isbread bread_1) (isbread bread_2) (isbread bread_3)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_3)
    (nothing robot_1)
    ; Capability flags
    (iscuttable tomato_1) (iscuttable onion_1)
    (iscookable chicken_2) (iscookable chicken_1)
    ; Item locations (stack-level 0 -> on + at)
    (on tomato_1 table_3) (at tomato_1 table_3)
    (on onion_1 table_1) (at onion_1 table_1)
    (on chicken_2 stove_1) (at chicken_2 stove_1)
    (on chicken_1 table_2) (at chicken_1 table_2)
    (on bread_4 board_1) (at bread_4 board_1)
    (on bread_1 sink_1) (at bread_1 sink_1)
    (on bread_2 table_4) (at bread_2 table_4)
    (on bread_3 table_6) (at bread_3 table_6)
    ; Clear: all topmost items (no stacks present)
    (clear tomato_1) (clear onion_1) (clear chicken_2) (clear chicken_1)
    (clear bread_4) (clear bread_1) (clear bread_2) (clear bread_3)
    ; Empty stations (no item with stack-level 0 at that station)
    (empty table_5) (empty table_7)
    ; Vacant stations (no player stands there)
    (vacant table_1) (vacant stove_1) (vacant table_2) (vacant board_1) (vacant sink_1)
    (vacant table_4) (vacant table_6) (vacant table_5) (vacant table_7)
    ; item-free: all items start free
    (item-free tomato_1) (item-free onion_1) (item-free chicken_2) (item-free chicken_1)
    (item-free bread_4) (item-free bread_1) (item-free bread_2) (item-free bread_3)
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
