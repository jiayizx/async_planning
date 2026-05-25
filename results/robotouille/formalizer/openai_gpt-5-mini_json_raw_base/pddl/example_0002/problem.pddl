(define (problem robotouille-prob)
  (:domain robotouille-temporal)
  (:objects
    table_1 board_1 fryer_1 table_2 table_3 table_4 - station
    robot_1 - player
    bread_1 bread_2 chicken_1 lettuce_1 tomato_1 - item
  )

  (:init
    ;; station types
    (istable table_1) (isboard board_1) (isfryer fryer_1) (istable table_2) (istable table_3) (istable table_4)

    ;; player location and hand
    (loc robot_1 table_1)
    (nothing robot_1)

    ;; station occupancy / emptiness
    (empty board_1) (empty fryer_1)
    ;; table_1 is not empty (has items), so not declared empty

    ;; vacant: every station except robot's starting station table_1
    (vacant board_1) (vacant fryer_1) (vacant table_2) (vacant table_3) (vacant table_4)

    ;; items on stations / stacks
    (on bread_1 table_1) (at bread_1 table_1)
    (atop bread_2 bread_1) (at bread_2 table_1)

    (on chicken_1 table_2) (at chicken_1 table_2)
    (on lettuce_1 table_3) (at lettuce_1 table_3)
    (on tomato_1 table_4) (at tomato_1 table_4)

    ;; clear facts: bread_2 is top of stack so clear; bread_1 has bread_2 atop so not clear
    (clear bread_2)
    (clear chicken_1) (clear lettuce_1) (clear tomato_1)

    ;; processing capability / states
    (isfryable chicken_1)
    (iscuttable lettuce_1) (iscuttable tomato_1)

    ;; item-free for all items
    (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free lettuce_1) (item-free tomato_1)
  )

  (:goal (and
    ;; bread_1 directly on table_1
    (on bread_1 table_1)
    ;; lettuce cut and at table_1
    (iscut lettuce_1) (at lettuce_1 table_1)
    ;; tomato cut and at table_1
    (iscut tomato_1) (at tomato_1 table_1)
    ;; chicken fried and at table_1
    (isfried chicken_1) (at chicken_1 table_1)
    ;; bread_2 at table_1 and clear
    (at bread_2 table_1) (clear bread_2)
  ))
)
