(define (problem robotouille_problem)
    (:domain robotouille)
    (:objects
        table_7 table_6 stove_1 table_2 board_1 sink_1 table_4 table_5 table_3 table_1 - station
        tomato_1 lettuce_1 chicken_1 bread_1 bread_2 - item
        robot_1 - player
    )
    (:init
        (istable table_7) (istable table_6) (isstove stove_1) (istable table_2) (isboard board_1) (issink sink_1) (istable table_4) (istable table_5) (istable table_3) (istable table_1)
        (isrobot robot_1)
        (istomato tomato_1) (islettuce lettuce_1) (ischicken chicken_1) (isbread bread_1) (isbread bread_2)
        (iscuttable tomato_1) (iscuttable lettuce_1) (iscookable chicken_1)
        (item-free tomato_1) (item-free lettuce_1) (item-free chicken_1) (item-free bread_1) (item-free bread_2)
        (loc robot_1 table_7)
        (nothing robot_1)
        (vacant table_6) (vacant stove_1) (vacant table_2) (vacant board_1) (vacant sink_1) (vacant table_4) (vacant table_5) (vacant table_3) (vacant table_1)
        (on tomato_1 table_7) (at tomato_1 table_7) (clear tomato_1)
        (on lettuce_1 stove_1) (at lettuce_1 stove_1) (clear lettuce_1)
        (on chicken_1 table_6) (at chicken_1 table_6) (clear chicken_1)
        (on bread_1 table_2) (at bread_1 table_2) (clear bread_1)
        (on bread_2 board_1) (at bread_2 board_1) (clear bread_2)
        (empty sink_1) (empty table_4) (empty table_5) (empty table_3) (empty table_1)
    )
    (:goal (and
        (on bread_1 table_2)
        (iscooked chicken_1)
        (at chicken_1 table_2)
        (iscut lettuce_1)
        (at lettuce_1 table_2)
        (at bread_2 table_2)
        (clear bread_2)
    ))
)