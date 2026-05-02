(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_1 table_2 stove_1 fryer_1 - station
    robot_1 - player
    bottombun_1 topbun_1 potato_1 tomato_1 patty_1 - item
  )
  (:init
    ; Station identity
    (istable table_1)
    (istable table_2)
    (isstove stove_1)
    (isfryer fryer_1)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (isbottombun bottombun_1)
    (istopbun topbun_1)
    (ispotato potato_1)
    (istomato tomato_1)
    (ispatty patty_1)

    ; Item capabilities
    (iscuttable potato_1)
    (isfryableifcut potato_1)
    (iscuttable tomato_1)
    (iscookable patty_1)

    ; Player location
    (loc robot_1 table_2)

    ; Item locations and stacking
    (on bottombun_1 table_2)
    (at bottombun_1 table_2)
    (on topbun_1 table_1)
    (at topbun_1 table_1)
    (on potato_1 stove_1)
    (at potato_1 stove_1)
    (on tomato_1 fryer_1)
    (at tomato_1 fryer_1)
    (has robot_1 patty_1)

    ; Clear predicates
    (clear bottombun_1)
    (clear topbun_1)
    (clear potato_1)
    (clear tomato_1)

    ; Empty stations
    ; All stations have an item or a player, so none are empty

    ; Vacant stations
    (vacant table_1)
    (vacant stove_1)
    (vacant fryer_1)
    ; table_2 is not vacant because robot_1 is there

    ; Player hand state
    ; robot_1 is holding patty_1, so no (nothing robot_1)

    ; All items start item-free
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
