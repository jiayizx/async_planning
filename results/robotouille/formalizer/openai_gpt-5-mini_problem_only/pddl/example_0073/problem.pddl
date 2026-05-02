(define (problem robotouille-prob)
  (:domain robotouille)

  (:objects
    table_6 board_1 table_3 table_2 sink_1 table_5 stove_1 table_4 sink_2 table_1 - station
    robot_1 - player
    chicken_1 bread_2 bread_1 tomato_1 lettuce_1 water_1 bowl_1 - item
  )

  (:init
    ; station identity
    (istable table_6) (isboard board_1) (istable table_3) (istable table_2) (issink sink_1)
    (istable table_5) (isstove stove_1) (istable table_4) (issink sink_2) (istable table_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_6)

    ; item identities
    (ischicken chicken_1) (isbread bread_2) (isbread bread_1) (istomato tomato_1) (islettuce lettuce_1)
    (isbread water_1) (isbread bowl_1) ; water_1 and bowl_1 declared as items to satisfy domain typing

    ; item capabilities
    (iscookable chicken_1)
    (iscuttable tomato_1)
    (iscuttable lettuce_1)

    ; initial placement for items (stack-level 0 -> on + at)
    (on chicken_1 table_3) (at chicken_1 table_3)
    (on bread_2 sink_1) (at bread_2 sink_1)
    (on bread_1 table_2) (at bread_1 table_2)
    (on tomato_1 table_6) (at tomato_1 table_6)
    (on lettuce_1 board_1) (at lettuce_1 board_1)

    ; water and bowl: not placed by items list; leave them off tables unless needed by goals

    ; clear: all items that are not stacked on have clear
    (clear chicken_1) (clear bread_2) (clear bread_1) (clear tomato_1) (clear lettuce_1) (clear water_1) (clear bowl_1)

    ; empty stations: those with no stack-level-0 item
    (empty stove_1) (empty table_5) (empty table_4) (empty sink_2) (empty table_1)

    ; vacant stations: all except where the player is located (table_6)
    (vacant board_1) (vacant table_3) (vacant table_2) (vacant sink_1) (vacant table_5)
    (vacant stove_1) (vacant table_4) (vacant sink_2) (vacant table_1)

    ; player hand state
    (nothing robot_1)

    ; items start free
    (item-free chicken_1) (item-free bread_2) (item-free bread_1) (item-free tomato_1) (item-free lettuce_1) (item-free water_1) (item-free bowl_1)
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
