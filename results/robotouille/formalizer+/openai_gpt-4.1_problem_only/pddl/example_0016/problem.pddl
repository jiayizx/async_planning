(define (problem lettuce-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 board_1 stove_1 sink_1 - station
    bread_1 bread_2 bread_3 chicken_1 lettuce_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5)
    (isboard board_1)
    (isstove stove_1)
    (issink sink_1)
    ; Item identity
    (isbread bread_1) (isbread bread_2) (isbread bread_3)
    (ischicken chicken_1)
    (islettuce lettuce_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)
    ; Capability flags
    (iscookable chicken_1)
    (iscuttable lettuce_1)
    ; bread_1: stack-level 0 on table_1
    (on bread_1 table_1)
    (at bread_1 table_1)
    ; bread_2: stack-level 0 on table_2
    (on bread_2 table_2)
    (at bread_2 table_2)
    ; bread_3: stack-level 0 on table_4
    (on bread_3 table_4)
    (at bread_3 table_4)
    ; chicken_1: stack-level 0 on table_3
    (on chicken_1 table_3)
    (at chicken_1 table_3)
    ; lettuce_1: stack-level 0 on sink_1
    (on lettuce_1 sink_1)
    (at lettuce_1 sink_1)
    ; Clear: all items are clear (no stacking, none held)
    (clear bread_1)
    (clear bread_2)
    (clear bread_3)
    (clear chicken_1)
    (clear lettuce_1)
    ; Empty: stations with no item at stack-level 0
    (empty table_5)
    (empty board_1)
    (empty stove_1)
    ; Vacant: stations with no player present
    (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5)
    (vacant board_1) (vacant stove_1) (vacant sink_1)
    ; item-free: all items start free
    (item-free bread_1) (item-free bread_2) (item-free bread_3)
    (item-free chicken_1) (item-free lettuce_1)
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
