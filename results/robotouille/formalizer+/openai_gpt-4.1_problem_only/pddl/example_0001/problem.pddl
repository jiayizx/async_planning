(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 board_1 sink_1 stove_1 stove_2 stove_3 stove_4 - station
    bread_1 bread_2 bread_3 chicken_1 cheese_1 patty_1 topbun_1 topbun_2 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    (isboard board_1)
    (issink sink_1)
    (isstove stove_1) (isstove stove_2) (isstove stove_3) (isstove stove_4)
    ; Item identity
    (isbread bread_1) (isbread bread_2) (isbread bread_3)
    (ischicken chicken_1)
    (ischeese cheese_1)
    (ispatty patty_1)
    (istopbun topbun_1) (istopbun topbun_2)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_2)
    (nothing robot_1)
    ; Capability flags
    (iscookable chicken_1)
    (iscookable patty_1)
    ; bread_1: stack-level 0 on table_2
    (on bread_1 table_2)
    (at bread_1 table_2)
    ; chicken_1: stack-level 0 on table_3
    (on chicken_1 table_3)
    (at chicken_1 table_3)
    ; bread_2: stack-level 0 on sink_1
    (on bread_2 sink_1)
    (at bread_2 sink_1)
    ; topbun_1: stack-level 0 on stove_1
    (on topbun_1 stove_1)
    (at topbun_1 stove_1)
    ; patty_1: stack-level 0 on stove_3
    (on patty_1 stove_3)
    (at patty_1 stove_3)
    ; topbun_2: stack-level 0 on board_1
    (on topbun_2 board_1)
    (at topbun_2 board_1)
    ; bread_3: stack-level 0 on stove_4
    (on bread_3 stove_4)
    (at bread_3 stove_4)
    ; cheese_1: stack-level 0 on table_1
    (on cheese_1 table_1)
    (at cheese_1 table_1)
    ; Clear: topmost item at each occupied station
    (clear bread_1)
    (clear chicken_1)
    (clear bread_2)
    (clear topbun_1)
    (clear patty_1)
    (clear topbun_2)
    (clear bread_3)
    (clear cheese_1)
    ; Empty: stations with no items on surface (stack-level 0)
    (empty stove_2)
    (empty table_4)
    ; Vacant: stations where no player stands
    (vacant table_1) (vacant table_3) (vacant table_4)
    (vacant board_1) (vacant sink_1)
    (vacant stove_1) (vacant stove_2) (vacant stove_3) (vacant stove_4)
    (vacant table_2)
    ; item-free: all items start free
    (item-free bread_1) (item-free bread_2) (item-free bread_3)
    (item-free chicken_1) (item-free cheese_1)
    (item-free patty_1)
    (item-free topbun_1) (item-free topbun_2)
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
