(define (problem onion-soup)
  (:domain robotouille)
  (:objects
    table_2 stove_1 table_1 board_1 sink_1 table_3 table_4 table_5 - station
    onion_1 onion_2 onion_3 bowl_1 water_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_2) (isstove stove_1) (istable table_1) (isboard board_1)
    (issink sink_1) (istable table_3) (istable table_4) (istable table_5)

    ; Item identity
    (isonion onion_1) (isonion onion_2) (isonion onion_3)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_2)

    ; Player holding state
    (has robot_1 onion_2)

    ; Item capability flags
    (iscuttable onion_1) (iscuttable onion_2) (iscuttable onion_3)

    ; Item placements
    (on onion_1 table_2) (at onion_1 table_2)
    ; onion_2 is held by robot_1 -> has already declared above
    (on onion_3 stove_1) (at onion_3 stove_1)

    ; Clear predicates: topmost items (items that no other item atop)
    (clear onion_1) (clear onion_3)
    ; onion_2 is held so not on surface and not clear

    ; Empty stations: stations with no stack-level-0 items
    ; table_2 has onion_1 so not empty. stove_1 has onion_3 so not empty.
    (empty board_1) (empty sink_1) (empty table_3) (empty table_4) (empty table_5)

    ; Vacant stations: stations where no player stands
    (vacant stove_1) (vacant table_1) (vacant board_1) (vacant sink_1)
    (vacant table_3) (vacant table_4) (vacant table_5)

    ; Player hand: robot holds onion_2 so no (nothing robot_1)

    ; item-free for all items
    (item-free onion_1) (item-free onion_2) (item-free onion_3) (item-free bowl_1) (item-free water_1)
  )
  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
    ; Note: The original JSON goal also referenced water_1 and bowl_1 (in, isboiling, addedto, container_at),
    ; but those predicates are not defined in the given domain. Only the cut goals (iscut) are expressible
    ; with the provided domain predicates, so they are included here.
  ))
)
