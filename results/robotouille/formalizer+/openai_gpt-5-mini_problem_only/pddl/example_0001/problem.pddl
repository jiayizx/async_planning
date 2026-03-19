(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_2 table_1 sink_1 table_3 table_4 - station
    stove_4 stove_3 stove_2 stove_1 - station
    board_1 - station
    bread_1 chicken_1 bread_2 topbun_1 patty_1 topbun_2 bread_3 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_2) (istable table_1) (istable table_3) (istable table_4)
    (isstove stove_4) (isstove stove_3) (isstove stove_2) (isstove stove_1)
    (isboard board_1)
    (issink sink_1)
    ; Item identity
    (isbread bread_1) (ischicken chicken_1) (isbread bread_2) (istopbun topbun_1)
    (ispatty patty_1) (istopbun topbun_2) (isbread bread_3) (ischeese cheese_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_2)
    (nothing robot_1)
    ; Capability flags
    (iscookable chicken_1) (iscookable patty_1)
    ; Item placements (stack-level 0 -> on + at)
    (on bread_1 table_2) (at bread_1 table_2)
    (on chicken_1 table_3) (at chicken_1 table_3)
    (on bread_2 sink_1) (at bread_2 sink_1)
    (on topbun_1 stove_1) (at topbun_1 stove_1)
    (on patty_1 stove_3) (at patty_1 stove_3)
    (on topbun_2 board_1) (at topbun_2 board_1)
    (on bread_3 stove_4) (at bread_3 stove_4)
    (on cheese_1 table_1) (at cheese_1 table_1)
    ; Clear: all items are topmost (no atop relationships)
    (clear bread_1) (clear chicken_1) (clear bread_2) (clear topbun_1)
    (clear patty_1) (clear topbun_2) (clear bread_3) (clear cheese_1)
    ; Empty stations (no stack-level 0 items there)
    (empty stove_2) (empty table_4)
    ; Vacant: stations where no player stands (robot at table_2)
    (vacant stove_4) (vacant table_1) (vacant sink_1) (vacant stove_3)
    (vacant board_1) (vacant stove_2) (vacant table_3) (vacant stove_1) (vacant table_4)
    ; item-free: all items start free
    (item-free bread_1) (item-free chicken_1) (item-free bread_2) (item-free topbun_1)
    (item-free patty_1) (item-free topbun_2) (item-free bread_3) (item-free cheese_1)
  )
  (:goal (and
    (on bread_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at cheese_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
