(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_4 table_2 stove_1 board_1 table_3 fryer_1 table_1 - station
    robot_1 - player
    bottombun_1 topbun_1 potato_1 tomato_1 patty_1 - item
  )

  (:init
    ; --- station identity ---
    (istable table_4)
    (istable table_2)
    (isstove stove_1)
    (isboard board_1)
    (istable table_3)
    (isfryer fryer_1)
    (istable table_1)

    ; --- player identity & location ---
    (isrobot robot_1)
    (loc robot_1 table_4)

    ; --- item identity ---
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (ispotato potato_1)
    (istomato tomato_1)
    (ispatty patty_1)

    ; --- item capability predicates ---
    (iscuttable potato_1)
    (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)

    ; --- item locations / holdings ---
    (on bottombun_1 table_4)
    (at bottombun_1 table_4)

    (on topbun_1 table_2)
    (at topbun_1 table_2)

    (on tomato_1 stove_1)
    (at tomato_1 stove_1)

    (on patty_1 board_1)
    (at patty_1 board_1)

    (has robot_1 potato_1)

    ; --- clear predicates (items not under another and not held) ---
    (clear bottombun_1)
    (clear topbun_1)
    (clear tomato_1)
    (clear patty_1)

    ; --- empty stations (no item with stack-level 0 present) ---
    (empty table_3)
    (empty fryer_1)
    (empty table_1)

    ; --- vacant stations (no player present) ---
    (vacant table_1)
    (vacant table_2)
    (vacant stove_1)
    (vacant board_1)
    (vacant table_3)
    (vacant fryer_1)

    ; --- player hand state: robot is holding an item, so no (nothing robot_1) ---

    ; --- all items start item-free ---
    (item-free bottombun_1)
    (item-free topbun_1)
    (item-free potato_1)
    (item-free tomato_1)
    (item-free patty_1)
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
