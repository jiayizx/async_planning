(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_5 table_2 board_1 fryer_1 sink_1 table_4 stove_1 table_3 sink_2 table_1 - station
    robot_1 - player
    onion_1 onion_2 onion_3 - item
  )

  (:init
    ; station identity
    (istable table_5) (istable table_2) (isboard board_1) (isfryer fryer_1) (issink sink_1)
    (istable table_4) (isstove stove_1) (istable table_3) (issink sink_2) (istable table_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 table_5)

    ; item identities
    (isonion onion_1) (isonion onion_2) (isonion onion_3)

    ; item predicates (capabilities)
    (iscuttable onion_1) (iscuttable onion_2) (iscuttable onion_3)

    ; item physical placement (stack-level 0 items)
    (on onion_1 table_2) (at onion_1 table_2)
    (on onion_2 board_1) (at onion_2 board_1)
    (on onion_3 table_5) (at onion_3 table_5)

    ; clear items (no item atop them and not held)
    (clear onion_1) (clear onion_2) (clear onion_3)

    ; empty stations: those with no stack-level-0 item
    (empty table_4) (empty stove_1) (empty table_3) (empty sink_2) (empty table_1) (empty sink_1)
    ; Note: table_5, table_2, board_1 are not empty because they have items

    ; vacant stations: stations not occupied by a player
    (vacant table_2) (vacant board_1) (vacant fryer_1) (vacant sink_1)
    (vacant table_4) (vacant stove_1) (vacant table_3) (vacant sink_2) (vacant table_1)
    ; table_5 is occupied by robot_1 so not vacant

    ; player hand state
    (nothing robot_1)

    ; items are free (not being processed)
    (item-free onion_1) (item-free onion_2) (item-free onion_3)
  )

  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
  ))
)
