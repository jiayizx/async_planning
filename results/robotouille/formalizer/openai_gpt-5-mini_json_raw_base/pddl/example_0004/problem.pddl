(define (problem robotouille-problem)
  (:domain robotouille)

  (:objects
    table_1 table_2 stove_1 board_1 table_3 fryer_1 table_4 table_5 - station
    robot_1 - player
    bottombun_1 topbun_1 onion_1 onion_2 patty_1 cheese_1 - item
  )

  (:init
    ;; station types
    (istable table_1) (istable table_2) (isstove stove_1) (isboard board_1)
    (istable table_3) (isfryer fryer_1) (istable table_4) (istable table_5)

    ;; player location
    (loc robot_1 table_1)

    ;; player hand
    (nothing robot_1)

    ;; item locations and stacking
    (on bottombun_1 table_1)
    (at bottombun_1 table_1)

    (atop topbun_1 bottombun_1)
    (at topbun_1 table_1)

    (on onion_1 table_2)
    (at onion_1 table_2)

    (on onion_2 table_4)
    (at onion_2 table_4)

    (on patty_1 table_3)
    (at patty_1 table_3)

    (on cheese_1 table_5)
    (at cheese_1 table_5)

    ;; clear facts
    (clear topbun_1)
    (clear onion_1)
    (clear onion_2)
    (clear patty_1)
    (clear cheese_1)

    ;; empty stations (as given)
    (empty stove_1)
    (empty board_1)
    (empty fryer_1)

    ;; vacant stations (all except robot start table_1)
    (vacant table_2) (vacant stove_1) (vacant board_1) (vacant table_3)
    (vacant fryer_1) (vacant table_4) (vacant table_5)

    ;; item-free guards
    (item-free bottombun_1) (item-free topbun_1) (item-free onion_1)
    (item-free onion_2) (item-free patty_1) (item-free cheese_1)

    ;; capabilities / states
    (iscuttable onion_1) (isfryableifcut onion_1)
    (iscuttable onion_2) (isfryableifcut onion_2)
    ;; goal requires onion_2 to be fried -> also provide isfryable for fry action
    (isfryable onion_2)

    (iscookable patty_1)

  )

  (:goal (and
    (on bottombun_1 table_1)
    (iscooked patty_1)
    (at patty_1 table_1)
    (iscut onion_1)
    (at onion_1 table_1)
    (at cheese_1 table_1)
    (at topbun_1 table_1)
    (clear topbun_1)
    (iscut onion_2)
    (isfried onion_2)
    (on onion_2 table_2)
  ))
)
