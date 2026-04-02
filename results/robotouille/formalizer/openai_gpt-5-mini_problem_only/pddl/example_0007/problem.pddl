(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 stove_1 - station
    robot_1 - player
    bread_1 bread_2 chicken_1 cheese_1 - item
  )

  (:init
    ; station identities
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (isstove stove_1)

    ; player identity
    (isrobot robot_1)

    ; item identities
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (ischeese cheese_1)

    ; item capabilities
    (iscookable chicken_1)

    ; player location
    (loc robot_1 table_1)

    ; item locations (on + at for stack-level 0)
    (on bread_1 table_1)
    (at bread_1 table_1)

    (on bread_2 table_2)
    (at bread_2 table_2)

    (on chicken_1 stove_1)
    (at chicken_1 stove_1)

    (on cheese_1 table_3)
    (at cheese_1 table_3)

    ; clear predicates (no items atop others)
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    (clear cheese_1)

    ; empty stations: none (all have stack-level-0 items)

    ; vacant stations (not occupied by a player)
    (vacant stove_1)
    (vacant table_2)
    (vacant table_3)

    ; player hand state
    (nothing robot_1)

    ; all items start free
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
