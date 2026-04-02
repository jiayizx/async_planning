(define (problem onion-soup)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 stove_1 board_1 sink_1 - station
    onion_1 onion_2 onion_3 - item
    robot_1 - player
  )
  (:init
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5)
    (isstove stove_1)
    (isboard board_1)
    (issink sink_1)
    (isonion onion_1) (isonion onion_2) (isonion onion_3)
    (isrobot robot_1)
    (loc robot_1 table_5)
    (nothing robot_1)
    (iscuttable onion_1) (iscuttable onion_2) (iscuttable onion_3)
    (on onion_1 table_1) (at onion_1 table_1)
    (on onion_2 stove_1) (at onion_2 stove_1)
    (on onion_3 table_5) (at onion_3 table_5)
    (clear onion_1) (clear onion_2) (clear onion_3)
    (empty board_1) (empty sink_1) (empty table_2) (empty table_3) (empty table_4)
    (vacant board_1) (vacant sink_1) (vacant stove_1) (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4)
    (item-free onion_1) (item-free onion_2) (item-free onion_3)
  )
  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
  ))
)
