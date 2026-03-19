(define (problem tomato-soup-and-lettuce-chicken)
  (:domain robotouille)
  (:objects
    table_2 board_1 table_6 stove_1 stove_3 stove_4 table_5 table_4 table_3 sink_2 sink_1 stove_2 table_1 table_7 - station
    chicken_1 bread_3 bread_2 cheese_1 bread_1 tomato_2 tomato_1 lettuce_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_2) (isboard board_1) (istable table_6)
    (isstove stove_1) (isstove stove_3) (isstove stove_4)
    (istable table_5) (istable table_4) (istable table_3)
    (issink sink_2) (issink sink_1) (isstove stove_2)
    (istable table_1) (istable table_7)

    ; Item identity
    (ischicken chicken_1)
    (isbread bread_3) (isbread bread_2) (ischeese cheese_1) (isbread bread_1)
    (istomato tomato_2) (istomato tomato_1) (islettuce lettuce_1)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_2)
    ; robot_1 is holding bread_1
    (has robot_1 bread_1)

    ; Capability flags
    (iscookable chicken_1)
    (iscuttable tomato_2) (iscuttable tomato_1) (iscuttable lettuce_1)

    ; Items on stations (or held)
    (on chicken_1 board_1) (at chicken_1 board_1)
    (on bread_3 table_6) (at bread_3 table_6)
    (on bread_2 stove_3) (at bread_2 stove_3)
    (on cheese_1 sink_1) (at cheese_1 sink_1)
    ; bread_1 is held by robot_1 -> (has robot_1 bread_1) above
    (on tomato_2 sink_2) (at tomato_2 sink_2)
    (on tomato_1 stove_1) (at tomato_1 stove_1)
    (on lettuce_1 table_2) (at lettuce_1 table_2)

    ; Clear: every item that is not underneath another and not held
    (clear chicken_1) (clear bread_3) (clear bread_2) (clear cheese_1)
    (clear tomato_2) (clear tomato_1) (clear lettuce_1)
    ; bread_1 is held, so not listed as clear

    ; Empty: stations with no surface item (stack-level 0) at their location
    (empty table_4) (empty table_3) (empty stove_2) (empty table_1) (empty table_7)

    ; Vacant: stations where no player stands (robot at table_2)
    (vacant board_1) (vacant table_6) (vacant stove_1) (vacant stove_3) (vacant stove_4)
    (vacant table_5) (vacant table_4) (vacant table_3) (vacant sink_2) (vacant sink_1)
    (vacant stove_2) (vacant table_1) (vacant table_7)

    ; Player hand state: robot_1 is holding an item, so no (nothing robot_1)

    ; All items start item-free
    (item-free chicken_1) (item-free bread_3) (item-free bread_2) (item-free cheese_1)
    (item-free bread_1) (item-free tomato_2) (item-free tomato_1) (item-free lettuce_1)
  )
  (:goal (and
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
  ))
)
