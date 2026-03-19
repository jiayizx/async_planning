(define (problem fried-chicken-sandwich-lettuce-tomato)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 table_6 fryer_1 board_1 sink_1 stove_1 - station
    topbun_1 onion_1 bread_2 bread_1 chicken_1 lettuce_1 tomato_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5) (istable table_6)
    (isfryer fryer_1) (isboard board_1) (issink sink_1) (isstove stove_1)
    ; Item identity
    (istopbun topbun_1)
    (isonion onion_1)
    (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1)
    (islettuce lettuce_1)
    (istomato tomato_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)
    ; Capability flags
    (iscuttable onion_1)
    (isfryable chicken_1)
    (iscuttable lettuce_1)
    (iscuttable tomato_1)
    ; Items on stations (all stack-level 0, not held)
    (on topbun_1 board_1) (at topbun_1 board_1)
    (on onion_1 sink_1) (at onion_1 sink_1)
    (on bread_2 table_4) (at bread_2 table_4)
    (on bread_1 table_1) (at bread_1 table_1)
    (on chicken_1 table_3) (at chicken_1 table_3)
    (on lettuce_1 table_2) (at lettuce_1 table_2)
    (on tomato_1 fryer_1) (at tomato_1 fryer_1)
    ; Clear: all items are topmost at their stations
    (clear topbun_1)
    (clear onion_1)
    (clear bread_2)
    (clear bread_1)
    (clear chicken_1)
    (clear lettuce_1)
    (clear tomato_1)
    ; Empty: stations with no item at stack-level 0
    (empty table_5) (empty table_6) (empty stove_1)
    ; Vacant: stations with no player present
    (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5) (vacant table_6)
    (vacant fryer_1) (vacant board_1) (vacant sink_1) (vacant stove_1)
    ; item-free: all items start free
    (item-free topbun_1) (item-free onion_1) (item-free bread_2) (item-free bread_1) (item-free chicken_1) (item-free lettuce_1) (item-free tomato_1)
  )
  (:goal (and
    (on bread_1 table_1)
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    (iscut tomato_1)
    (at tomato_1 table_1)
    (isfried chicken_1)
    (at chicken_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
