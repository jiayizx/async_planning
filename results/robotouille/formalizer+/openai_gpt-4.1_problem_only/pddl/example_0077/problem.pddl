(define (problem tomato-soup-lettuce-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 table_6 stove_1 board_1 sink_1 - station
    tomato_1 lettuce_1 chicken_1 bread_1 bread_2 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5) (istable table_6)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)
    ; Item identity
    (istomato tomato_1)
    (islettuce lettuce_1)
    (ischicken chicken_1)
    (isbread bread_1) (isbread bread_2)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_2)
    (has robot_1 tomato_1)
    ; Capability flags
    (iscuttable tomato_1)
    (iscuttable lettuce_1)
    (iscookable chicken_1)
    ; lettuce_1: stack-level 0 at table_2
    (on lettuce_1 table_2)
    (at lettuce_1 table_2)
    ; chicken_1: stack-level 0 at stove_1
    (on chicken_1 stove_1)
    (at chicken_1 stove_1)
    ; bread_1: stack-level 0 at table_1
    (on bread_1 table_1)
    (at bread_1 table_1)
    ; bread_2: stack-level 0 at board_1
    (on bread_2 board_1)
    (at bread_2 board_1)
    ; Clear: topmost item at each occupied station (lettuce_1, chicken_1, bread_1, bread_2)
    (clear lettuce_1)
    (clear chicken_1)
    (clear bread_1)
    (clear bread_2)
    ; Empty: stations with no items on surface (table_3, table_4, table_5, table_6, sink_1)
    (empty table_3) (empty table_4) (empty table_5) (empty table_6) (empty sink_1)
    ; Vacant: stations where no player stands (all except table_2)
    (vacant table_1) (vacant table_3) (vacant table_4) (vacant table_5) (vacant table_6) (vacant stove_1) (vacant board_1) (vacant sink_1)
    ; item-free: all items start free
    (item-free tomato_1) (item-free lettuce_1) (item-free chicken_1) (item-free bread_1) (item-free bread_2)
  )
  (:goal (and
    ; Only predicates supported by the domain are included
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
  ))
)
