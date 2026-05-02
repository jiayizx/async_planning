(define (problem robotouille-prob)
  (:domain robotouille)
  (:objects
    table_3 table_2 table_1 - station
    stove_1 stove_3 stove_2 stove_4 - station

    robot_1 - player

    lettuce_1 - item
    chicken_2 - item
    bottombun_1 - item
    bread_1 - item
    bread_2 - item
    chicken_1 - item
    cheese_1 - item
  )

  (:init
    ; station types
    (istable table_3)
    (istable table_2)
    (istable table_1)
    (isstove stove_1)
    (isstove stove_3)
    (isstove stove_2)
    (isstove stove_4)

    ; player identity
    (isrobot robot_1)

    ; item identities
    (islettuce lettuce_1)
    (ischicken chicken_2)
    (isbottombun bottombun_1)
    (isbread bread_1)
    (isbread bread_2)
    (ischicken chicken_1)
    (ischeese cheese_1)

    ; player location
    (loc robot_1 table_3)

    ; item capability predicates
    (iscuttable lettuce_1)
    (iscookable chicken_2)
    (iscookable chicken_1)

    ; spatial / possession
    (on lettuce_1 table_1)
    (at lettuce_1 table_1)

    (on chicken_2 stove_4)
    (at chicken_2 stove_4)

    (at bread_1 table_2)
    (on bread_1 table_2)

    (at bread_2 table_3)
    (on bread_2 table_3)

    (on chicken_1 stove_1)
    (at chicken_1 stove_1)

    (on cheese_1 stove_3)
    (at cheese_1 stove_3)

    (has robot_1 bottombun_1)

    ; clear: every item that is not held and has nothing atop it
    (clear lettuce_1)
    (clear chicken_2)
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    (clear cheese_1)

    ; empty stations (no item with stack-level 0 on them)
    (empty stove_2)

    ; vacant stations (no player located there)
    (vacant table_1)
    (vacant table_2)
    (vacant stove_1)
    (vacant stove_3)
    (vacant stove_2)
    (vacant stove_4)

    ; player hand state: robot_1 is holding an item, so no (nothing robot_1)

    ; item-free for all items
    (item-free lettuce_1)
    (item-free chicken_2)
    (item-free bottombun_1)
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