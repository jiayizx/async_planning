(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_3 table_2 stove_1 table_1 stove_3 stove_2 stove_4 - station
    lettuce_1 chicken_2 bottombun_1 bread_1 bread_2 chicken_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_3) (istable table_2) (isstove stove_1) (istable table_1) (isstove stove_3) (isstove stove_2) (isstove stove_4)
    ; Item identity
    (islettuce lettuce_1) (ischicken chicken_2) (isbottombun bottombun_1) (isbread bread_1) (isbread bread_2) (ischicken chicken_1) (ischeese cheese_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_3)
    ; Robot is holding bottombun_1
    (has robot_1 bottombun_1)
    ; Capability flags
    (iscuttable lettuce_1)
    (iscookable chicken_2) (iscookable chicken_1)
    ; Item locations (on/at or atop/at) — held items use has, not at/on
    (on lettuce_1 table_1) (at lettuce_1 table_1)
    (on chicken_2 stove_4) (at chicken_2 stove_4)
    (on bread_1 table_2) (at bread_1 table_2)
    (on bread_2 table_3) (at bread_2 table_3)
    (on chicken_1 stove_1) (at chicken_1 stove_1)
    (on cheese_1 stove_3) (at cheese_1 stove_3)
    ; Clear: topmost items not held
    (clear lettuce_1) (clear chicken_2) (clear bread_1) (clear bread_2) (clear chicken_1) (clear cheese_1)
    ; Empty stations (no stack-level-0 item present)
    (empty stove_2)
    ; Vacant: stations where no player stands
    (vacant table_2) (vacant stove_1) (vacant table_1) (vacant stove_3) (vacant stove_2) (vacant stove_4)
    ; item-free: all items start free
    (item-free lettuce_1) (item-free chicken_2) (item-free bottombun_1) (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free cheese_1)
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
