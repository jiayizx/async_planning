(define (problem robotouille-problem)
    (:domain robotouille)
    (:objects
        stove_1 stove_2 stove_3 stove_4 stove_5 stove_6 - station
        table_1 table_2 table_3 table_4 table_5 - station
        sink_1 sink_2 sink_3 sink_4 - station
        board_1 - station
        potato_1 - item
        robot_1 - player
    )
    (:init
        (isstove stove_1) (isstove stove_2) (isstove stove_3) (isstove stove_4) (isstove stove_5) (isstove stove_6)
        (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5)
        (issink sink_1) (issink sink_2) (issink sink_3) (issink sink_4)
        (isboard board_1)
        (isrobot robot_1)
        (ispotato potato_1)
        (iscuttable potato_1)
        (item-free potato_1)
        (loc robot_1 stove_2)
        (nothing robot_1)
        (at potato_1 table_3)
        (on potato_1 table_3)
        (clear potato_1)
        (vacant stove_1) (vacant stove_3) (vacant stove_4) (vacant stove_5) (vacant stove_6)
        (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5)
        (vacant sink_1) (vacant sink_2) (vacant sink_3) (vacant sink_4)
        (vacant board_1)
        (empty stove_1) (empty stove_2) (empty stove_3) (empty stove_4) (empty stove_5) (empty stove_6)
        (empty table_1) (empty table_2) (empty table_4) (empty table_5)
        (empty sink_1) (empty sink_2) (empty sink_3) (empty sink_4)
        (empty board_1)
    )
    (:goal
        (and
            (at potato_1 table_1)
        )
    )
)