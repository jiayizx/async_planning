(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    board_1 board_2 board_3 stove_1 sink_1 table_1 table_2 table_3 table_4 table_5 table_6 - station
    robot_1 - player
    patty_1 cheese_1 bread_1 bread_2 chicken_1 lettuce_1 - item
  )
  (:init
    ; Station identity
    (isboard board_1)
    (isboard board_2)
    (isboard board_3)
    (isstove stove_1)
    (issink sink_1)
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (istable table_6)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (ispatty patty_1)
    (ischeese cheese_1)
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (islettuce lettuce_1)

    ; Item capabilities
    (iscookable patty_1)
    (iscookable chicken_1)
    (iscuttable lettuce_1)

    ; Player location
    (loc robot_1 board_1)

    ; Item locations (on/at for stack-level 0)
    (on patty_1 table_1)
    (at patty_1 table_1)
    (on cheese_1 board_3)
    (at cheese_1 board_3)
    (on bread_1 table_4)
    (at bread_1 table_4)
    (on bread_2 table_5)
    (at bread_2 table_5)
    (on chicken_1 board_1)
    (at chicken_1 board_1)
    (on lettuce_1 table_3)
    (at lettuce_1 table_3)

    ; Clear predicates (no item is atop another and none are held)
    (clear patty_1)
    (clear cheese_1)
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    (clear lettuce_1)

    ; Empty stations (no item with stack-level 0 on them)
    (empty board_2)
    (empty table_2)
    (empty stove_1)
    (empty sink_1)
    (empty table_6)

    ; Vacant stations (no player at them)
    (vacant board_2)
    (vacant board_3)
    (vacant stove_1)
    (vacant sink_1)
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant table_6)

    ; Player hand state
    (nothing robot_1)

    ; All items start item-free
    (item-free patty_1)
    (item-free cheese_1)
    (item-free bread_1)
    (item-free bread_2)
    (item-free chicken_1)
    (item-free lettuce_1)
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
