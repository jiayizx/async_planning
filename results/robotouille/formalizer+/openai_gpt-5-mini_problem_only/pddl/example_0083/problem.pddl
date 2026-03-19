(define (problem soup-two-chicken-sandwiches)
  (:domain robotouille)
  (:objects
    table_6 board_1 table_3 table_7 table_5 stove_1 table_4 sink_1 table_2 table_1 - station
    chicken_1 chicken_2 tomato_1 onion_1 bread_3 bread_1 bread_2 bread_4 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_6) (isboard board_1) (istable table_3) (istable table_7)
    (istable table_5) (isstove stove_1) (istable table_4) (issink sink_1)
    (istable table_2) (istable table_1)

    ; Item identity
    (ischicken chicken_1) (ischicken chicken_2) (istomato tomato_1) (isonion onion_1)
    (isbread bread_3) (isbread bread_1) (isbread bread_2) (isbread bread_4)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_6)
    (nothing robot_1)

    ; Capability flags
    (iscookable chicken_1) (iscookable chicken_2)
    (iscuttable tomato_1) (iscuttable onion_1)

    ; Item locations (stack-level 0 -> on & at)
    (on chicken_1 table_3) (at chicken_1 table_3)
    (on chicken_2 table_7) (at chicken_2 table_7)
    (on tomato_1 table_6) (at tomato_1 table_6)
    (on onion_1 board_1) (at onion_1 board_1)
    (on bread_3 table_5) (at bread_3 table_5)
    (on bread_1 stove_1) (at bread_1 stove_1)
    (on bread_2 table_4) (at bread_2 table_4)
    (on bread_4 sink_1) (at bread_4 sink_1)

    ; Clear: all topmost items (all items are single on their stations)
    (clear chicken_1) (clear chicken_2) (clear tomato_1) (clear onion_1)
    (clear bread_3) (clear bread_1) (clear bread_2) (clear bread_4)

    ; Empty: stations with no stack-level-0 items
    (empty table_2) (empty table_1)

    ; Vacant: stations where no player stands
    (vacant board_1) (vacant table_3) (vacant table_7) (vacant table_5)
    (vacant stove_1) (vacant table_4) (vacant sink_1) (vacant table_2) (vacant table_1)

    ; item-free: all items start free
    (item-free chicken_1) (item-free chicken_2) (item-free tomato_1) (item-free onion_1)
    (item-free bread_3) (item-free bread_1) (item-free bread_2) (item-free bread_4)
  )
  (:goal (and
    (iscut tomato_1)
    (iscut onion_1)
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
    (on bread_3 table_3)
    (iscooked chicken_2)
    (at chicken_2 table_3)
    (at bread_4 table_3)
    (clear bread_4)
  ))
)
