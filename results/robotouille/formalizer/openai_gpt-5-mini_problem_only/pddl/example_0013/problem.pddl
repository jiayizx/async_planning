(define (problem robotouille-prob)
  (:domain robotouille)
  (:objects
    board_1 board_2 board_3 - station
    stove_1 stove_2 - station
    sink_1 sink_2 - station
    fryer_1 - station
    table_1 table_2 table_3 - station

    bread_1 bread_2 lettuce_1 lettuce_2 topbun_1 chicken_1 - item

    robot_1 - player
  )

  (:init
    ; station identity
    (isboard board_1) (isboard board_2) (isboard board_3)
    (isstove stove_1) (isstove stove_2)
    (issink sink_1) (issink sink_2)
    (isfryer fryer_1)
    (istable table_1) (istable table_2) (istable table_3)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 board_1)

    ; item identities
    (isbread bread_1) (isbread bread_2)
    (islettuce lettuce_1) (islettuce lettuce_2)
    (istopbun topbun_1)
    (ischicken chicken_1)

    ; capability flags
    (iscuttable lettuce_2) (iscuttable lettuce_1)
    (iscookable chicken_1)

    ; spatial / possession
    (on bread_1 board_1) (at bread_1 board_1)
    (on bread_2 board_2) (at bread_2 board_2)
    (on lettuce_2 table_2) (at lettuce_2 table_2)
    (on topbun_1 sink_2) (at topbun_1 sink_2)
    (on lettuce_1 stove_1) (at lettuce_1 stove_1)
    (has robot_1 chicken_1)

    ; clear: items that are not topped by anything and not held
    (clear bread_1) (clear bread_2) (clear lettuce_2) (clear topbun_1) (clear lettuce_1)

    ; empty stations (no item with stack-level 0 on them)
    (empty stove_2) (empty board_3) (empty fryer_1) (empty table_3) (empty table_1) (empty sink_1)

    ; vacant stations (no player at them)
    (vacant board_2) (vacant board_3) (vacant stove_1) (vacant stove_2)
    (vacant sink_1) (vacant sink_2) (vacant fryer_1)
    (vacant table_1) (vacant table_2) (vacant table_3)

    ; player hand state: robot_1 is holding an item, so do NOT add (nothing robot_1)

    ; all items start free
    (item-free bread_1) (item-free bread_2) (item-free lettuce_1) (item-free lettuce_2) (item-free topbun_1) (item-free chicken_1)
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
