(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_4 table_5 table_6 table_3 table_7 table_1 table_2 table_8 table_9 - station
    stove_4 stove_1 stove_2 stove_3 - station
    sink_1 sink_2 - station
    board_1 - station
    robot_1 - player
    tomato_1 onion_1 chicken_1 chicken_2 bread_2 bread_4 bread_1 bread_3 - item
  )

  (:init
    ; station types
    (istable table_4) (istable table_5) (istable table_6) (istable table_3) (istable table_7)
    (istable table_1) (istable table_2) (istable table_8) (istable table_9)
    (isstove stove_4) (isstove stove_1) (isstove stove_2) (isstove stove_3)
    (issink sink_1) (issink sink_2)
    (isboard board_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_4)

    ; item identities
    (istomato tomato_1) (isonion onion_1) (ischicken chicken_1) (ischicken chicken_2)
    (isbread bread_2) (isbread bread_4) (isbread bread_1) (isbread bread_3)

    ; item capabilities
    (iscuttable tomato_1) (iscuttable onion_1)
    (iscookable chicken_1) (iscookable chicken_2)

    ; item positions (on/at) - stack-level 0 items
    (on tomato_1 table_4) (at tomato_1 table_4)
    (on onion_1 stove_4) (at onion_1 stove_4)
    (on chicken_1 table_1) (at chicken_1 table_1)
    (on chicken_2 table_5) (at chicken_2 table_5)
    (on bread_2 sink_1) (at bread_2 sink_1)
    (on bread_4 table_9) (at bread_4 table_9)
    (on bread_1 stove_1) (at bread_1 stove_1)
    (on bread_3 stove_2) (at bread_3 stove_2)

    ; clear: no item is atop another and none are held
    (clear tomato_1) (clear onion_1) (clear chicken_1) (clear chicken_2)
    (clear bread_2) (clear bread_4) (clear bread_1) (clear bread_3)

    ; all items start free (not being processed)
    (item-free tomato_1) (item-free onion_1) (item-free chicken_1) (item-free chicken_2)
    (item-free bread_2) (item-free bread_4) (item-free bread_1) (item-free bread_3)

    ; empty stations (no item with stack-level 0 references them)
    (empty table_3) (empty table_7) (empty table_6) (empty sink_2)
    (empty table_2) (empty table_8) (empty stove_3) (empty board_1)

    ; vacant stations (not occupied by a player)
    (vacant table_5) (vacant table_6) (vacant table_3) (vacant table_7)
    (vacant table_1) (vacant table_2) (vacant table_8) (vacant table_9)
    (vacant stove_4) (vacant stove_1) (vacant stove_2) (vacant stove_3)
    (vacant sink_1) (vacant sink_2) (vacant board_1)

    ; player hand state
    (nothing robot_1)
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