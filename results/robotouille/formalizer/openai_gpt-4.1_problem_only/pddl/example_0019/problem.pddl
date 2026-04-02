(define (problem robotouille-prob)
  (:domain robotouille)
  (:objects
    table_2 table_1 stove_1 - station
    robot_1 - player
    bread_2 bread_1 chicken_1 lettuce_1 - item
  )
  (:init
    ; Station identity
    (istable table_2)
    (istable table_1)
    (isstove stove_1)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (isbread bread_2)
    (isbread bread_1)
    (ischicken chicken_1)
    (islettuce lettuce_1)

    ; Item capabilities
    (iscookable chicken_1)
    (iscuttable lettuce_1)

    ; Player location
    (loc robot_1 table_2)

    ; Item locations
    (on bread_2 table_2)
    (at bread_2 table_2)
    (on bread_1 table_1)
    (at bread_1 table_1)
    (on chicken_1 stove_1)
    (at chicken_1 stove_1)
    (has robot_1 lettuce_1)

    ; Clear predicates
    (clear bread_2)
    (clear bread_1)
    (clear chicken_1)
    ; lettuce_1 is held, so not clear

    ; Station empty predicates
    ; No station is empty

    ; Station vacant predicates
    (vacant table_1)
    (vacant stove_1)
    ; table_2 is occupied by robot_1

    ; Player hand state
    ; robot_1 is holding lettuce_1, so no (nothing robot_1)

    ; All items start item-free
    (item-free bread_2)
    (item-free bread_1)
    (item-free chicken_1)
    (item-free lettuce_1)
  )
  (:goal (and
    (on bread_1 table_1)
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
