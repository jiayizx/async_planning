(define (problem robotouille-prob)
  (:domain robotouille)
  (:objects
    board_1 board_2 - station
    table_1 table_2 table_3 table_4 table_5 table_6 - station
    stove_1 stove_2 - station
    sink_1 sink_2 - station

    robot_1 - player

    tomato_1 - item
    lettuce_1 - item
    chicken_1 - item
    bread_1 bread_2 - item
  )

  (:init
    ; station identity
    (isboard board_1)
    (isboard board_2)
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (istable table_6)
    (isstove stove_1)
    (isstove stove_2)
    (issink sink_1)
    (issink sink_2)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 board_1)

    ; item identities
    (istomato tomato_1)
    (islettuce lettuce_1)
    (ischicken chicken_1)
    (isbread bread_1)
    (isbread bread_2)

    ; item capability predicates
    (iscuttable tomato_1)
    (iscuttable lettuce_1)
    (iscookable chicken_1)

    ; item placement (stack-level 0 => on + at)
    (on tomato_1 board_1)
    (at tomato_1 board_1)

    (on lettuce_1 table_3)
    (at lettuce_1 table_3)

    (on chicken_1 table_1)
    (at chicken_1 table_1)

    (on bread_1 stove_1)
    (at bread_1 stove_1)

    (on bread_2 stove_2)
    (at bread_2 stove_2)

    ; clear for all items (no item is atop another and none are held)
    (clear tomato_1)
    (clear lettuce_1)
    (clear chicken_1)
    (clear bread_1)
    (clear bread_2)

    ; empty stations (no item with stack-level 0 references these)
    (empty table_4)
    (empty sink_2)
    (empty table_5)
    (empty table_6)
    (empty board_2)
    (empty sink_1)
    (empty table_2)

    ; vacant stations (player at board_1 so it's not vacant)
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant table_6)
    (vacant board_2)
    (vacant stove_1)
    (vacant stove_2)
    (vacant sink_1)
    (vacant sink_2)

    ; player hand state
    (nothing robot_1)

    ; all items start free (not being processed)
    (item-free tomato_1)
    (item-free lettuce_1)
    (item-free chicken_1)
    (item-free bread_1)
    (item-free bread_2)
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