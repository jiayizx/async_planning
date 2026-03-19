(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    ; stations
    sink_1 board_3 table_3 stove_2 table_5 table_6 board_1 board_2 sink_2 stove_1 table_2 table_1 - station
    ; players
    robot_1 - player
    ; items
    cheese_1 onion_3 cheese_2 bread_1 tomato_1 onion_1 onion_2 - item
  )

  (:init
    ; station identity
    (issink sink_1) (isboard board_3) (istable table_3) (isstove stove_2) (istable table_5)
    (istable table_6) (isboard board_1) (isboard board_2) (issink sink_2) (isstove stove_1)
    (istable table_2) (istable table_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 sink_1)

    ; item identity predicates
    (ischeese cheese_1) (isonion onion_3) (ischeese cheese_2) (isbread bread_1)
    (istomato tomato_1) (isonion onion_1) (isonion onion_2)

    ; item capabilities (from JSON)
    (iscuttable onion_3) (iscuttable tomato_1) (iscuttable onion_1) (iscuttable onion_2)

    ; item locations / holdings
    (has robot_1 cheese_1)

    (on onion_3 board_3) (at onion_3 board_3)
    (on cheese_2 sink_2) (at cheese_2 sink_2)
    (on bread_1 table_2) (at bread_1 table_2)
    (on tomato_1 board_1) (at tomato_1 board_1)
    (on onion_1 sink_1) (at onion_1 sink_1)
    (on onion_2 table_3) (at onion_2 table_3)

    ; clear: items that are not under any other item and not held
    (clear onion_3) (clear cheese_2) (clear bread_1) (clear tomato_1) (clear onion_1) (clear onion_2)
    ; cheese_1 is held so not declared clear

    ; empty stations (no stack-level-0 item at them)
    (empty stove_2) (empty table_5) (empty table_6) (empty board_2) (empty stove_1) (empty table_1)

    ; vacant stations (all except where player is located)
    (vacant board_3) (vacant table_3) (vacant stove_2) (vacant table_5) (vacant table_6)
    (vacant board_1) (vacant board_2) (vacant sink_2) (vacant stove_1) (vacant table_2) (vacant table_1)
    ; note: sink_1 is not vacant because robot_1 is there

    ; player hand state: robot_1 is holding cheese_1 so do NOT add (nothing robot_1)

    ; all items start free
    (item-free cheese_1) (item-free onion_3) (item-free cheese_2) (item-free bread_1)
    (item-free tomato_1) (item-free onion_1) (item-free onion_2)
  )

  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
  ))
)
