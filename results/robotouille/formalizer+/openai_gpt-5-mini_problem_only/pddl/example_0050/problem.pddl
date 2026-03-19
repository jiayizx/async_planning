(define (problem potato-soup)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 - station
    board_1 board_2 board_3 - station
    stove_1 stove_2 - station
    sink_1 sink_2 sink_3 - station

    potato_1 bowl_1 water_1 - item
    robot_1 - player
  )

  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3)
    (isboard board_1) (isboard board_2) (isboard board_3)
    (isstove stove_1) (isstove stove_2)
    (issink sink_1) (issink sink_2) (issink sink_3)

    ; Item identity
    (ispotato potato_1)
    ; bowl_1 and water_1 have no specific identity predicates in the domain

    ; Player identity and initial location
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)

    ; Capability flags
    (iscuttable potato_1)

    ; Placements per environment JSON
    (on potato_1 table_1)
    (at potato_1 table_1)

    (on bowl_1 table_1)
    (at bowl_1 table_1)

    ; water is in the bowl: model as atop water_1 bowl_1 and at the same station as bowl
    (atop water_1 bowl_1)
    (at water_1 table_1)

    ; Clear predicates: topmost items
    (clear water_1)
    (clear potato_1)

    ; Empty stations (those without stack-level-0 items)
    (empty board_1) (empty board_2) (empty board_3)
    (empty stove_1) (empty stove_2)
    (empty sink_1) (empty sink_2) (empty sink_3)
    (empty table_2) (empty table_3)

    ; Vacant stations (no player present)
    (vacant board_1) (vacant board_2) (vacant board_3)
    (vacant stove_1) (vacant stove_2)
    (vacant sink_1) (vacant sink_2) (vacant sink_3)
    (vacant table_2) (vacant table_3)

    ; All items start free
    (item-free potato_1) (item-free bowl_1) (item-free water_1)
  )

  (:goal (and
    ; water in bowl
    (atop water_1 bowl_1)
    ; potato added to water (potato atop water)
    (atop potato_1 water_1)
    ; bowl at table_1
    (at bowl_1 table_1)
  ))
)
