(define (problem robotouille-problem-1)
  (:domain robotouille)
  (:objects
    board_1 table_3 stove_1 table_1 table_2 - station
    robot_1 - player
    bread_1 bread_2 chicken_1 cheese_1 - item
  )

  (:init
    ;; station identities
    (isboard board_1)
    (istable table_3)
    (isstove stove_1)
    (istable table_1)
    (istable table_2)

    ;; player identity and location
    (isrobot robot_1)
    (loc robot_1 board_1)

    ;; item identities (types)
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (ischeese cheese_1)

    ;; item capabilities / predicates
    (iscookable chicken_1)

    ;; item placements: items not held use at/on according to stack-level
    (at bread_1 board_1)
    (on bread_1 board_1)

    (at bread_2 table_3)
    (on bread_2 table_3)

    (at chicken_1 stove_1)
    (on chicken_1 stove_1)

    ;; held item
    (has robot_1 cheese_1)

    ;; clear predicate: items that are not topped by another and not held
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)

    ;; empty stations: those with no stack-level-0 item on them
    (empty table_1)
    (empty table_2)

    ;; vacant stations: those not occupied by a player
    (vacant table_3)
    (vacant stove_1)
    (vacant table_1)
    (vacant table_2)

    ;; player hand state: robot is holding cheese -> no (nothing robot_1)

    ;; all items start item-free
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
