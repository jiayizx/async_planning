(define (problem soup-chicken-sandwiches)
  (:domain robotouille)
  (:objects
    table_1 table_5 board_1 stove_1 table_6 sink_2 table_7 table_8 board_2 sink_1 table_4 table_3 table_2 - station
    tomato_1 onion_1 chicken_1 chicken_2 bread_2 bread_3 bread_1 bread_4 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_5) (isboard board_1) (isstove stove_1)
    (istable table_6) (issink sink_2) (istable table_7) (istable table_8)
    (isboard board_2) (issink sink_1) (istable table_4) (istable table_3) (istable table_2)

    ; Item identity
    (istomato tomato_1) (isonion onion_1)
    (ischicken chicken_1) (ischicken chicken_2)
    (isbread bread_2) (isbread bread_3) (isbread bread_1) (isbread bread_4)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_1)
    ; robot_1 is holding bread_1, so no (nothing robot_1)
    (has robot_1 bread_1)

    ; Capability flags
    (iscuttable tomato_1) (iscuttable onion_1)
    (iscookable chicken_1) (iscookable chicken_2)

    ; Item placements (held items use has ...)
    (on tomato_1 table_1) (at tomato_1 table_1)
    (on onion_1 table_5) (at onion_1 table_5)
    (on chicken_1 board_1) (at chicken_1 board_1)
    (on chicken_2 stove_1) (at chicken_2 stove_1)
    (on bread_2 sink_1) (at bread_2 sink_1)
    (on bread_3 table_6) (at bread_3 table_6)
    ; bread_1 is held by robot_1 (no at/on)
    (on bread_4 sink_2) (at bread_4 sink_2)

    ; Clear: all topmost items (no stacks present) and not held
    (clear tomato_1) (clear onion_1) (clear chicken_1) (clear chicken_2)
    (clear bread_2) (clear bread_3) (clear bread_4)

    ; Empty stations: those with no stack-level-0 item on their surface
    (empty table_7) (empty table_8) (empty board_2) (empty table_4) (empty table_3) (empty table_2)

    ; Vacant: stations where no player stands (robot_1 at table_1)
    (vacant table_5) (vacant board_1) (vacant stove_1) (vacant table_6) (vacant sink_2)
    (vacant table_7) (vacant table_8) (vacant board_2) (vacant sink_1) (vacant table_4) (vacant table_3) (vacant table_2)

    ; Player hand state: robot_1 is holding bread_1 so no (nothing robot_1)

    ; item-free: all items start free
    (item-free tomato_1) (item-free onion_1) (item-free chicken_1) (item-free chicken_2)
    (item-free bread_2) (item-free bread_3) (item-free bread_1) (item-free bread_4)
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