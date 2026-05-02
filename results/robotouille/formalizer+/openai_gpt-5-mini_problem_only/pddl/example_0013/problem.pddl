(define (problem lettuce-chicken-sandwich)
  (:domain robotouille)
  (:objects
    board_1 board_2 stove_1 sink_2 stove_2 board_3 fryer_1 table_2 table_3 table_1 sink_1 - station
    lettuce_2 topbun_1 bread_1 bread_2 chicken_1 lettuce_1 - item
    robot_1 - player
  )
  (:init
    ; station identity
    (isboard board_1) (isboard board_2) (isstove stove_1) (issink sink_2) (isstove stove_2)
    (isboard board_3) (isfryer fryer_1) (istable table_2) (istable table_3) (istable table_1) (issink sink_1)
    ; item identity
    (islettuce lettuce_2) (istopbun topbun_1) (isbread bread_1) (isbread bread_2) (ischicken chicken_1) (islettuce lettuce_1)
    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 board_1)
    ; player is holding chicken_1
    (has robot_1 chicken_1)
    ; capability flags
    (iscuttable lettuce_2) (iscuttable lettuce_1) (iscookable chicken_1)
    ; item placements (held items omitted)
    (on lettuce_2 table_2) (at lettuce_2 table_2)
    (on topbun_1 sink_2) (at topbun_1 sink_2)
    (on bread_1 board_1) (at bread_1 board_1)
    (on bread_2 board_2) (at bread_2 board_2)
    (on lettuce_1 stove_1) (at lettuce_1 stove_1)
    ; clear: topmost items not held
    (clear lettuce_2) (clear topbun_1) (clear bread_1) (clear bread_2) (clear lettuce_1)
    ; empty stations (no stack-level-0 item present)
    (empty stove_2) (empty board_3) (empty fryer_1) (empty table_3) (empty table_1) (empty sink_1)
    ; vacant stations (no player present)
    (vacant board_2) (vacant stove_1) (vacant sink_2) (vacant stove_2) (vacant board_3) (vacant fryer_1) (vacant table_2) (vacant table_3) (vacant table_1) (vacant sink_1)
    ; item-free for all items
    (item-free lettuce_2) (item-free topbun_1) (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free lettuce_1)
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