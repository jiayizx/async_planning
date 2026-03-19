(define (problem robotouille_problem)
    (:domain robotouille)
    (:objects
        stove_1 stove_5 stove_2 sink_1 table_3 table_5 table_4 table_2 sink_3 board_1 sink_2 table_1 stove_3 table_6 stove_4 sink_4 - station
        onion_3 onion_1 onion_2 - item
        robot_1 - player
    )
    (:init
        (isstove stove_1) (isstove stove_5) (isstove stove_2) (issink sink_1) (istable table_3) (istable table_5) (istable table_4) (istable table_2) (issink sink_3) (isboard board_1) (issink sink_2) (istable table_1) (isstove stove_3) (istable table_6) (isstove stove_4) (issink sink_4)
        (isonion onion_3) (iscuttable onion_3) (item-free onion_3)
        (isonion onion_1) (iscuttable onion_1) (item-free onion_1)
        (isonion onion_2) (iscuttable onion_2) (item-free onion_2)
        (isrobot robot_1)
        (loc robot_1 stove_1)
        (nothing robot_1)
        (on onion_3 table_5) (at onion_3 table_5) (clear onion_3)
        (on onion_1 stove_1) (at onion_1 stove_1) (clear onion_1)
        (on onion_2 sink_4) (at onion_2 sink_4) (clear onion_2)
        (empty stove_5) (empty stove_2) (empty sink_1) (empty table_3) (empty table_4) (empty table_2) (empty sink_3) (empty board_1) (empty sink_2) (empty table_1) (empty stove_3) (empty table_6) (empty stove_4)
        (vacant stove_5) (vacant stove_2) (vacant sink_1) (vacant table_3) (vacant table_5) (vacant table_4) (vacant table_2) (vacant sink_3) (vacant board_1) (vacant sink_2) (vacant table_1) (vacant stove_3) (vacant table_6) (vacant stove_4) (vacant sink_4)
    )
    (:goal (and
        (iscut onion_1)
        (iscut onion_2)
        (iscut onion_3)
    ))
)