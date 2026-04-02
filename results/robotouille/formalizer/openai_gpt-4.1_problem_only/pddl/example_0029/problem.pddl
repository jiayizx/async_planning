(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    table_3 table_1 fryer_1 table_2 - station
    robot_1 - player
    bread_2 bread_1 chicken_1 lettuce_1 tomato_1 - item
  )
  (:init
    ; Station identity
    (istable table_3)
    (istable table_1)
    (isfryer fryer_1)
    (istable table_2)

    ; Player identity
    (isrobot robot_1)

    ; Item identity
    (isbread bread_2)
    (isbread bread_1)
    (ischicken chicken_1)
    (islettuce lettuce_1)
    (istomato tomato_1)

    ; Item capabilities
    (isfryable chicken_1)
    (iscuttable lettuce_1)
    (iscuttable tomato_1)

    ; Player location
    (loc robot_1 table_3)

    ; Item locations and possession
    (on bread_2 table_3)
    (at bread_2 table_3)
    (on bread_1 table_1)
    (at bread_1 table_1)
    (on chicken_1 fryer_1)
    (at chicken_1 fryer_1)
    (on lettuce_1 table_2)
    (at lettuce_1 table_2)
    (has robot_1 tomato_1)

    ; Clear predicates
    (clear bread_2)
    (clear bread_1)
    (clear chicken_1)
    (clear lettuce_1)

    ; Empty stations
    ; (none, all have stack-level 0 items)

    ; Vacant stations
    ; Only stations not occupied by a player (robot_1 is at table_3)
    (vacant fryer_1)
    (vacant table_1)
    (vacant table_2)
    ; (table_3 is not vacant because robot_1 is there)

    ; Player hand state
    ; robot_1 is holding tomato_1, so no (nothing robot_1)

    ; All items start item-free
    (item-free bread_2)
    (item-free bread_1)
    (item-free chicken_1)
    (item-free lettuce_1)
    (item-free tomato_1)
  )
  (:goal (and
    (on bread_1 table_1)
    (iscut lettuce_1)
    (at lettuce_1 table_1)
    (iscut tomato_1)
    (at tomato_1 table_1)
    (isfried chicken_1)
    (at chicken_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
