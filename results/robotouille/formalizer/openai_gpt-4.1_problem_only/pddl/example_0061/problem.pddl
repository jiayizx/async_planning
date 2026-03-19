(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    sink_1 sink_2 board_3 table_3 stove_2 table_5 table_6 table_4 board_1 board_2 stove_1 table_2 table_1 - station
    robot_1 - player
    cheese_1 cheese_2 bread_1 tomato_1 onion_1 onion_2 onion_3 - item
  )
  (:init
    ; Station identity
    (issink sink_1)
    (issink sink_2)
    (isboard board_3)
    (istable table_3)
    (isstove stove_2)
    (istable table_5)
    (istable table_6)
    (istable table_4)
    (isboard board_1)
    (isboard board_2)
    (isstove stove_1)
    (istable table_2)
    (istable table_1)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (ischeese cheese_1)
    (ischeese cheese_2)
    (isbread bread_1)
    (istomato tomato_1)
    (isonion onion_1)
    (isonion onion_2)
    (isonion onion_3)

    ; Item capabilities
    (iscuttable onion_1)
    (iscuttable onion_2)
    (iscuttable onion_3)
    (iscuttable tomato_1)

    ; Player location
    (loc robot_1 sink_1)

    ; Player hand state
    ; robot_1 is holding cheese_1
    (has robot_1 cheese_1)

    ; Item locations
    (on onion_3 board_3)
    (at onion_3 board_3)
    (on cheese_2 sink_2)
    (at cheese_2 sink_2)
    (on bread_1 table_2)
    (at bread_1 table_2)
    (on tomato_1 board_1)
    (at tomato_1 board_1)
    (on onion_1 sink_1)
    (at onion_1 sink_1)
    (on onion_2 table_3)
    (at onion_2 table_3)

    ; Clear predicates
    (clear onion_3)
    (clear cheese_2)
    (clear bread_1)
    (clear tomato_1)
    (clear onion_1)
    (clear onion_2)

    ; Empty stations (no item with stack-level 0 on them)
    (empty table_6)
    (empty table_4)
    (empty board_2)
    (empty stove_1)

    ; Vacant stations (no player at them)
    (vacant sink_2)
    (vacant board_3)
    (vacant table_3)
    (vacant stove_2)
    (vacant table_5)
    (vacant table_6)
    (vacant table_4)
    (vacant board_1)
    (vacant board_2)
    (vacant stove_1)
    (vacant table_2)
    (vacant table_1)

    ; All items start item-free
    (item-free cheese_1)
    (item-free cheese_2)
    (item-free bread_1)
    (item-free tomato_1)
    (item-free onion_1)
    (item-free onion_2)
    (item-free onion_3)
  )
  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
  ))
)
