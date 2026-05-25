(define (problem robotouille-problem)
    (:domain robotouille)
    (:objects
        table_1 stove_1 table_2 table_3 - station
        bread_1 bread_2 chicken_1 cheese_1 - item
        robot_1 - player
    )
    (:init
        ; station types
        (istable table_1) (isstove stove_1) (istable table_2) (istable table_3)
        ; player identity
        (isrobot robot_1)
        ; player location
        (loc robot_1 table_1)
        ; player hand
        (nothing robot_1)
        ; vacant
        (vacant stove_1) (vacant table_2) (vacant table_3)
        ; empty stations
        (empty stove_1)
        ; item properties
        (iscookable chicken_1)
        ; item-free all items
        (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free cheese_1)
        ; items on stations
        (on bread_1 table_1) (at bread_1 table_1)
        (atop bread_2 bread_1) (at bread_2 table_1)
        (clear bread_2)
        (on chicken_1 table_2) (at chicken_1 table_2) (clear chicken_1)
        (on cheese_1 table_3) (at cheese_1 table_3) (clear cheese_1)
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