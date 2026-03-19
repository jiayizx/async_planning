(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 board_1 stove_1 sink_1 - station
    robot_1 - player
    bread_3 bread_1 bread_2 chicken_1 lettuce_1 - item
  )

  (:init
    ; --- station identities ---
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5)
    (isboard board_1) (isstove stove_1) (issink sink_1)

    ; --- player identity and location ---
    (isrobot robot_1)
    (loc robot_1 table_1)

    ; --- item identities ---
    (isbread bread_3) (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1)
    (islettuce lettuce_1)

    ; --- capability flags ---
    (iscookable chicken_1)
    (iscuttable lettuce_1)

    ; --- physical placement (all items are stack-level 0 / not held) ---
    (on bread_3 table_4) (at bread_3 table_4)
    (on bread_1 table_1) (at bread_1 table_1)
    (on bread_2 table_2) (at bread_2 table_2)
    (on chicken_1 table_3) (at chicken_1 table_3)
    (on lettuce_1 sink_1) (at lettuce_1 sink_1)

    ; --- clear: no item has another atop it ---
    (clear bread_3) (clear bread_1) (clear bread_2) (clear chicken_1) (clear lettuce_1)

    ; --- empty stations (no stack-level-0 item present) ---
    (empty table_5) (empty board_1) (empty stove_1)

    ; --- vacant stations (not occupied by player) ---
    (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5) (vacant board_1) (vacant stove_1) (vacant sink_1)

    ; --- player hand state ---
    (nothing robot_1)

    ; --- all items start free ---
    (item-free bread_3) (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free lettuce_1)
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
