(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_3 stove_1 table_2 table_1 - station
    bread_2 bread_1 chicken_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_3) (isstove stove_1) (istable table_2) (istable table_1)
    ; Item identity
    (isbread bread_2) (isbread bread_1) (ischicken chicken_1) (ischeese cheese_1)
    ; Player identity and location
    (isrobot robot_1)
    (loc robot_1 table_3)
    (nothing robot_1)
    ; Capability flags
    (iscookable chicken_1)
    ; Item locations (stack-level 0 => on + at)
    (on bread_2 table_3) (at bread_2 table_3)
    (on bread_1 stove_1) (at bread_1 stove_1)
    (on chicken_1 table_2) (at chicken_1 table_2)
    (on cheese_1 table_1) (at cheese_1 table_1)
    ; Clear: topmost items
    (clear bread_2) (clear bread_1) (clear chicken_1) (clear cheese_1)
    ; Vacant: stations not occupied by a player
    (vacant stove_1) (vacant table_2) (vacant table_1)
    ; item-free: all items start free
    (item-free bread_2) (item-free bread_1) (item-free chicken_1) (item-free cheese_1)
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
