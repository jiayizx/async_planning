(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 stove_1 stove_2 sink_1 - station
    bread_1 bread_2 bread_3 chicken_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (istable table_5)
    (isstove stove_1)
    (isstove stove_2)
    (issink sink_1)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (isbread bread_1)
    (isbread bread_2)
    (isbread bread_3)
    (ischeese cheese_1)
    (ischicken chicken_1)

    ; Item capabilities
    (iscookable chicken_1)

    ; Player location
    (loc robot_1 table_1)

    ; Item locations (on/at)
    (on bread_1 table_1)
    (at bread_1 table_1)
    (on bread_2 table_2)
    (at bread_2 table_2)
    (on bread_3 table_5)
    (at bread_3 table_5)
    (on chicken_1 sink_1)
    (at chicken_1 sink_1)
    (on cheese_1 table_3)
    (at cheese_1 table_3)

    ; Player hand state
    (nothing robot_1)

    ; Clear items (no item is atop these and not held)
    (clear bread_1)
    (clear bread_2)
    (clear bread_3)
    (clear chicken_1)
    (clear cheese_1)

    ; Empty stations (no item with stack-level 0 on them)
    (empty table_4)
    (empty stove_1)
    (empty stove_2)

    ; Vacant stations (no player at these stations)
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant table_5)
    (vacant stove_1)
    (vacant stove_2)
    (vacant sink_1)

    ; All items start item-free
    (item-free bread_1)
    (item-free bread_2)
    (item-free bread_3)
    (item-free chicken_1)
    (item-free cheese_1)
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
