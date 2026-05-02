(define (problem robotouille-problem) (:domain robotouille)

(:objects
    board_2 board_1 - station
    table_2 table_4 table_5 table_1 table_3 - station
    fryer_1 - station
    stove_2 stove_1 - station
    unknown_3_0 - station

    robot_1 - player

    onion_2 lettuce_1 patty_2 cheese_1 bottombun_1 topbun_1 patty_1 bottombun_2 onion_1 - item
)

(:init
    ; station identity predicates
    (isboard board_2)
    (isboard board_1)
    (istable table_2)
    (istable table_4)
    (istable table_5)
    (istable table_1)
    (istable table_3)
    (isfryer fryer_1)
    (isstove stove_2)
    (isstove stove_1)
    (istable unknown_3_0)

    ; player identity
    (isrobot robot_1)

    ; item identity predicates
    (isonion onion_2)
    (islettuce lettuce_1)
    (ispatty patty_2)
    (ischeese cheese_1)
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (ispatty patty_1)
    (isbottombun bottombun_2)
    (isonion onion_1)

    ; player location
    (loc robot_1 board_2)

    ; capability flags (from JSON)
    (iscuttable onion_2)
    (isfryableifcut onion_2)
    (iscuttable lettuce_1)
    (iscookable patty_2)
    (iscookable patty_1)
    (iscuttable onion_1)
    (isfryableifcut onion_1)

    ; item positions: held items use has, others at + on for stack-level 0
    (has robot_1 bottombun_1)

    (at onion_2 table_4)
    (on onion_2 table_4)

    (at lettuce_1 stove_2)
    (on lettuce_1 stove_2)

    (at patty_2 stove_1)
    (on patty_2 stove_1)

    (at cheese_1 fryer_1)
    (on cheese_1 fryer_1)

    (at topbun_1 board_1)
    (on topbun_1 board_1)

    (at patty_1 table_3)
    (on patty_1 table_3)

    (at bottombun_2 board_2)
    (on bottombun_2 board_2)

    (at onion_1 table_2)
    (on onion_1 table_2)

    ; clear for every item that is not held and has nothing atop it
    (clear onion_2)
    (clear lettuce_1)
    (clear patty_2)
    (clear cheese_1)
    (clear topbun_1)
    (clear patty_1)
    (clear bottombun_2)
    (clear onion_1)

    ; empty stations (those with no stack-level-0 item)
    (empty table_1)
    (empty table_5)
    (empty unknown_3_0)

    ; vacant stations: all stations except where the robot is located (robot at board_2)
    (vacant board_1)
    (vacant table_2)
    (vacant table_4)
    (vacant table_5)
    (vacant table_1)
    (vacant table_3)
    (vacant fryer_1)
    (vacant stove_2)
    (vacant stove_1)
    (vacant unknown_3_0)

    ; robot_1 is holding an item, so do NOT assert (nothing robot_1)

    ; all items start free
    (item-free onion_2)
    (item-free lettuce_1)
    (item-free patty_2)
    (item-free cheese_1)
    (item-free bottombun_1)
    (item-free topbun_1)
    (item-free patty_1)
    (item-free bottombun_2)
    (item-free onion_1)
)

(:goal (and
    (on bottombun_1 table_1)
    (iscooked patty_1)
    (at patty_1 table_1)
    (iscut onion_1)
    (at onion_1 table_1)
    (at cheese_1 table_1)
    (at topbun_1 table_1)
    (clear topbun_1)
    (iscut onion_2)
    (isfried onion_2)
    (on onion_2 table_2)
))
