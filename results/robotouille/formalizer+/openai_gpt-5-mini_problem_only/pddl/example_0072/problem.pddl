(define (problem tomato-lettuce-chicken)
  (:domain robotouille)
  (:objects
    table_5 fryer_1 table_6 table_2 stove_1 table_4 board_1 sink_1 table_1 table_3 - station
    tomato_1 lettuce_1 chicken_1 bread_2 bread_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_5) (isfryer fryer_1) (istable table_6) (istable table_2)
    (isstove stove_1) (istable table_4) (isboard board_1) (issink sink_1)
    (istable table_1) (istable table_3)

    ; Item identity
    (istomato tomato_1) (islettuce lettuce_1) (ischicken chicken_1)
    (isbread bread_2) (isbread bread_1)

    ; Player identity and location
    (isrobot robot_1)
    (loc robot_1 table_5)
    (nothing robot_1)

    ; Capability flags
    (iscuttable tomato_1) (iscuttable lettuce_1)
    (iscookable chicken_1)

    ; Item placements (stack-level 0 -> on + at)
    (on tomato_1 table_5) (at tomato_1 table_5)
    (on lettuce_1 board_1) (at lettuce_1 board_1)
    (on chicken_1 fryer_1) (at chicken_1 fryer_1)
    (on bread_2 table_6) (at bread_2 table_6)
    (on bread_1 table_2) (at bread_1 table_2)

    ; Clear: topmost items (no items atop them)
    (clear tomato_1) (clear lettuce_1) (clear chicken_1) (clear bread_2) (clear bread_1)

    ; Empty stations: those with no item at stack-level 0
    (empty table_4) (empty sink_1) (empty table_1) (empty table_3) (empty stove_1)

    ; Vacant stations: all except where the robot stands (table_5)
    (vacant fryer_1) (vacant table_6) (vacant table_2) (vacant stove_1) (vacant table_4)
    (vacant board_1) (vacant sink_1) (vacant table_1) (vacant table_3)

    ; All items start free (not being processed)
    (item-free tomato_1) (item-free lettuce_1) (item-free chicken_1) (item-free bread_2) (item-free bread_1)
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
