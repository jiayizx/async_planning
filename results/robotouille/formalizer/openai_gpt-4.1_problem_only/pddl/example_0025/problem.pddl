(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_4 table_3 table_1 fryer_1 stove_1 table_2 board_1 - station
    robot_1 - player
    tomato_1 chicken_2 bottombun_1 chicken_1 bread_2 bread_1 lettuce_1 - item
  )
  (:init
    ; Station identity
    (istable table_4)
    (istable table_3)
    (istable table_1)
    (isfryer fryer_1)
    (isstove stove_1)
    (istable table_2)
    (isboard board_1)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (istomato tomato_1)
    (ischicken chicken_2)
    (isbottombun bottombun_1)
    (ischicken chicken_1)
    (isbread bread_2)
    (isbread bread_1)
    (islettuce lettuce_1)

    ; Item capabilities
    (iscuttable tomato_1)
    (iscookable chicken_2)
    (isfryable chicken_1)
    (iscuttable lettuce_1)

    ; Player location
    (loc robot_1 table_4)

    ; Player hand state
    (has robot_1 bottombun_1)

    ; Item locations (on/at/atop/has)
    (on tomato_1 fryer_1)
    (at tomato_1 fryer_1)
    (on chicken_2 board_1)
    (at chicken_2 board_1)
    (on chicken_1 table_3)
    (at chicken_1 table_3)
    (on bread_2 table_4)
    (at bread_2 table_4)
    (on bread_1 stove_1)
    (at bread_1 stove_1)
    (on lettuce_1 table_1)
    (at lettuce_1 table_1)

    ; Clear predicates
    (clear tomato_1)
    (clear chicken_2)
    (clear chicken_1)
    (clear bread_2)
    (clear bread_1)
    (clear lettuce_1)
    ; bottombun_1 is held, so not clear

    ; Empty stations (no item with stack-level 0 on them)
    (empty table_2)

    ; Vacant stations (no player at them)
    (vacant table_3)
    (vacant table_1)
    (vacant fryer_1)
    (vacant stove_1)
    (vacant table_2)
    (vacant board_1)

    ; All items start item-free
    (item-free tomato_1)
    (item-free chicken_2)
    (item-free bottombun_1)
    (item-free chicken_1)
    (item-free bread_2)
    (item-free bread_1)
    (item-free lettuce_1)
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
