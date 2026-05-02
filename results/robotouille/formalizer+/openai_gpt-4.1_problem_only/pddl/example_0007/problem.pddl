(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 stove_1 - station
    bread_1 bread_2 chicken_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3)
    (isstove stove_1)
    ; Item identity
    (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1)
    (ischeese cheese_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)
    ; Capability flags
    (iscookable chicken_1)
    ; bread_1: stack-level 0 → directly on table_1 surface
    (on bread_1 table_1)
    (at bread_1 table_1)
    ; bread_2: stack-level 0 → directly on table_2 surface
    (on bread_2 table_2)
    (at bread_2 table_2)
    ; chicken_1: stack-level 0 at stove_1
    (on chicken_1 stove_1)
    (at chicken_1 stove_1)
    ; cheese_1: stack-level 0 at table_3
    (on cheese_1 table_3)
    (at cheese_1 table_3)
    ; Clear: topmost item at each occupied station
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    (clear cheese_1)
    ; Empty: stations with no items on surface
    ; (none in this case)
    ; Vacant: stations where no player stands
    (vacant stove_1) (vacant table_2) (vacant table_3)
    ; item-free: all items start free (not being cooked/cut/fried)
    (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free cheese_1)
  )
  (:goal (and
    (on bread_1 table_1)
    (iscooked chicken_1)
    (at chicken_1 table_1)
    (at cheese_1 table_1)
    (at bread_2 table_1)
    (clear bread_2)
  ))
)
