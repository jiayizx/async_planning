(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 - station
    stove_1 - station
    robot_1 - player
    bread_1 bread_2 cheese_1 chicken_1 - item
  )
  (:init
    ;; Station identity
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (isstove stove_1)

    ;; Player identity
    (isrobot robot_1)

    ;; Item identity
    (isbread bread_1)
    (isbread bread_2)
    (ischeese cheese_1)
    (ischicken chicken_1)

    ;; Item capabilities
    (iscookable chicken_1)

    ;; Player location
    (loc robot_1 table_1)

    ;; Item locations (on/at)
    (on bread_1 table_1)
    (at bread_1 table_1)
    (on bread_2 table_2)
    (at bread_2 table_2)
    (on chicken_1 stove_1)
    (at chicken_1 stove_1)
    (on cheese_1 table_3)
    (at cheese_1 table_3)

    ;; Clear predicates
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    (clear cheese_1)

    ;; Empty stations (no stack-level 0 item on them)
    ;; All stations have stack-level 0 items, so none are empty

    ;; Vacant stations (no player at them except table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant stove_1)

    ;; Player hand state
    (nothing robot_1)

    ;; All items start item-free
    (item-free bread_1)
    (item-free bread_2)
    (item-free cheese_1)
    (item-free chicken_1)
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
