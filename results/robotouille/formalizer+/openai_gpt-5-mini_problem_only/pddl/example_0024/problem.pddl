(define (problem fried-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_2 table_3 board_2 board_1 table_5 sink_1 table_4 stove_1 table_1 fryer_1 table_7 table_6 - station
    cheese_1 patty_1 bread_1 bread_2 chicken_1 lettuce_1 tomato_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_2) (istable table_3) (isboard board_2) (isboard board_1)
    (istable table_5) (issink sink_1) (istable table_4) (isstove stove_1)
    (istable table_1) (isfryer fryer_1) (istable table_7) (istable table_6)

    ; Item identity
    (ischeese cheese_1) (ispatty patty_1) (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1) (islettuce lettuce_1) (istomato tomato_1)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_2)
    (nothing robot_1)

    ; Capability flags
    (iscookable patty_1)
    (isfryable chicken_1)
    (iscuttable lettuce_1) (iscuttable tomato_1)

    ; Item locations (all stack-level 0 -> on + at)
    (on cheese_1 board_2) (at cheese_1 board_2)
    (on patty_1 table_5) (at patty_1 table_5)
    (on bread_1 stove_1) (at bread_1 stove_1)
    (on bread_2 table_6) (at bread_2 table_6)
    (on chicken_1 table_2) (at chicken_1 table_2)
    (on lettuce_1 table_4) (at lettuce_1 table_4)
    (on tomato_1 table_3) (at tomato_1 table_3)

    ; Clear: topmost items
    (clear cheese_1) (clear patty_1) (clear bread_1) (clear bread_2)
    (clear chicken_1) (clear lettuce_1) (clear tomato_1)

    ; Empty stations (no item with stack-level 0 on them)
    (empty board_1) (empty sink_1) (empty table_1) (empty fryer_1) (empty table_7)

    ; Vacant stations (no player stands there)
    (vacant table_3) (vacant board_2) (vacant board_1) (vacant table_5) (vacant sink_1)
    (vacant table_4) (vacant stove_1) (vacant table_1) (vacant fryer_1) (vacant table_7) (vacant table_6)

    ; item-free: all items start free
    (item-free cheese_1) (item-free patty_1) (item-free bread_1) (item-free bread_2)
    (item-free chicken_1) (item-free lettuce_1) (item-free tomato_1)
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