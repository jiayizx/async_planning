(define (problem lettuce-chicken-sandwich)
  (:domain robotouille)
  (:objects
    board_1 board_2 sink_1 stove_1 stove_2 fryer_1 table_1 table_2 table_3 table_4 - station
    lettuce_1 lettuce_2 lettuce_3 tomato_1 bottombun_1 bread_1 bread_2 chicken_1 chicken_2 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (isboard board_1) (isboard board_2)
    (issink sink_1)
    (isstove stove_1) (isstove stove_2)
    (isfryer fryer_1)
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    ; Item identity
    (islettuce lettuce_1) (islettuce lettuce_2) (islettuce lettuce_3)
    (istomato tomato_1)
    (isbottombun bottombun_1)
    (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1) (ischicken chicken_2)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 board_2)
    (has robot_1 bottombun_1)
    ; Capability flags
    (iscuttable lettuce_1) (iscuttable lettuce_2) (iscuttable lettuce_3)
    (iscuttable tomato_1)
    (iscookable chicken_1) (iscookable chicken_2)
    ; lettuce_1: stack-level 0 at board_1
    (on lettuce_1 board_1)
    (at lettuce_1 board_1)
    ; lettuce_2: stack-level 0 at sink_1
    (on lettuce_2 sink_1)
    (at lettuce_2 sink_1)
    ; lettuce_3: stack-level 0 at table_4
    (on lettuce_3 table_4)
    (at lettuce_3 table_4)
    ; tomato_1: stack-level 0 at table_2
    (on tomato_1 table_2)
    (at tomato_1 table_2)
    ; bread_1: stack-level 0 at table_1
    (on bread_1 table_1)
    (at bread_1 table_1)
    ; bread_2: stack-level 0 at board_2
    (on bread_2 board_2)
    (at bread_2 board_2)
    ; chicken_1: stack-level 0 at stove_2
    (on chicken_1 stove_2)
    (at chicken_1 stove_2)
    ; chicken_2: stack-level 0 at table_3
    (on chicken_2 table_3)
    (at chicken_2 table_3)
    ; Clear: topmost item at each occupied station and not held
    (clear lettuce_1)
    (clear lettuce_2)
    (clear lettuce_3)
    (clear tomato_1)
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    (clear chicken_2)
    ; Empty: stations with no items on surface (stack-level 0)
    (empty stove_1)
    (empty fryer_1)
    (empty sink_1)
    ; Vacant: stations where no player stands
    (vacant board_1) (vacant stove_1) (vacant stove_2) (vacant fryer_1)
    (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4)
    (vacant sink_1)
    ; item-free: all items start free
    (item-free lettuce_1) (item-free lettuce_2) (item-free lettuce_3)
    (item-free tomato_1) (item-free bottombun_1)
    (item-free bread_1) (item-free bread_2)
    (item-free chicken_1) (item-free chicken_2)
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
