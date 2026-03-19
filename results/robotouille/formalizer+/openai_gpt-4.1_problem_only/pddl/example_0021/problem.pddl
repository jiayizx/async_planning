(define (problem fried-chicken-lettuce-tomato-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 board_1 fryer_1 fryer_2 sink_1 stove_1 stove_2 - station
    bread_1 bread_2 bread_3 chicken_1 topbun_1 topbun_2 patty_1 lettuce_1 tomato_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    (isboard board_1)
    (isfryer fryer_1) (isfryer fryer_2)
    (isstove stove_1) (isstove stove_2)
    (issink sink_1)
    ; Item identity
    (isbread bread_1) (isbread bread_2) (isbread bread_3)
    (ischicken chicken_1)
    (istopbun topbun_1) (istopbun topbun_2)
    (ispatty patty_1)
    (islettuce lettuce_1)
    (istomato tomato_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_2)
    (nothing robot_1)
    ; Capability flags
    (isfryable chicken_1)
    (iscookable patty_1)
    (iscuttable lettuce_1)
    (iscuttable tomato_1)
    ; Item locations
    (on bread_1 table_2) (at bread_1 table_2)
    (on bread_3 board_1) (at bread_3 board_1)
    (on bread_2 sink_1) (at bread_2 sink_1)
    (on chicken_1 fryer_2) (at chicken_1 fryer_2)
    (on topbun_1 stove_1) (at topbun_1 stove_1)
    (on patty_1 stove_2) (at patty_1 stove_2)
    (on topbun_2 table_3) (at topbun_2 table_3)
    (on lettuce_1 table_4) (at lettuce_1 table_4)
    (on tomato_1 table_1) (at tomato_1 table_1)
    ; Clear: topmost item at each occupied station
    (clear bread_1)
    (clear bread_2)
    (clear bread_3)
    (clear chicken_1)
    (clear topbun_1)
    (clear patty_1)
    (clear topbun_2)
    (clear lettuce_1)
    (clear tomato_1)
    ; Empty: stations with no items on surface
    (empty fryer_1)
    ; Vacant: stations where no player stands
    (vacant table_1) (vacant table_3) (vacant table_4) (vacant board_1) (vacant fryer_1) (vacant fryer_2) (vacant sink_1) (vacant stove_1) (vacant stove_2)
    ; item-free: all items start free (not being cooked/cut/fried)
    (item-free bread_1) (item-free bread_2) (item-free bread_3) (item-free chicken_1) (item-free topbun_1) (item-free topbun_2) (item-free patty_1) (item-free lettuce_1) (item-free tomato_1)
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
