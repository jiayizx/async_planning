(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    board_1 board_2 board_3 - station
    stove_1 stove_2 - station
    sink_1 sink_2 - station
    fryer_1 - station
    table_1 table_2 table_3 - station
    robot_1 - player
    lettuce_1 lettuce_2 - item
    topbun_1 - item
    bread_1 bread_2 - item
    chicken_1 - item
  )
  (:init
    ; Station identity
    (isboard board_1)
    (isboard board_2)
    (isboard board_3)
    (isstove stove_1)
    (isstove stove_2)
    (issink sink_1)
    (issink sink_2)
    (isfryer fryer_1)
    (istable table_1)
    (istable table_2)
    (istable table_3)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (islettuce lettuce_1)
    (islettuce lettuce_2)
    (istopbun topbun_1)
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)

    ; Item capabilities
    (iscuttable lettuce_1)
    (iscuttable lettuce_2)
    (iscookable chicken_1)

    ; Player location
    (loc robot_1 board_1)

    ; Player hand state
    (has robot_1 chicken_1)

    ; Item locations (not held)
    (on lettuce_2 table_2)
    (at lettuce_2 table_2)
    (on topbun_1 sink_2)
    (at topbun_1 sink_2)
    (on bread_1 board_1)
    (at bread_1 board_1)
    (on bread_2 board_2)
    (at bread_2 board_2)
    (on lettuce_1 stove_1)
    (at lettuce_1 stove_1)

    ; Clear predicates
    (clear lettuce_2)
    (clear topbun_1)
    (clear bread_1)
    (clear bread_2)
    (clear lettuce_1)

    ; Empty stations (no stack-level 0 item on them)
    (empty stove_2)
    (empty board_3)
    (empty fryer_1)
    (empty table_1)
    (empty table_3)
    (empty sink_1)

    ; Vacant stations (no player at them)
    (vacant board_2)
    (vacant board_3)
    (vacant stove_1)
    (vacant stove_2)
    (vacant sink_1)
    (vacant sink_2)
    (vacant fryer_1)
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)

    ; Item-free: all items start free
    (item-free lettuce_1)
    (item-free lettuce_2)
    (item-free topbun_1)
    (item-free bread_1)
    (item-free bread_2)
    (item-free chicken_1)
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
