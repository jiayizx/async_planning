(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    fryer_1 fryer_2 - station
    board_1 board_2 - station
    stove_1 stove_2 - station
    table_1 table_2 table_3 table_4 table_5 - station
    robot_1 - player
    potato_1 topbun_1 tomato_1 cheese_1 tomato_2 patty_1 bottombun_1 - item
  )
  (:init
    ;;; Station identity
    (isfryer fryer_1)
    (isfryer fryer_2)
    (isboard board_1)
    (isboard board_2)
    (isstove stove_1)
    (isstove stove_2)
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)

    ;;; Player identity
    (isrobot robot_1)

    ;;; Item identity
    (ispotato potato_1)
    (istopbun topbun_1)
    (istomato tomato_1)
    (ischeese cheese_1)
    (istomato tomato_2)
    (ispatty patty_1)
    (isbottombun bottombun_1)

    ;;; Item capabilities
    (iscuttable potato_1)
    (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscuttable tomato_2)
    (iscookable patty_1)

    ;;; Player location
    (loc robot_1 fryer_1)

    ;;; Player hand state
    (has robot_1 tomato_2)

    ;;; Item locations (not held)
    (on potato_1 board_2)
    (at potato_1 board_2)
    (on topbun_1 table_4)
    (at topbun_1 table_4)
    (on tomato_1 stove_1)
    (at tomato_1 stove_1)
    (on cheese_1 table_2)
    (at cheese_1 table_2)
    (on patty_1 table_3)
    (at patty_1 table_3)
    (on bottombun_1 fryer_1)
    (at bottombun_1 fryer_1)

    ;;; Item-free for all items
    (item-free potato_1)
    (item-free topbun_1)
    (item-free tomato_1)
    (item-free cheese_1)
    (item-free tomato_2)
    (item-free patty_1)
    (item-free bottombun_1)

    ;;; Clear predicates (no item is atop another, and not held)
    (clear potato_1)
    (clear topbun_1)
    (clear tomato_1)
    (clear cheese_1)
    (clear patty_1)
    (clear bottombun_1)

    ;;; Empty stations (no item with stack-level 0 on them)
    (empty table_1)
    (empty stove_2)
    (empty fryer_2)
    (empty board_1)
    (empty table_5)

    ;;; Vacant stations (no player at them)
    (vacant fryer_2)
    (vacant board_1)
    (vacant board_2)
    (vacant stove_1)
    (vacant stove_2)
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
  )
  (:goal (and
    (on bottombun_1 table_1)
    (iscooked patty_1)
    (at patty_1 table_1)
    (iscut tomato_1)
    (at tomato_1 table_1)
    (at topbun_1 table_1)
    (clear topbun_1)
    (iscut potato_1)
    (isfried potato_1)
    (on potato_1 table_2)
  ))
)
