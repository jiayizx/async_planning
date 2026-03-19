(define (problem robotouille_problem)
    (:domain robotouille)
    (:objects
        board_1 board_2 board_3 board_4 stove_1 sink_1 sink_2 table_1 table_2 table_3 table_4 table_5 - station
        onion_1 onion_2 onion_3 - item
        robot_1 - player
    )
    (:init
        (isboard board_1) (isboard board_2) (isboard board_3) (isboard board_4)
        (isstove stove_1)
        (issink sink_1) (issink sink_2)
        (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5)
        (isonion onion_1) (isonion onion_2) (isonion onion_3)
        (iscuttable onion_1) (iscuttable onion_2) (iscuttable onion_3)
        (item-free onion_1) (item-free onion_2) (item-free onion_3)
        (isrobot robot_1)
        (loc robot_1 board_1)
        (nothing robot_1)
        (on onion_1 board_1) (at onion_1 board_1) (clear onion_1)
        (on onion_2 board_2) (at onion_2 board_2) (clear onion_2)
        (on onion_3 board_3) (at onion_3 board_3) (clear onion_3)
        (vacant board_2) (vacant board_3) (vacant board_4) (vacant stove_1) (vacant sink_1) (vacant sink_2) (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5)
        (empty board_4) (empty stove_1) (empty sink_1) (empty sink_2) (empty table_1) (empty table_2) (empty table_3) (empty table_4) (empty table_5)
    )
    (:goal (and
        (iscut onion_1)
        (iscut onion_2)
        (iscut onion_3)
    ))
)