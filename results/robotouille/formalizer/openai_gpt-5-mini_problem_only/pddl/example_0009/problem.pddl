(define (problem robotouille-problem-1)
  (:domain robotouille)
  (:objects
    table_2 stove_1 table_1 - station
    robot_1 - player
    bread_1 bread_2 chicken_1 cheese_1 - item
  )

  (:init
    ; station types
    (istable table_2)
    (isstove stove_1)
    (istable table_1)

    ; player
    (isrobot robot_1)

    ; item types
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (ischeese cheese_1)

    ; item capability predicates
    (iscookable chicken_1)

    ; player location
    (loc robot_1 table_2)

    ; item locations / holdings
    (on bread_1 table_1)
    (at bread_1 table_1)

    (on bread_2 table_2)
    (at bread_2 table_2)

    (on chicken_1 stove_1)
    (at chicken_1 stove_1)

    (has robot_1 cheese_1)

    ; clear: items that are not topped by any other and not held
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)

    ; vacant stations (those not occupied by a player)
    (vacant stove_1)
    (vacant table_1)

    ; item-free for all items
    (item-free bread_1)
    (item-free bread_2)
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
