(define (problem tomato-burger-fries)
  (:domain robotouille)
  (:objects
    fryer_1 board_2 stove_1 table_3 table_2 table_1 stove_2 fryer_2 table_5 table_4 board_1 - station
    potato_1 topbun_1 tomato_1 cheese_1 tomato_2 patty_1 bottombun_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (isfryer fryer_1)
    (isboard board_2)
    (isstove stove_1)
    (istable table_3)
    (istable table_2)
    (istable table_1)
    (isstove stove_2)
    (isfryer fryer_2)
    (istable table_5)
    (istable table_4)
    (isboard board_1)

    ; Item identity
    (ispotato potato_1)
    (istopbun topbun_1)
    (istomato tomato_1)
    (ischeese cheese_1)
    (istomato tomato_2)
    (ispatty patty_1)
    (isbottombun bottombun_1)

    ; Player identity and location
    (isrobot robot_1)
    (loc robot_1 fryer_1)

    ; Capability flags
    (iscuttable potato_1)
    (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)

    ; Item placements (stack-level 0 -> on + at)
    (on potato_1 board_2) (at potato_1 board_2)
    (on topbun_1 table_4) (at topbun_1 table_4)
    (on tomato_1 stove_1) (at tomato_1 stove_1)
    (on cheese_1 table_2) (at cheese_1 table_2)
    (on patty_1 table_3) (at patty_1 table_3)
    (on bottombun_1 fryer_1) (at bottombun_1 fryer_1)

    ; Item held by player
    (has robot_1 tomato_2)

    ; Clear: every item that has nothing atop and is not held
    (clear potato_1)
    (clear topbun_1)
    (clear tomato_1)
    (clear cheese_1)
    (clear patty_1)
    (clear bottombun_1)
    ; tomato_2 is held -> do NOT assert (clear tomato_2)

    ; Empty stations: stations with no stack-level-0 item
    ; Occupied by stack-level-0 items: board_2, table_4, stove_1, table_2, table_3, fryer_1
    (empty board_1)
    (empty stove_2)
    (empty fryer_2)
    (empty table_5)
    (empty table_1)

    ; Vacant stations: all stations where no player stands (robot at fryer_1)
    (vacant board_2)
    (vacant stove_1)
    (vacant table_3)
    (vacant table_2)
    (vacant table_1)
    (vacant stove_2)
    (vacant fryer_2)
    (vacant table_5)
    (vacant table_4)
    (vacant board_1)

    ; Player hand state: robot_1 holds tomato_2 -> do NOT assert (nothing robot_1)

    ; item-free: all items start free
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