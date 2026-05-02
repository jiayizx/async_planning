(define (problem robotouille-problem)
    (:domain robotouille)
    (:objects
        sink_1 sink_2 sink_3 table_1 table_2 table_3 table_4 table_5 fryer_1 stove_1 stove_2 board_1 - station
        chicken_1 potato_1 bottombun_1 - item
        robot_1 - player
    )
    (:init
        (isrobot robot_1)
        (loc robot_1 sink_1)
        (nothing robot_1)
        (vacant sink_2) (vacant sink_3) (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5) (vacant fryer_1) (vacant stove_1) (vacant stove_2) (vacant board_1)
        (issink sink_1) (issink sink_2) (issink sink_3)
        (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5)
        (isfryer fryer_1)
        (isstove stove_1) (isstove stove_2)
        (isboard board_1)
        (ischicken chicken_1) (iscookable chicken_1) (item-free chicken_1) (at chicken_1 table_4) (on chicken_1 table_4) (clear chicken_1)
        (ispotato potato_1) (iscuttable potato_1) (item-free potato_1) (at potato_1 sink_2) (on potato_1 sink_2) (clear potato_1)
        (isbottombun bottombun_1) (item-free bottombun_1) (at bottombun_1 table_2) (on bottombun_1 table_2) (clear bottombun_1)
        (empty sink_1) (empty sink_3) (empty table_1) (empty table_3) (empty table_5) (empty fryer_1) (empty stove_1) (empty stove_2) (empty board_1)
    )
    (:goal (and (iscut potato_1) (at potato_1 table_1)))
)