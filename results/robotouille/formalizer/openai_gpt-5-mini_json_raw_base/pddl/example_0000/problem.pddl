(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_1 stove_1 table_2 table_3 - station
    robot_1 - player
    bread_1 bread_2 chicken_1 cheese_1 - item
  )

  (:init
    ;; station types
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (isstove stove_1)

    ;; player location & hand
    (loc robot_1 table_1)
    (nothing robot_1)

    ;; vacancies: every station except robot's starting station is vacant
    (vacant stove_1)
    (vacant table_2)
    (vacant table_3)

    ;; station empty flags
    (empty stove_1)

    ;; items: positions and stacking
    (on bread_1 table_1)
    (at bread_1 table_1)

    (atop bread_2 bread_1)
    (at bread_2 table_1)

    (on chicken_1 table_2)
    (at chicken_1 table_2)

    (on cheese_1 table_3)
    (at cheese_1 table_3)

    ;; clear/top-of-stack flags
    (clear bread_2)
    (clear chicken_1)
    (clear cheese_1)

    ;; processing guards
    (item-free bread_1)
    (item-free bread_2)
    (item-free chicken_1)
    (item-free cheese_1)

    ;; capabilities
    (iscookable chicken_1)
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
