(define (problem tomato-soup-and-lettuce-chicken)
  (:domain robotouille)
  (:objects
    table_6 table_1 stove_1 table_4 board_1 sink_1 table_3 table_5 table_2 - station
    tomato_1 lettuce_1 chicken_1 bread_2 bread_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_6) (istable table_1) (isstove stove_1) (istable table_4)
    (isboard board_1) (issink sink_1) (istable table_3) (istable table_5) (istable table_2)
    ; Item identity
    (istomato tomato_1) (islettuce lettuce_1) (ischicken chicken_1) (isbread bread_2) (isbread bread_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_6)
    (nothing robot_1)
    ; Capability flags
    (iscuttable tomato_1) (iscuttable lettuce_1)
    (iscookable chicken_1)
    ; Items on surfaces (stack-level 0)
    (on tomato_1 table_6) (at tomato_1 table_6)
    (on lettuce_1 table_1) (at lettuce_1 table_1)
    (on chicken_1 stove_1) (at chicken_1 stove_1)
    (on bread_2 table_4) (at bread_2 table_4)
    (on bread_1 board_1) (at bread_1 board_1)
    ; Clear: topmost items (no atop relations present)
    (clear tomato_1) (clear lettuce_1) (clear chicken_1) (clear bread_2) (clear bread_1)
    ; Empty stations (no item with stack-level 0 at their location)
    (empty table_3) (empty table_5) (empty table_2) (empty sink_1)
    ; Vacant stations (no player stands there)
    (vacant table_1) (vacant stove_1) (vacant table_4) (vacant board_1)
    (vacant table_3) (vacant table_5) (vacant sink_1) (vacant table_2)
    ; item-free: all items start free
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