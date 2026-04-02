(define (problem onion-soup)
  (:domain robotouille)
  (:objects
    table_5 stove_1 table_2 stove_2 table_4 board_1 sink_1 table_1 table_3 - station
    onion_2 onion_3 onion_1 - item
    water_1 bowl_1 pot_1 - item
    robot_1 - player
  )
  (:init
    ; station identity
    (istable table_5) (isstove stove_1) (istable table_2) (isstove stove_2)
    (istable table_4) (isboard board_1) (issink sink_1) (istable table_1) (istable table_3)

    ; item identity for onions
    (isonion onion_2) (isonion onion_3) (isonion onion_1)
    ; generic identities for additional objects (treated as items)
    (isrobot robot_1)

    ; player location and hand
    (loc robot_1 table_5)
    (nothing robot_1)

    ; capability flags
    (iscuttable onion_2) (iscuttable onion_3) (iscuttable onion_1)

    ; item placements (stack-level 0 => on + at)
    (on onion_2 table_5) (at onion_2 table_5)
    (on onion_3 stove_1) (at onion_3 stove_1)
    (on onion_1 board_1) (at onion_1 board_1)

    ; other items (water, bowl, pot) initial placement: treat bowl on table_1, pot on table_2, water free in pot
    (on bowl_1 table_1) (at bowl_1 table_1)
    (on pot_1 table_2) (at pot_1 table_2)
    (at water_1 pot_1)

    ; clear: topmost items at each occupied station
    (clear onion_2) (clear onion_3) (clear onion_1) (clear bowl_1) (clear pot_1)

    ; empty stations (those with no stack-level-0 item)
    (empty table_4) (empty sink_1) (empty table_3)

    ; vacant stations (where no player stands)
    (vacant stove_1) (vacant table_2) (vacant stove_2) (vacant table_4) (vacant board_1) (vacant sink_1) (vacant table_1) (vacant table_3)
    ; note: table_5 is not vacant because robot_1 is located at table_5

    ; item-free for all items
    (item-free onion_2) (item-free onion_3) (item-free onion_1) (item-free water_1) (item-free bowl_1) (item-free pot_1)
  )
  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
    (at bowl_1 table_1)
  ))
)
