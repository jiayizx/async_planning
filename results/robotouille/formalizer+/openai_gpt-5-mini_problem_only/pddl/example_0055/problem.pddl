(define (problem potato-soup)
  (:domain robotouille)
  (:objects
    sink_2 table_1 stove_1 table_3 board_1 sink_1 table_2 - station
    potato_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (issink sink_2) (istable table_1) (isstove stove_1) (istable table_3)
    (isboard board_1) (issink sink_1) (istable table_2)

    ; Item identity
    (ispotato potato_1)

    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 sink_2)
    (nothing robot_1)

    ; Capability flags
    (iscuttable potato_1)

    ; potato_1: stack-level 0 → directly on sink_2 surface
    (on potato_1 sink_2)
    (at potato_1 sink_2)

    ; Clear: topmost item at its station
    (clear potato_1)

    ; Empty: stations with no items on surface (sink_2 has potato_1, so not empty)
    (empty table_1) (empty stove_1) (empty table_3) (empty board_1) (empty sink_1) (empty table_2)

    ; Vacant: stations where no player stands
    (vacant table_1) (vacant stove_1) (vacant table_3) (vacant board_1) (vacant sink_1) (vacant table_2)

    ; item-free: all items start free
    (item-free potato_1)
  )
  (:goal (and
    (iscut potato_1)
    (at potato_1 table_1)
  ))
)