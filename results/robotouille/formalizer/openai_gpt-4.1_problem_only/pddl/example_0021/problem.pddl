(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_2 table_4 table_3 table_1 - station
    fryer_2 fryer_1 - station
    sink_1 - station
    stove_2 stove_1 - station
    board_1 - station
    bread_1 bread_3 bread_2 - item
    chicken_1 - item
    topbun_1 topbun_2 - item
    patty_1 - item
    lettuce_1 - item
    tomato_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_2)
    (istable table_4)
    (istable table_3)
    (istable table_1)
    (isfryer fryer_2)
    (isfryer fryer_1)
    (issink sink_1)
    (isstove stove_2)
    (isstove stove_1)
    (isboard board_1)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (isbread bread_1)
    (isbread bread_3)
    (isbread bread_2)
    (ischicken chicken_1)
    (istopbun topbun_1)
    (istopbun topbun_2)
    (ispatty patty_1)
    (islettuce lettuce_1)
    (istomato tomato_1)

    ; Item capabilities
    (isfryable chicken_1)
    (iscookable patty_1)
    (iscuttable lettuce_1)
    (iscuttable tomato_1)

    ; Player location
    (loc robot_1 table_2)

    ; Player hand state
    (nothing robot_1)

    ; Item locations (on/at/atop/has)
    (on bread_1 table_2)
    (at bread_1 table_2)
    (on bread_3 board_1)
    (at bread_3 board_1)
    (on bread_2 sink_1)
    (at bread_2 sink_1)
    (on chicken_1 fryer_2)
    (at chicken_1 fryer_2)
    (on topbun_1 stove_1)
    (at topbun_1 stove_1)
    (on patty_1 stove_2)
    (at patty_1 stove_2)
    (on topbun_2 table_3)
    (at topbun_2 table_3)
    (on lettuce_1 table_4)
    (at lettuce_1 table_4)
    (on tomato_1 table_1)
    (at tomato_1 table_1)

    ; Clear items (no item is atop these and not held)
    (clear bread_1)
    (clear bread_3)
    (clear bread_2)
    (clear chicken_1)
    (clear topbun_1)
    (clear patty_1)
    (clear topbun_2)
    (clear lettuce_1)
    (clear tomato_1)

    ; Empty stations (no item with stack-level 0 on them)
    (empty fryer_1)

    ; Vacant stations (no player at these stations except table_2)
    (vacant fryer_2)
    (vacant table_4)
    (vacant table_3)
    (vacant sink_1)
    (vacant stove_2)
    (vacant stove_1)
    (vacant table_1)
    (vacant board_1)
    (vacant fryer_1)

    ; All items start item-free
    (item-free bread_1)
    (item-free bread_3)
    (item-free bread_2)
    (item-free chicken_1)
    (item-free topbun_1)
    (item-free patty_1)
    (item-free topbun_2)
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
