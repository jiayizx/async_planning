(define (problem robotouille-problem)
  (:domain robotouille)

  (:objects
    ; stations
    table_1 table_3 fryer_1 board_1 sink_1 table_6 table_2 table_4 table_5 stove_1 - station
    ; players
    robot_1 - player
    ; items
    topbun_1 onion_1 bread_2 bread_1 chicken_1 lettuce_1 tomato_1 - item
  )

  (:init
    ; station identities
    (istable table_1)
    (istable table_3)
    (isfryer fryer_1)
    (isboard board_1)
    (issink sink_1)
    (istable table_6)
    (istable table_2)
    (istable table_4)
    (istable table_5)
    (isstove stove_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_1)

    ; item identities
    (istopbun topbun_1)
    (isonion onion_1)
    (isbread bread_2)
    (isbread bread_1)
    (ischicken chicken_1)
    (islettuce lettuce_1)
    (istomato tomato_1)

    ; item capability predicates
    (iscuttable onion_1)
    (isfryable chicken_1)
    (iscuttable lettuce_1)
    (iscuttable tomato_1)

    ; spatial: items on/at their stations (stack-level 0)
    (on topbun_1 board_1)
    (at topbun_1 board_1)

    (on onion_1 sink_1)
    (at onion_1 sink_1)

    (on bread_2 table_4)
    (at bread_2 table_4)

    (on bread_1 table_1)
    (at bread_1 table_1)

    (on chicken_1 table_3)
    (at chicken_1 table_3)

    (on lettuce_1 table_2)
    (at lettuce_1 table_2)

    (on tomato_1 fryer_1)
    (at tomato_1 fryer_1)

    ; clear items (none have something atop them)
    (clear topbun_1)
    (clear onion_1)
    (clear bread_2)
    (clear bread_1)
    (clear chicken_1)
    (clear lettuce_1)
    (clear tomato_1)

    ; empty stations (no item with stack-level 0 on them)
    (empty table_6)
    (empty table_5)
    (empty stove_1)

    ; vacant stations (not occupied by player)
    (vacant table_3)
    (vacant fryer_1)
    (vacant board_1)
    (vacant sink_1)
    (vacant table_6)
    (vacant table_2)
    (vacant table_4)
    (vacant table_5)
    (vacant stove_1)
    ; table_1 is occupied by the player, so not vacant

    ; player hand state
    (nothing robot_1)

    ; all items start item-free
    (item-free topbun_1)
    (item-free onion_1)
    (item-free bread_2)
    (item-free bread_1)
    (item-free chicken_1)
    (item-free lettuce_1)
    (item-free tomato_1)
  )

  (:goal (and
    ; from JSON goals (using provided pddl_args)
    (on bread_1 table_1)
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    (iscut tomato_1)
    (at tomato_1 table_1)
    (isfried chicken_1)
    (at chicken_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
