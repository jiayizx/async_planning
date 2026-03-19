(define (problem fried-chicken-sandwich)
  (:domain robotouille)
  (:objects
    fryer_1 fryer_2 stove_1 table_1 table_2 table_3 table_4 board_1 board_2 board_3 sink_1 - station
    bread_1 bread_2 chicken_1 lettuce_1 cheese_1 tomato_1 tomato_2 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (isfryer fryer_1) (isfryer fryer_2)
    (isstove stove_1)
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    (isboard board_1) (isboard board_2) (isboard board_3)
    (issink sink_1)
    ; Item identity
    (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1)
    (islettuce lettuce_1)
    (ischeese cheese_1)
    (istomato tomato_1) (istomato tomato_2)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 fryer_1)
    ; Player is holding tomato_1
    (has robot_1 tomato_1)
    ; Capability flags
    (isfryable chicken_1)
    (iscuttable lettuce_1)
    (iscuttable tomato_1)
    (iscuttable tomato_2)
    ; bread_2: stack-level 0 on board_3
    (on bread_2 board_3)
    (at bread_2 board_3)
    ; chicken_1: stack-level 0 on board_2
    (on chicken_1 board_2)
    (at chicken_1 board_2)
    ; lettuce_1: stack-level 0 on stove_1
    (on lettuce_1 stove_1)
    (at lettuce_1 stove_1)
    ; cheese_1: stack-level 0 on board_1
    (on cheese_1 board_1)
    (at cheese_1 board_1)
    ; tomato_2: stack-level 0 on table_3
    (on tomato_2 table_3)
    (at tomato_2 table_3)
    ; bread_1: stack-level 0 on fryer_1
    (on bread_1 fryer_1)
    (at bread_1 fryer_1)
    ; clear: topmost items at each occupied station (not held, not below another item)
    (clear bread_2)
    (clear chicken_1)
    (clear lettuce_1)
    (clear cheese_1)
    (clear tomato_2)
    (clear bread_1)
    ; empty: stations with no items on surface (stack-level 0)
    (empty fryer_2)
    (empty table_1)
    (empty table_2)
    (empty table_4)
    (empty sink_1)
    ; vacant: stations where no player stands
    (vacant fryer_2)
    (vacant stove_1)
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant board_1)
    (vacant board_2)
    (vacant board_3)
    (vacant sink_1)
    ; item-free: all items start free
    (item-free bread_1)
    (item-free bread_2)
    (item-free chicken_1)
    (item-free lettuce_1)
    (item-free cheese_1)
    (item-free tomato_1)
    (item-free tomato_2)
  )
  (:goal (and
    (on bread_1 table_1)
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    (iscut tomato_1)
    (at tomato_1 table_1)
    (isfried chicken_1)
    (at chicken_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
