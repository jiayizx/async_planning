(define (problem tomato-soup-lettuce-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 table_6 board_1 stove_1 sink_1 sink_2 - station
    bread_1 bread_2 chicken_1 tomato_1 lettuce_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5) (istable table_6)
    (isboard board_1)
    (isstove stove_1)
    (issink sink_1) (issink sink_2)
    ; Item identity
    (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1)
    (istomato tomato_1)
    (islettuce lettuce_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_6)
    (nothing robot_1)
    ; Capability flags
    (iscookable chicken_1)
    (iscuttable tomato_1)
    (iscuttable lettuce_1)
    ; Physical state
    (on chicken_1 table_3) (at chicken_1 table_3)
    (on bread_2 sink_1) (at bread_2 sink_1)
    (on bread_1 table_2) (at bread_1 table_2)
    (on tomato_1 table_6) (at tomato_1 table_6)
    (on lettuce_1 board_1) (at lettuce_1 board_1)
    ; Clear: topmost item at each occupied station
    (clear chicken_1)
    (clear bread_2)
    (clear bread_1)
    (clear tomato_1)
    (clear lettuce_1)
    ; Empty: stations with no items on surface
    (empty table_1)
    (empty table_4)
    (empty table_5)
    (empty stove_1)
    (empty sink_2)
    ; Vacant: stations where no player stands
    (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5) (vacant board_1) (vacant stove_1) (vacant sink_1) (vacant sink_2)
    ; item-free: all items start free (not being cooked/cut/fried)
    (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free tomato_1) (item-free lettuce_1)
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
