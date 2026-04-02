(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_3 table_1 table_2 table_4 - station
    board_1 - station
    fryer_1 - station
    robot_1 - player
    bread_2 bread_1 chicken_1 lettuce_1 tomato_1 - item
  )
  (:init
    ; Station identity
    (istable table_3)
    (istable table_1)
    (istable table_2)
    (istable table_4)
    (isboard board_1)
    (isfryer fryer_1)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (isbread bread_2)
    (isbread bread_1)
    (ischicken chicken_1)
    (islettuce lettuce_1)
    (istomato tomato_1)

    ; Item capabilities
    (isfryable chicken_1)
    (iscuttable lettuce_1)
    (iscuttable tomato_1)

    ; Player location
    (loc robot_1 table_3)

    ; Player hand state
    ; robot_1 is holding lettuce_1
    (has robot_1 lettuce_1)

    ; Items on stations
    (on bread_2 table_3)
    (at bread_2 table_3)
    (on bread_1 board_1)
    (at bread_1 board_1)
    (on chicken_1 fryer_1)
    (at chicken_1 fryer_1)
    (on tomato_1 table_1)
    (at tomato_1 table_1)
    ; lettuce_1 is held, so no on/at

    ; Clear predicates
    (clear bread_2)
    (clear bread_1)
    (clear chicken_1)
    (clear tomato_1)
    ; lettuce_1 is held, so not clear

    ; Empty stations (no item with stack-level 0 on them)
    (empty table_2)
    (empty table_4)

    ; Vacant stations (no player at them)
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant board_1)
    (vacant fryer_1)

    ; All items start item-free
    (item-free bread_2)
    (item-free bread_1)
    (item-free chicken_1)
    (item-free lettuce_1)
    (item-free tomato_1)
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
