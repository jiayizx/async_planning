(define (problem tomato-burger-and-fries)
  (:domain robotouille)
  (:objects
    board_1 board_2 stove_1 table_1 table_2 table_3 table_4 fryer_1 fryer_2 sink_1 sink_2 - station
    lettuce_1 topbun_1 topbun_2 bottombun_1 potato_1 tomato_1 patty_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (isboard board_1) (isboard board_2)
    (isstove stove_1)
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    (isfryer fryer_1) (isfryer fryer_2)
    (issink sink_1) (issink sink_2)
    ; Item identity
    (islettuce lettuce_1)
    (istopbun topbun_1) (istopbun topbun_2)
    (isbottombun bottombun_1)
    (ispotato potato_1)
    (istomato tomato_1)
    (ispatty patty_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 board_1)
    (has robot_1 bottombun_1)
    ; Capability flags
    (iscuttable lettuce_1)
    (iscuttable potato_1) (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)
    ; lettuce_1: stack-level 0 at table_1
    (on lettuce_1 table_1)
    (at lettuce_1 table_1)
    ; topbun_2: stack-level 0 at table_2
    (on topbun_2 table_2)
    (at topbun_2 table_2)
    ; topbun_1: stack-level 0 at board_1
    (on topbun_1 board_1)
    (at topbun_1 board_1)
    ; potato_1: stack-level 0 at sink_2
    (on potato_1 sink_2)
    (at potato_1 sink_2)
    ; tomato_1: stack-level 0 at board_2
    (on tomato_1 board_2)
    (at tomato_1 board_2)
    ; patty_1: stack-level 0 at stove_1
    (on patty_1 stove_1)
    (at patty_1 stove_1)
    ; Clear: topmost item at each occupied station, and any item not held and not under another item
    (clear lettuce_1)
    (clear topbun_2)
    (clear topbun_1)
    (clear potato_1)
    (clear tomato_1)
    (clear patty_1)
    ; Empty: stations with no items on surface (stack-level 0)
    (empty fryer_1) (empty fryer_2) (empty table_3) (empty table_4) (empty sink_1)
    ; Vacant: stations where no player stands
    (vacant board_2) (vacant stove_1) (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant fryer_1) (vacant fryer_2) (vacant sink_1) (vacant sink_2)
    ; item-free: all items start free
    (item-free lettuce_1) (item-free topbun_1) (item-free topbun_2) (item-free bottombun_1) (item-free potato_1) (item-free tomato_1) (item-free patty_1)
  )
  (:goal (and
    (on bottombun_1 table_1)
    (iscooked patty_1)
    (at patty_1 table_1)
    (iscut tomato_1)
    (at tomato_1 table_1)
    (at topbun_1 table_1)
    (clear topbun_1)
    (iscut potato_1)
    (isfried potato_1)
    (on potato_1 table_2)
  ))
)
