(define (problem robotouille-problem)
  (:domain robotouille)
  (:objects
    fryer_1 stove_1 board_1 table_1 table_2 table_3 - station
    robot_1 - player
    chicken_1 bread_2 bread_1 lettuce_1 - item
  )

  (:init
    ; station types
    (isfryer fryer_1)
    (isstove stove_1)
    (isboard board_1)
    (istable table_1)
    (istable table_2)
    (istable table_3)

    ; player identity and location
    (isrobot robot_1)
    (loc robot_1 fryer_1)

    ; item identities
    (ischicken chicken_1)
    (isbread bread_2)
    (isbread bread_1)
    (islettuce lettuce_1)

    ; capability flags
    (iscookable chicken_1)
    (iscuttable lettuce_1)

    ; physical placement (stack-level 0 items use on + at)
    (on chicken_1 board_1)
    (at chicken_1 board_1)

    (on bread_2 table_3)
    (at bread_2 table_3)

    (on bread_1 fryer_1)
    (at bread_1 fryer_1)

    (on lettuce_1 stove_1)
    (at lettuce_1 stove_1)

    ; clear: no items are stacked on others and none are held
    (clear chicken_1)
    (clear bread_2)
    (clear bread_1)
    (clear lettuce_1)

    ; empty stations (no stack-level-0 item references)
    (empty table_1)
    (empty table_2)

    ; vacant stations (not occupied by a player)
    (vacant stove_1)
    (vacant board_1)
    (vacant table_1)
    (vacant table_2)
    (vacant table_3)
    ; fryer_1 is occupied by the robot, so not vacant

    ; player hand state
    (nothing robot_1)

    ; all items start free (not being processed)
    (item-free chicken_1)
    (item-free bread_2)
    (item-free bread_1)
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
