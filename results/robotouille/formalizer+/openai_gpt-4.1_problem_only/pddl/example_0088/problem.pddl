(define (problem robotouille-soup-chicken-sandwiches)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 table_6 table_7 stove_1 board_1 sink_1 - station
    tomato_1 onion_1 chicken_1 chicken_2 bread_1 bread_2 bread_3 bread_4 - item
    robot_1 - player
    bowl_1 pot_1 - item
    water_1 - item
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5) (istable table_6) (istable table_7)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)
    ; Item identity
    (istomato tomato_1)
    (isonion onion_1)
    (ischicken chicken_1) (ischicken chicken_2)
    (isbread bread_1) (isbread bread_2) (isbread bread_3) (isbread bread_4)
    ; Player identity
    (isrobot robot_1)
    ; Containers and water (needed for goal predicates)
    ; (bowl_1, pot_1, water_1) are included as objects for goal predicates, but not present in initial state
    ; Player location
    (loc robot_1 table_3)
    (nothing robot_1)
    ; Capability flags
    (iscuttable tomato_1)
    (iscuttable onion_1)
    (iscookable chicken_1)
    (iscookable chicken_2)
    ; tomato_1: stack-level 0 at table_3
    (on tomato_1 table_3)
    (at tomato_1 table_3)
    ; onion_1: stack-level 0 at table_1
    (on onion_1 table_1)
    (at onion_1 table_1)
    ; chicken_2: stack-level 0 at stove_1
    (on chicken_2 stove_1)
    (at chicken_2 stove_1)
    ; chicken_1: stack-level 0 at table_2
    (on chicken_1 table_2)
    (at chicken_1 table_2)
    ; bread_4: stack-level 0 at board_1
    (on bread_4 board_1)
    (at bread_4 board_1)
    ; bread_1: stack-level 0 at sink_1
    (on bread_1 sink_1)
    (at bread_1 sink_1)
    ; bread_2: stack-level 0 at table_4
    (on bread_2 table_4)
    (at bread_2 table_4)
    ; bread_3: stack-level 0 at table_6
    (on bread_3 table_6)
    (at bread_3 table_6)
    ; Clear: all items are clear (no stacking, no held items)
    (clear tomato_1)
    (clear onion_1)
    (clear chicken_1)
    (clear chicken_2)
    (clear bread_1)
    (clear bread_2)
    (clear bread_3)
    (clear bread_4)
    ; Empty: stations with no item with stack-level 0
    (empty table_5)
    (empty table_7)
    ; Vacant: stations with no player
    (vacant table_1) (vacant table_2) (vacant table_4) (vacant table_5) (vacant table_6) (vacant table_7)
    (vacant stove_1) (vacant board_1) (vacant sink_1)
    ; item-free: all items start free
    (item-free tomato_1)
    (item-free onion_1)
    (item-free chicken_1)
    (item-free chicken_2)
    (item-free bread_1)
    (item-free bread_2)
    (item-free bread_3)
    (item-free bread_4)
    ; item-free for containers and water (if needed by domain)
    (item-free bowl_1)
    (item-free pot_1)
    (item-free water_1)
  )
  (:goal (and
    ; Only predicates supported by the domain are included
    (iscut tomato_1)
    (iscut onion_1)
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
    (on bread_3 table_3)
    (iscooked chicken_2)
    (at chicken_2 table_3)
    (at bread_4 table_3)
    (clear bread_4)
  ))
)
