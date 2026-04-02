(define (problem lettuce-chicken-table)
  (:domain robotouille)
  (:objects
    fryer_1 table_3 board_1 stove_1 table_1 table_2 - station
    chicken_1 bread_2 bread_1 lettuce_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (isfryer fryer_1) (istable table_3) (isboard board_1) (isstove stove_1) (istable table_1) (istable table_2)
    ; Item identity
    (ischicken chicken_1) (isbread bread_2) (isbread bread_1) (islettuce lettuce_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 fryer_1)
    (nothing robot_1)
    ; Capability flags
    (iscookable chicken_1)
    (iscuttable lettuce_1)
    ; Item locations (stack-level 0 -> on + at)
    (on chicken_1 board_1) (at chicken_1 board_1)
    (on bread_2 table_3) (at bread_2 table_3)
    (on bread_1 fryer_1) (at bread_1 fryer_1)
    (on lettuce_1 stove_1) (at lettuce_1 stove_1)
    ; Clear: topmost items
    (clear chicken_1) (clear bread_2) (clear bread_1) (clear lettuce_1)
    ; Empty stations (no item at surface)
    (empty table_1) (empty table_2)
    ; Vacant stations (no player at)
    (vacant table_3) (vacant board_1) (vacant stove_1) (vacant table_1) (vacant table_2)
    ; All items start free
    (item-free chicken_1) (item-free bread_2) (item-free bread_1) (item-free lettuce_1)
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