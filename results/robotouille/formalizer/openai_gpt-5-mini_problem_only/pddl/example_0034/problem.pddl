(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_3 table_4 board_2 table_1 board_1 fryer_1 table_7 table_5 table_2 stove_1 board_3 table_6 - station
    robot_1 - player
    patty_1 tomato_1 patty_2 bottombun_1 topbun_1 potato_1 - item
  )

  (:init
    ; station identities
    (istable table_3) (istable table_4) (isboard board_2) (istable table_1)
    (isboard board_1) (isfryer fryer_1) (istable table_7) (istable table_5)
    (istable table_2) (isstove stove_1) (isboard board_3) (istable table_6)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_3)

    ; item identities
    (ispatty patty_1) (istomato tomato_1) (ispatty patty_2)
    (isbottombun bottombun_1) (istopbun topbun_1) (ispotato potato_1)

    ; item capability predicates
    (iscookable patty_1)
    (iscuttable tomato_1)
    (iscookable patty_2)
    (iscuttable potato_1) (isfryableifcut potato_1)

    ; item locations (on + at for stack-level 0)
    (on patty_1 table_1) (at patty_1 table_1)
    (on tomato_1 board_2) (at tomato_1 board_2)
    (on patty_2 fryer_1) (at patty_2 fryer_1)
    (on bottombun_1 table_3) (at bottombun_1 table_3)
    (on topbun_1 table_4) (at topbun_1 table_4)
    (on potato_1 table_5) (at potato_1 table_5)

    ; clear predicates (no item is atop another and none are held)
    (clear patty_1) (clear tomato_1) (clear patty_2)
    (clear bottombun_1) (clear topbun_1) (clear potato_1)

    ; empty stations (no item with stack-level 0 at these stations)
    (empty table_2) (empty table_7) (empty stove_1) (empty board_1)
    (empty board_3) (empty table_6)

    ; vacant stations (not occupied by the player)
    (vacant table_4) (vacant board_2) (vacant table_1) (vacant board_1)
    (vacant fryer_1) (vacant table_7) (vacant table_5) (vacant table_2)
    (vacant stove_1) (vacant board_3) (vacant table_6)
    ; note: table_3 is occupied by robot_1 so not vacant

    ; player hand state
    (nothing robot_1)

    ; all items start free
    (item-free patty_1) (item-free tomato_1) (item-free patty_2)
    (item-free bottombun_1) (item-free topbun_1) (item-free potato_1)
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
