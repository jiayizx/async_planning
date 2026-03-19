(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_1 table_3 table_2 - station
    board_1 - station
    stove_1 - station

    robot_1 - player

    bread_2 bread_1 chicken_1 lettuce_1 - item
  )

  (:init
    ;; station identity
    (istable table_1)
    (istable table_3)
    (istable table_2)
    (isboard board_1)
    (isstove stove_1)

    ;; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_1)

    ;; item identities
    (isbread bread_2)
    (isbread bread_1)
    (ischicken chicken_1)
    (islettuce lettuce_1)

    ;; capability flags
    (iscookable chicken_1)
    (iscuttable lettuce_1)

    ;; item spatial placement (stack-level 0 -> on + at)
    (on bread_2 stove_1)
    (at bread_2 stove_1)

    (on bread_1 table_1)
    (at bread_1 table_1)

    (on chicken_1 board_1)
    (at chicken_1 board_1)

    (on lettuce_1 table_3)
    (at lettuce_1 table_3)

    ;; clear items (no item is atop any other)
    (clear bread_2)
    (clear bread_1)
    (clear chicken_1)
    (clear lettuce_1)

    ;; empty stations (no item with stack-level 0 at these stations)
    (empty table_2)

    ;; vacant stations (not occupied by a player)
    (vacant table_2)
    (vacant table_3)
    (vacant board_1)
    (vacant stove_1)

    ;; player hand state
    (nothing robot_1)

    ;; all items start free (not being processed)
    (item-free bread_2)
    (item-free bread_1)
    (item-free chicken_1)
    (item-free lettuce_1)
  )

  (:goal (and
    (on bread_1 table_1)
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
