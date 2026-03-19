(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    ; stations
    fryer_1 stove_1 board_2 table_3 table_2 unknown_1_4 table_1 stove_2 fryer_2 table_5 table_4 board_1 - station
    ; players
    robot_1 - player
    ; items
    potato_1 topbun_1 tomato_1 cheese_1 tomato_2 patty_1 bottombun_1 - item
  )

  (:init
    ; station types
    (isfryer fryer_1)
    (isboard board_2)
    (isstove stove_1)
    (istable table_3)
    (istable table_2)
    (istable unknown_1_4)
    (istable table_1)
    (isstove stove_2)
    (isfryer fryer_2)
    (istable table_5)
    (istable table_4)
    (isboard board_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 fryer_1)

    ; item identity (types)
    (ispotato potato_1)
    (istopbun topbun_1)
    (istomato tomato_1)
    (ischeese cheese_1)
    (istomato tomato_2)
    (ispatty patty_1)
    (isbottombun bottombun_1)

    ; item capability predicates
    (iscuttable potato_1)
    (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscuttable tomato_2)
    (iscookable patty_1)

    ; physical placement: items on stations (stack-level 0) or held
    (on potato_1 board_2)
    (at potato_1 board_2)

    (on topbun_1 table_4)
    (at topbun_1 table_4)

    (on tomato_1 stove_1)
    (at tomato_1 stove_1)

    (on cheese_1 table_2)
    (at cheese_1 table_2)

    ; tomato_2 is held by robot_1
    (has robot_1 tomato_2)

    (on patty_1 table_3)
    (at patty_1 table_3)

    (on bottombun_1 fryer_1)
    (at bottombun_1 fryer_1)

    ; clear: every item that is not held and nothing is atop it
    (clear potato_1)
    (clear topbun_1)
    (clear tomato_1)
    (clear cheese_1)
    (clear patty_1)
    (clear bottombun_1)
    ; tomato_2 is held, so not clear

    ; empty stations: those with no item at stack-level 0
    (empty table_1)
    (empty stove_2)
    (empty fryer_2)
    (empty table_5)
    (empty board_1)

    ; vacant stations: all stations except where the player is located
    (vacant stove_1)
    (vacant board_2)
    (vacant table_3)
    (vacant table_2)
    (vacant unknown_1_4)
    (vacant table_1)
    (vacant stove_2)
    (vacant fryer_2)
    (vacant table_5)
    (vacant table_4)
    (vacant board_1)

    ; player hand state: robot_1 is holding tomato_2 (so no (nothing robot_1))

    ; all items start item-free
    (item-free potato_1)
    (item-free topbun_1)
    (item-free tomato_1)
    (item-free cheese_1)
    (item-free tomato_2)
    (item-free patty_1)
    (item-free bottombun_1)
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
