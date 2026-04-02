(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    fryer_1 fryer_2 board_3 board_1 board_2 stove_1 table_3 table_2 table_4 table_1 sink_1 - station
    robot_1 - player
    bread_2 chicken_1 lettuce_1 cheese_1 tomato_1 tomato_2 bread_1 - item
  )

  (:init
    ; station identity
    (isfryer fryer_1) (isfryer fryer_2) (isboard board_3) (isboard board_1) (isboard board_2)
    (isstove stove_1) (istable table_3) (istable table_2) (istable table_4) (istable table_1) (issink sink_1)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 fryer_1)

    ; item identities
    (isbread bread_2) (ischicken chicken_1) (islettuce lettuce_1) (ischeese cheese_1)
    (istomato tomato_1) (istomato tomato_2) (isbread bread_1)

    ; item capability predicates
    (isfryable chicken_1)
    (iscuttable lettuce_1) (iscuttable tomato_1) (iscuttable tomato_2)

    ; item spatial placement (on/at for items not held)
    (on bread_2 board_3) (at bread_2 board_3)
    (on chicken_1 board_2) (at chicken_1 board_2)
    (on lettuce_1 stove_1) (at lettuce_1 stove_1)
    (on cheese_1 board_1) (at cheese_1 board_1)
    (on tomato_2 table_3) (at tomato_2 table_3)
    (on bread_1 fryer_1) (at bread_1 fryer_1)

    ; held items
    (has robot_1 tomato_1)

    ; clear items (none are stacked on top of another and not held)
    (clear bread_2) (clear chicken_1) (clear lettuce_1) (clear cheese_1) (clear tomato_2) (clear bread_1)

    ; empty stations (stations with no item at stack-level 0)
    (empty sink_1) (empty fryer_2) (empty table_2) (empty table_4) (empty table_1)

    ; vacant stations (stations not occupied by a player)
    (vacant fryer_2) (vacant board_3) (vacant board_1) (vacant board_2) (vacant stove_1)
    (vacant table_3) (vacant table_2) (vacant table_4) (vacant table_1) (vacant sink_1)

    ; player hand state (robot is holding an item so no (nothing robot_1))

    ; all items start item-free
    (item-free bread_2) (item-free chicken_1) (item-free lettuce_1) (item-free cheese_1)
    (item-free tomato_1) (item-free tomato_2) (item-free bread_1)
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