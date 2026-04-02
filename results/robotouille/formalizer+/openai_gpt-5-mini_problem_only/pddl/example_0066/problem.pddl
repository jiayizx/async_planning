(define (problem onion-soup)
  (:domain robotouille)
  (:objects
    sink_1 table_7 table_6 table_5 table_3 fryer_1 table_1 stove_1 table_4 board_1 sink_2 table_2 - station
    onion_2 topbun_1 bottombun_1 onion_1 onion_3 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (issink sink_1) (istable table_7) (istable table_6) (istable table_5) (istable table_3)
    (isfryer fryer_1) (istable table_1) (isstove stove_1) (istable table_4) (isboard board_1)
    (issink sink_2) (istable table_2)

    ; Item identity
    (isonion onion_2) (istopbun topbun_1) (isbottombun bottombun_1) (isonion onion_1) (isonion onion_3)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 sink_1)
    (nothing robot_1)

    ; Capability flags
    (iscuttable onion_2) (iscuttable onion_1) (iscuttable onion_3)

    ; Item locations (stack-level 0 -> on + at)
    (on onion_2 table_6) (at onion_2 table_6)
    (on topbun_1 table_2) (at topbun_1 table_2)
    (on bottombun_1 table_4) (at bottombun_1 table_4)
    (on onion_1 sink_1) (at onion_1 sink_1)
    (on onion_3 table_7) (at onion_3 table_7)

    ; Clear: topmost items (no atop relationships present)
    (clear onion_2) (clear topbun_1) (clear bottombun_1) (clear onion_1) (clear onion_3)

    ; Empty: stations with no stack-level-0 items
    (empty table_5) (empty table_3) (empty fryer_1) (empty table_1) (empty stove_1) (empty board_1) (empty sink_2)

    ; Vacant: stations where no player stands (robot at sink_1)
    (vacant table_7) (vacant table_6) (vacant table_5) (vacant table_3) (vacant fryer_1) (vacant table_1)
    (vacant stove_1) (vacant table_4) (vacant board_1) (vacant sink_2) (vacant table_2)

    ; item-free: all items start free
    (item-free onion_2) (item-free topbun_1) (item-free bottombun_1) (item-free onion_1) (item-free onion_3)
  )
  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
  ))
)