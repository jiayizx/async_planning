(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    board_2 board_1 sink_1 stove_1 stove_2 fryer_1 table_2 table_1 table_4 table_3 - station
    lettuce_1 lettuce_3 chicken_2 tomato_1 bottombun_1 lettuce_2 bread_1 bread_2 chicken_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (isboard board_2)
    (isboard board_1)
    (issink sink_1)
    (isstove stove_1)
    (isstove stove_2)
    (isfryer fryer_1)
    (istable table_2)
    (istable table_1)
    (istable table_4)
    (istable table_3)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (islettuce lettuce_1)
    (islettuce lettuce_3)
    (ischicken chicken_2)
    (istomato tomato_1)
    (isbottombun bottombun_1)
    (islettuce lettuce_2)
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)

    ; Item capabilities
    (iscuttable lettuce_1)
    (iscuttable lettuce_3)
    (iscookable chicken_2)
    (iscuttable tomato_1)
    (iscuttable lettuce_2)
    (iscookable chicken_1)

    ; Player location
    (loc robot_1 board_2)

    ; Player hand state
    (has robot_1 bottombun_1)

    ; Items on stations (not held, stack-level 0)
    (on lettuce_1 board_1)
    (at lettuce_1 board_1)
    (on lettuce_3 table_4)
    (at lettuce_3 table_4)
    (on chicken_2 table_3)
    (at chicken_2 table_3)
    (on tomato_1 table_2)
    (at tomato_1 table_2)
    (on lettuce_2 sink_1)
    (at lettuce_2 sink_1)
    (on bread_1 table_1)
    (at bread_1 table_1)
    (on bread_2 board_2)
    (at bread_2 board_2)
    (on chicken_1 stove_2)
    (at chicken_1 stove_2)

    ; Items clear (no other item atop and not held)
    (clear lettuce_1)
    (clear lettuce_3)
    (clear chicken_2)
    (clear tomato_1)
    (clear lettuce_2)
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)

    ; Stations empty (no item with stack-level 0 on them)
    (empty stove_1)
    (empty fryer_1)

    ; Stations vacant (no player at them)
    (vacant board_1)
    (vacant sink_1)
    (vacant stove_1)
    (vacant stove_2)
    (vacant fryer_1)
    (vacant table_2)
    (vacant table_1)
    (vacant table_4)
    (vacant table_3)

    ; All items start item-free
    (item-free lettuce_1)
    (item-free lettuce_3)
    (item-free chicken_2)
    (item-free tomato_1)
    (item-free bottombun_1)
    (item-free lettuce_2)
    (item-free bread_1)
    (item-free bread_2)
    (item-free chicken_1)
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
