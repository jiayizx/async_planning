(define (problem robotouille-problem) (:domain robotouille)
  (:objects
    board_2 board_1 - station
    sink_1 - station
    stove_1 stove_2 - station
    fryer_1 - station
    table_2 table_1 table_4 table_3 - station

    robot_1 - player

    lettuce_1 lettuce_3 lettuce_2 - item
    chicken_2 chicken_1 - item
    tomato_1 - item
    bottombun_1 - item
    bread_1 bread_2 - item
  )

  (:init
    ; station types
    (isboard board_2) (isboard board_1)
    (issink sink_1)
    (isstove stove_1) (isstove stove_2)
    (isfryer fryer_1)
    (istable table_2) (istable table_1) (istable table_4) (istable table_3)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 board_2)

    ; item types
    (islettuce lettuce_1) (islettuce lettuce_3) (islettuce lettuce_2)
    (ischicken chicken_2) (ischicken chicken_1)
    (istomato tomato_1)
    (isbottombun bottombun_1)
    (isbread bread_1) (isbread bread_2)

    ; item positions (on/at for stack-level 0) or held
    (on lettuce_1 board_1) (at lettuce_1 board_1)
    (on lettuce_3 table_4) (at lettuce_3 table_4)
    (on chicken_2 table_3) (at chicken_2 table_3)
    (on tomato_1 table_2) (at tomato_1 table_2)
    (has robot_1 bottombun_1)
    (on lettuce_2 sink_1) (at lettuce_2 sink_1)
    (on bread_1 table_1) (at bread_1 table_1)
    (on bread_2 board_2) (at bread_2 board_2)
    (on chicken_1 stove_2) (at chicken_1 stove_2)

    ; capability flags from item predicates
    (iscuttable lettuce_1) (iscuttable lettuce_3) (iscuttable lettuce_2)
    (iscookable chicken_2) (iscookable chicken_1)
    (iscuttable tomato_1)

    ; clear for items not stacked on (and not held)
    (clear lettuce_1) (clear lettuce_3) (clear chicken_2) (clear tomato_1)
    (clear lettuce_2) (clear bread_1) (clear bread_2) (clear chicken_1)

    ; empty stations (no stack-level-0 item at these stations)
    (empty stove_1)
    (empty fryer_1)

    ; vacant stations (no player located there)
    (vacant board_1) (vacant sink_1) (vacant stove_1) (vacant stove_2)
    (vacant fryer_1) (vacant table_2) (vacant table_1) (vacant table_4) (vacant table_3)

    ; player hand state: robot is holding an item, so no (nothing robot_1)

    ; all items start item-free
    (item-free lettuce_1) (item-free lettuce_3) (item-free chicken_2) (item-free tomato_1)
    (item-free bottombun_1) (item-free lettuce_2) (item-free bread_1) (item-free bread_2) (item-free chicken_1)
  )

  (:goal (and
    (on bread_1 table_1)
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)