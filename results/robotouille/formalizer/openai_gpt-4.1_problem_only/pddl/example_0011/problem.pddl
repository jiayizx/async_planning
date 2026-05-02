(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_2 table_3 stove_4 table_1 board_1 sink_1 stove_3 stove_2 table_4 stove_1 - station
    bread_1 bread_3 bread_2 chicken_1 topbun_1 patty_1 topbun_2 lettuce_1 - item
    robot_1 - player
  )
  (:init
    ;;; Station identity
    (istable table_2)
    (istable table_3)
    (isstove stove_4)
    (istable table_1)
    (isboard board_1)
    (issink sink_1)
    (isstove stove_3)
    (isstove stove_2)
    (istable table_4)
    (isstove stove_1)

    ;;; Player identity
    (isrobot robot_1)

    ;;; Item identity
    (isbread bread_1)
    (isbread bread_3)
    (isbread bread_2)
    (ischicken chicken_1)
    (istopbun topbun_1)
    (ispatty patty_1)
    (istopbun topbun_2)
    (islettuce lettuce_1)

    ;;; Item capabilities
    (iscookable chicken_1)
    (iscookable patty_1)
    (iscuttable lettuce_1)

    ;;; Player location
    (loc robot_1 table_2)

    ;;; Player hand state
    (nothing robot_1)

    ;;; Item locations (on/at/atop/has)
    (on bread_1 table_2)
    (at bread_1 table_2)
    (on bread_3 table_4)
    (at bread_3 table_4)
    (on bread_2 sink_1)
    (at bread_2 sink_1)
    (on chicken_1 table_3)
    (at chicken_1 table_3)
    (on topbun_1 stove_1)
    (at topbun_1 stove_1)
    (on patty_1 stove_3)
    (at patty_1 stove_3)
    (on topbun_2 board_1)
    (at topbun_2 board_1)
    (on lettuce_1 stove_4)
    (at lettuce_1 stove_4)

    ;;; Clear predicates
    (clear bread_1)
    (clear bread_3)
    (clear bread_2)
    (clear chicken_1)
    (clear topbun_1)
    (clear patty_1)
    (clear topbun_2)
    (clear lettuce_1)

    ;;; Empty stations (no item with stack-level 0 on them)
    (empty table_1)
    (empty stove_2)

    ;;; Vacant stations (no player at them)
    (vacant table_3)
    (vacant stove_4)
    (vacant table_1)
    (vacant board_1)
    (vacant sink_1)
    (vacant stove_3)
    (vacant stove_2)
    (vacant table_4)
    (vacant stove_1)

    ;;; All items start item-free
    (item-free bread_1)
    (item-free bread_3)
    (item-free bread_2)
    (item-free chicken_1)
    (item-free topbun_1)
    (item-free patty_1)
    (item-free topbun_2)
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
