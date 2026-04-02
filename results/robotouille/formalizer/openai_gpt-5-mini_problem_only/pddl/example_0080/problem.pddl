(define (problem robotouille-problem-1)
  (:domain robotouille)
  (:objects
    table_1 table_5 table_6 table_7 table_8 table_4 table_3 table_2 - station
    board_1 board_2 - station
    stove_1 - station
    sink_1 sink_2 - station

    tomato_1 onion_1 chicken_1 chicken_2 bread_2 bread_3 bread_1 bread_4 - item

    robot_1 - player
  )

  (:init
    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_1)

    ; station identity
    (istable table_1) (istable table_5) (istable table_6) (istable table_7) (istable table_8) (istable table_4) (istable table_3) (istable table_2)
    (isboard board_1) (isboard board_2)
    (isstove stove_1)
    (issink sink_1) (issink sink_2)

    ; item identities
    (istomato tomato_1) (isonion onion_1) (ischicken chicken_1) (ischicken chicken_2)
    (isbread bread_2) (isbread bread_3) (isbread bread_1) (isbread bread_4)

    ; item capability predicates
    (iscuttable tomato_1) (iscuttable onion_1)
    (iscookable chicken_1) (iscookable chicken_2)

    ; spatial / possession
    (on tomato_1 table_1) (at tomato_1 table_1)
    (on onion_1 table_5) (at onion_1 table_5)
    (on chicken_1 board_1) (at chicken_1 board_1)
    (on chicken_2 stove_1) (at chicken_2 stove_1)
    (on bread_2 sink_1) (at bread_2 sink_1)
    (on bread_3 table_6) (at bread_3 table_6)
    (has robot_1 bread_1)
    (on bread_4 sink_2) (at bread_4 sink_2)

    ; clear: all items that are not held by a player and have nothing atop them
    (clear tomato_1) (clear onion_1) (clear chicken_1) (clear chicken_2)
    (clear bread_2) (clear bread_3) (clear bread_4)

    ; empty stations (no stack-level-0 item on them)
    (empty table_7) (empty table_8) (empty board_2) (empty table_4) (empty table_3) (empty table_2)

    ; vacant stations (not occupied by a player)
    (vacant table_5) (vacant table_6) (vacant table_7) (vacant table_8) (vacant board_1) (vacant board_2)
    (vacant stove_1) (vacant sink_1) (vacant sink_2) (vacant table_4) (vacant table_3) (vacant table_2)

    ; player hand state: robot is holding bread_1 (so no (nothing robot_1) fact)

    ; all items start free (not being processed)
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
