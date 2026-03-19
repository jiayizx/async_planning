(define (problem robotouille-prob)
  (:domain robotouille)
  (:objects
    table_1 table_4 table_3 table_2 - station
    board_1 board_3 board_2 - station
    sink_1 - station
    stove_2 stove_1 - station

    robot_1 - player

    topbun_1 onion_1 chicken_1 bread_2 bread_1 lettuce_1 - item
  )

  (:init
    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_1)

    ; station identities
    (istable table_1)
    (istable table_4)
    (istable table_3)
    (istable table_2)
    (isboard board_1)
    (isboard board_3)
    (isboard board_2)
    (issink sink_1)
    (isstove stove_2)
    (isstove stove_1)

    ; item type identities
    (istopbun topbun_1)
    (isonion onion_1)
    (ischicken chicken_1)
    (isbread bread_2)
    (isbread bread_1)
    (islettuce lettuce_1)

    ; item capability predicates
    (iscuttable onion_1)
    (iscuttable lettuce_1)
    (iscookable chicken_1)

    ; item locations (on + at for stack-level 0)
    (on topbun_1 board_1)
    (at topbun_1 board_1)

    (on onion_1 sink_1)
    (at onion_1 sink_1)

    (on chicken_1 board_2)
    (at chicken_1 board_2)

    (on bread_2 table_4)
    (at bread_2 table_4)

    (on bread_1 table_1)
    (at bread_1 table_1)

    (on lettuce_1 table_3)
    (at lettuce_1 table_3)

    ; all items start free
    (item-free topbun_1)
    (item-free onion_1)
    (item-free chicken_1)
    (item-free bread_2)
    (item-free bread_1)
    (item-free lettuce_1)

    ; clear for every item (no atop relations and none held)
    (clear topbun_1)
    (clear onion_1)
    (clear chicken_1)
    (clear bread_2)
    (clear bread_1)
    (clear lettuce_1)

    ; empty stations (no item with stack-level 0 at these stations)
    (empty board_3)
    (empty stove_2)
    (empty stove_1)
    (empty table_2)

    ; vacant stations (stations not occupied by the player)
    (vacant table_4)
    (vacant table_3)
    (vacant table_2)
    (vacant board_1)
    (vacant board_3)
    (vacant board_2)
    (vacant sink_1)
    (vacant stove_2)
    (vacant stove_1)

    ; player hand state
    (nothing robot_1)
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
