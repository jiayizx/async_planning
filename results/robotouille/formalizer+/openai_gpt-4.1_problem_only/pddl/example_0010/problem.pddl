(define (problem lettuce-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 board_1 board_2 board_3 stove_1 stove_2 sink_1 - station
    topbun_1 onion_1 chicken_1 bread_2 bread_1 lettuce_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    (isboard board_1) (isboard board_2) (isboard board_3)
    (isstove stove_1) (isstove stove_2)
    (issink sink_1)
    ; Item identity
    (istopbun topbun_1)
    (isonion onion_1)
    (ischicken chicken_1)
    (isbread bread_2) (isbread bread_1)
    (islettuce lettuce_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)
    ; Capability flags
    (iscuttable onion_1)
    (iscookable chicken_1)
    (iscuttable lettuce_1)
    ; topbun_1: stack-level 0 at board_1
    (on topbun_1 board_1)
    (at topbun_1 board_1)
    ; onion_1: stack-level 0 at sink_1
    (on onion_1 sink_1)
    (at onion_1 sink_1)
    ; chicken_1: stack-level 0 at board_2
    (on chicken_1 board_2)
    (at chicken_1 board_2)
    ; bread_2: stack-level 0 at table_4
    (on bread_2 table_4)
    (at bread_2 table_4)
    ; bread_1: stack-level 0 at table_1
    (on bread_1 table_1)
    (at bread_1 table_1)
    ; lettuce_1: stack-level 0 at table_3
    (on lettuce_1 table_3)
    (at lettuce_1 table_3)
    ; Clear: topmost item at each occupied station
    (clear topbun_1)
    (clear onion_1)
    (clear chicken_1)
    (clear bread_2)
    (clear bread_1)
    (clear lettuce_1)
    ; Empty: stations with no items on surface (stack-level 0)
    (empty table_2)
    (empty board_3)
    (empty stove_1)
    (empty stove_2)
    ; Vacant: stations where no player stands
    (vacant table_2) (vacant table_3) (vacant table_4)
    (vacant board_1) (vacant board_2) (vacant board_3)
    (vacant stove_1) (vacant stove_2)
    (vacant sink_1)
    ; item-free: all items start free
    (item-free topbun_1) (item-free onion_1) (item-free chicken_1) (item-free bread_2) (item-free bread_1) (item-free lettuce_1)
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
