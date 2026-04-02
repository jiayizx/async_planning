(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 stove_1 stove_2 stove_3 stove_4 - station
    lettuce_1 chicken_1 chicken_2 bottombun_1 bread_1 bread_2 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3)
    (isstove stove_1) (isstove stove_2) (isstove stove_3) (isstove stove_4)
    ; Item identity
    (islettuce lettuce_1)
    (ischicken chicken_1) (ischicken chicken_2)
    (isbottombun bottombun_1)
    (isbread bread_1) (isbread bread_2)
    (ischeese cheese_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_3)
    (has robot_1 bottombun_1)
    ; Capability flags
    (iscuttable lettuce_1)
    (iscookable chicken_1) (iscookable chicken_2)
    ; lettuce_1: stack-level 0 at table_1
    (on lettuce_1 table_1)
    (at lettuce_1 table_1)
    ; chicken_2: stack-level 0 at stove_4
    (on chicken_2 stove_4)
    (at chicken_2 stove_4)
    ; bread_1: stack-level 0 at table_2
    (on bread_1 table_2)
    (at bread_1 table_2)
    ; bread_2: stack-level 0 at table_3
    (on bread_2 table_3)
    (at bread_2 table_3)
    ; chicken_1: stack-level 0 at stove_1
    (on chicken_1 stove_1)
    (at chicken_1 stove_1)
    ; cheese_1: stack-level 0 at stove_3
    (on cheese_1 stove_3)
    (at cheese_1 stove_3)
    ; Clear: topmost item at each occupied station (lettuce_1, chicken_2, bread_1, bread_2, chicken_1, cheese_1)
    (clear lettuce_1)
    (clear chicken_2)
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    (clear cheese_1)
    ; Empty: stations with no items on surface (stove_2)
    (empty stove_2)
    ; Vacant: stations where no player stands (table_1, table_2, stove_1, stove_2, stove_3, stove_4)
    (vacant table_1) (vacant table_2) (vacant stove_1) (vacant stove_2) (vacant stove_3) (vacant stove_4)
    ; item-free: all items start free
    (item-free lettuce_1) (item-free chicken_1) (item-free chicken_2) (item-free bottombun_1) (item-free bread_1) (item-free bread_2) (item-free cheese_1)
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
