(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_2 stove_1 table_1 - station
    bread_1 bread_2 chicken_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_2) (isstove stove_1) (istable table_1)
    ; Item identity
    (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1) (ischeese cheese_1)
    ; Player identity and location
    (isrobot robot_1)
    (loc robot_1 table_2)
    ; Player is holding cheese_1
    (has robot_1 cheese_1)
    ; Capability flags
    (iscookable chicken_1)
    ; Items on stations / at predicates
    (on bread_1 table_1) (at bread_1 table_1)
    (on bread_2 table_2) (at bread_2 table_2)
    (on chicken_1 stove_1) (at chicken_1 stove_1)
    ; Clear: topmost items (cheese_1 is held so not listed as clear)
    (clear bread_1) (clear bread_2) (clear chicken_1)
    ; Vacant: stations without a player
    (vacant table_1) (vacant stove_1)
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