(define (problem lettuce-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_2 table_3 table_1 table_4 - station
    stove_4 stove_3 stove_2 stove_1 - station
    board_1 sink_1 - station

    bread_1 bread_2 bread_3 chicken_1 topbun_1 topbun_2 patty_1 lettuce_1 - item

    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_2) (istable table_3) (istable table_1) (istable table_4)
    (isstove stove_4) (isstove stove_3) (isstove stove_2) (isstove stove_1)
    (isboard board_1) (issink sink_1)

    ; Item identity
    (isbread bread_1) (isbread bread_2) (isbread bread_3)
    (ischicken chicken_1)
    (istopbun topbun_1) (istopbun topbun_2)
    (ispatty patty_1)
    (islettuce lettuce_1)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_2)
    (nothing robot_1)

    ; Capability flags
    (iscookable chicken_1) (iscookable patty_1)
    (iscuttable lettuce_1)

    ; Item positions (stack-level 0 -> on + at)
    (on bread_1 table_2) (at bread_1 table_2)
    (on bread_3 table_4) (at bread_3 table_4)
    (on bread_2 sink_1) (at bread_2 sink_1)
    (on chicken_1 table_3) (at chicken_1 table_3)
    (on topbun_1 stove_1) (at topbun_1 stove_1)
    (on patty_1 stove_3) (at patty_1 stove_3)
    (on topbun_2 board_1) (at topbun_2 board_1)
    (on lettuce_1 stove_4) (at lettuce_1 stove_4)

    ; Clear: all topmost items (no atop relations present)
    (clear bread_1) (clear bread_3) (clear bread_2)
    (clear chicken_1) (clear topbun_1) (clear patty_1) (clear topbun_2) (clear lettuce_1)

    ; Empty stations (no stack-level 0 items at these stations)
    (empty table_1) (empty stove_2)

    ; Vacant stations (player at table_2, so all others vacant)
    (vacant table_3) (vacant table_1) (vacant table_4)
    (vacant stove_4) (vacant stove_3) (vacant stove_2) (vacant stove_1)
    (vacant board_1) (vacant sink_1)

    ; All items start free (not being processed)
    (item-free bread_1) (item-free bread_3) (item-free bread_2)
    (item-free chicken_1) (item-free topbun_1) (item-free patty_1)
    (item-free topbun_2) (item-free lettuce_1)
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
