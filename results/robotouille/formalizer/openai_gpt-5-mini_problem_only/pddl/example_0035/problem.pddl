(define (problem robotouille-problem-1)
  (:domain robotouille)
  (:objects
    stove_1 fryer_1 table_1 table_2 table_3 table_4 board_1 - station
    robot_1 - player
    bottombun_1 patty_1 chicken_1 potato_1 bottombun_2 topbun_1 tomato_1 - item
  )

  (:init
    ; station identity
    (isstove stove_1)
    (isfryer fryer_1)
    (istable table_1)
    (istable table_2)
    (istable table_3)
    (istable table_4)
    (isboard board_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 stove_1)

    ; item type identities
    (isbottombun bottombun_1)
    (ispatty patty_1)
    (ischicken chicken_1)
    (ispotato potato_1)
    (isbottombun bottombun_2)
    (istopbun topbun_1)
    (istomato tomato_1)

    ; item capability predicates
    (iscookable patty_1)
    (iscookable chicken_1)
    (iscuttable potato_1)
    (isfryableifcut potato_1)
    (iscuttable tomato_1)

    ; spatial / possession
    (has robot_1 chicken_1)

    (on bottombun_1 table_4)
    (at bottombun_1 table_4)

    (on patty_1 table_3)
    (at patty_1 table_3)

    (on potato_1 fryer_1)
    (at potato_1 fryer_1)

    (on bottombun_2 board_1)
    (at bottombun_2 board_1)

    (on topbun_1 stove_1)
    (at topbun_1 stove_1)

    (on tomato_1 table_1)
    (at tomato_1 table_1)

    ; clear: every item not held and not having another atop it
    (clear bottombun_1)
    (clear patty_1)
    ; chicken_1 is held -> not clear
    (clear potato_1)
    (clear bottombun_2)
    (clear topbun_1)
    (clear tomato_1)

    ; empty stations: those with no stack-level-0 items (table_2 only)
    (empty table_2)

    ; vacant stations: all except where the player is located (stove_1)
    (vacant fryer_1)
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)
    (vacant table_4)
    (vacant board_1)

    ; player hand state: robot_1 is holding chicken_1 so no (nothing robot_1)

    ; item-free for all items
    (item-free bottombun_1)
    (item-free patty_1)
    (item-free chicken_1)
    (item-free potato_1)
    (item-free bottombun_2)
    (item-free topbun_1)
    (item-free tomato_1)
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