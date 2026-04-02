(define (problem fried-chicken-sandwich-lettuce-tomato)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 board_1 stove_1 fryer_1 - station
    tomato_1 chicken_2 bottombun_1 chicken_1 bread_2 bread_1 lettuce_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    (isboard board_1) (isstove stove_1) (isfryer fryer_1)
    ; Item identity
    (istomato tomato_1)
    (ischicken chicken_2) (ischicken chicken_1)
    (isbottombun bottombun_1)
    (isbread bread_2) (isbread bread_1)
    (islettuce lettuce_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_4)
    ; Player hand state
    ; robot_1 is holding bottombun_1
    (has robot_1 bottombun_1)
    ; Capability flags
    (iscuttable tomato_1)
    (iscookable chicken_2)
    (isfryable chicken_1)
    (iscuttable lettuce_1)
    ; tomato_1: stack-level 0 at fryer_1
    (on tomato_1 fryer_1)
    (at tomato_1 fryer_1)
    ; chicken_2: stack-level 0 at board_1
    (on chicken_2 board_1)
    (at chicken_2 board_1)
    ; chicken_1: stack-level 0 at table_3
    (on chicken_1 table_3)
    (at chicken_1 table_3)
    ; bread_2: stack-level 0 at table_4
    (on bread_2 table_4)
    (at bread_2 table_4)
    ; bread_1: stack-level 0 at stove_1
    (on bread_1 stove_1)
    (at bread_1 stove_1)
    ; lettuce_1: stack-level 0 at table_1
    (on lettuce_1 table_1)
    (at lettuce_1 table_1)
    ; Clear: topmost item at each occupied station (not held)
    (clear tomato_1)
    (clear chicken_2)
    (clear chicken_1)
    (clear bread_2)
    (clear bread_1)
    (clear lettuce_1)
    ; Empty: stations with no items on surface (stack-level 0)
    (empty table_2)
    ; Vacant: stations where no player stands
    (vacant table_1) (vacant table_2) (vacant table_3) (vacant board_1) (vacant stove_1) (vacant fryer_1)
    ; item-free: all items start free
    (item-free tomato_1) (item-free chicken_2) (item-free bottombun_1) (item-free chicken_1) (item-free bread_2) (item-free bread_1) (item-free lettuce_1)
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
