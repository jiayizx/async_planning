(define (problem lettuce-cheeseburger-prep)
    (:domain robotouille-async)
    (:objects
        table_1 table_2 table_3 table_4 stove_1 board_1 - station
        robot_1 - player
        bottombun_1 topbun_1 cheese_1 lettuce_1 patty_1 - item
    )
    (:init
        (isrobot robot_1)
        (istable table_1)
        (istable table_2)
        (istable table_3)
        (istable table_4)
        (isstove stove_1)
        (isboard board_1)

        (isbottombun bottombun_1)
        (istopbun topbun_1)
        (ischeese cheese_1)
        (islettuce lettuce_1)
        (ispatty patty_1)

        (iscuttable lettuce_1)
        (iscookable patty_1)

        (station_free stove_1)
        (station_free board_1)

        (loc robot_1 table_1)
        (vacant table_2)
        (vacant table_3)
        (vacant table_4)
        (vacant stove_1)
        (vacant board_1)

        (nothing robot_1)
        (nocontainer robot_1)

        (at bottombun_1 table_1)
        (on bottombun_1 table_1)
        (at topbun_1 table_1)
        (atop topbun_1 bottombun_1)
        (clear topbun_1)

        (at cheese_1 table_2)
        (on cheese_1 table_2)
        (clear cheese_1)

        (at patty_1 table_3)
        (on patty_1 table_3)
        (clear patty_1)

        (at lettuce_1 table_4)
        (on lettuce_1 table_4)
        (clear lettuce_1)

        (empty stove_1)
        (empty board_1)
    )
    (:goal (and
        (on bottombun_1 table_1)
        (iscooked patty_1)
        (atop patty_1 bottombun_1)
        (iscut lettuce_1)
        (atop lettuce_1 patty_1)
        (atop cheese_1 lettuce_1)
        (atop topbun_1 cheese_1)
        (clear topbun_1)
    ))
)