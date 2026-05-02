(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 table_6 table_7 board_1 sink_1 stove_1 - station
    topbun_1 onion_1 cheese_1 bread_2 bread_1 chicken_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5) (istable table_6) (istable table_7)
    (isboard board_1)
    (isstove stove_1)
    (issink sink_1)
    ; Item identity
    (istopbun topbun_1)
    (isonion onion_1)
    (ischeese cheese_1)
    (isbread bread_2) (isbread bread_1)
    (ischicken chicken_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)
    ; Capability flags
    (iscuttable onion_1)
    (iscookable chicken_1)
    ; Item locations
    (on topbun_1 board_1) (at topbun_1 board_1)
    (on onion_1 sink_1) (at onion_1 sink_1)
    (on cheese_1 table_5) (at cheese_1 table_5)
    (on bread_2 table_3) (at bread_2 table_3)
    (on bread_1 table_1) (at bread_1 table_1)
    (on chicken_1 table_2) (at chicken_1 table_2)
    ; Clear: topmost item at each occupied station
    (clear topbun_1)
    (clear onion_1)
    (clear cheese_1)
    (clear bread_2)
    (clear bread_1)
    (clear chicken_1)
    ; Empty: stations with no items on surface
    (empty table_4)
    (empty table_6)
    (empty table_7)
    (empty stove_1)
    ; Vacant: stations where no player stands
    (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5) (vacant table_6) (vacant table_7) (vacant board_1) (vacant sink_1) (vacant stove_1)
    ; item-free: all items start free (not being cooked/cut/fried)
    (item-free topbun_1) (item-free onion_1) (item-free cheese_1) (item-free bread_2) (item-free bread_1) (item-free chicken_1)
  )
  (:goal (and
    (on bread_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at cheese_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
