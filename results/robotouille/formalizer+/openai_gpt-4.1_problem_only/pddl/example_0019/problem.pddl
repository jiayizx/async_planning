(define (problem lettuce-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 stove_1 - station
    bread_1 bread_2 chicken_1 lettuce_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2)
    (isstove stove_1)
    ; Item identity
    (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1)
    (islettuce lettuce_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_2)
    (has robot_1 lettuce_1)
    ; Capability flags
    (iscookable chicken_1)
    (iscuttable lettuce_1)
    ; bread_1: stack-level 0 → directly on table_1 surface
    (on bread_1 table_1)
    (at bread_1 table_1)
    ; bread_2: stack-level 0 → directly on table_2 surface
    (on bread_2 table_2)
    (at bread_2 table_2)
    ; chicken_1: stack-level 0 at stove_1
    (on chicken_1 stove_1)
    (at chicken_1 stove_1)
    ; Clear: topmost item at each occupied station and not held
    (clear bread_1)
    (clear bread_2)
    (clear chicken_1)
    ; Empty: stations with no items on surface
    ; (none, all stations have an item at stack-level 0)
    ; Vacant: stations where no player stands
    (vacant table_1) (vacant stove_1)
    ; item-free: all items start free (not being cooked/cut/fried)
    (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free lettuce_1)
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
