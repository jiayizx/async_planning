(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    board_1 table_3 stove_1 table_1 table_2 - station
    bread_1 bread_2 chicken_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (isboard board_1) (istable table_3) (isstove stove_1) (istable table_1) (istable table_2)
    ; Item identity
    (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1) (ischeese cheese_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 board_1)
    ; Player is holding cheese_1
    (has robot_1 cheese_1)
    ; Capability flags
    (iscookable chicken_1)
    ; Item locations (held items use has; others on/at or atop/at)
    (on bread_1 board_1) (at bread_1 board_1)
    (on bread_2 table_3) (at bread_2 table_3)
    (on chicken_1 stove_1) (at chicken_1 stove_1)
    ; Clear: topmost items not held
    (clear bread_1) (clear bread_2) (clear chicken_1)
    ; Empty stations (no item with stack-level 0 at that station)
    (empty table_1) (empty table_2)
    ; Vacant stations (no player stands there)
    (vacant table_3) (vacant stove_1) (vacant table_1) (vacant table_2)
    ; item-free: all items start free
    (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free cheese_1)
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