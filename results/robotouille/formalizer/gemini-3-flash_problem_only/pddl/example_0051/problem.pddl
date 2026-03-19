(define (problem robotouille-problem)
    (:domain robotouille)
    (:objects
        sink_1 board_1 board_4 stove_2 stove_3 table_4 table_2 table_3 sink_2 board_3 stove_1 board_2 table_1 - station
        potato_2 cheese_1 bread_1 tomato_1 potato_1 - item
        robot_1 - player
    )
    (:init
        (issink sink_1) (isboard board_1) (isboard board_4) (isstove stove_2) (isstove stove_3) (istable table_4) (istable table_2) (istable table_3) (issink sink_2) (isboard board_3) (isstove stove_1) (isboard board_2) (istable table_1)
        (ispotato potato_2) (ischeese cheese_1) (isbread bread_1) (istomato tomato_1) (ispotato potato_1)
        (isrobot robot_1)
        (item-free potato_2) (item-free cheese_1) (item-free bread_1) (item-free tomato_1) (item-free potato_1)
        (iscuttable tomato_1) (iscuttable potato_1)
        (loc robot_1 sink_1)
        (nothing robot_1)
        (on potato_2 stove_2) (at potato_2 stove_2) (clear potato_2)
        (on cheese_1 stove_1) (at cheese_1 stove_1) (clear cheese_1)
        (on bread_1 table_1) (at bread_1 table_1) (clear bread_1)
        (on tomato_1 sink_2) (at tomato_1 sink_2) (clear tomato_1)
        (on potato_1 sink_1) (at potato_1 sink_1) (clear potato_1)
        (vacant board_1) (vacant board_4) (vacant stove_2) (vacant stove_3) (vacant table_4) (vacant table_2) (vacant table_3) (vacant sink_2) (vacant board_3) (vacant stove_1) (vacant board_2) (vacant table_1)
        (empty board_1) (empty board_4) (empty stove_3) (empty table_4) (empty table_2) (empty table_3) (empty board_3) (empty board_2)
    )
    (:goal (and
        (on potato_1 table_1)
    ))
)