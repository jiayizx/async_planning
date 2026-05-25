(define (problem robotouille-problem)
    (:domain robotouille)
    (:objects
        table_1 board_1 sink_1 table_2 table_3 table_5 stove_1 table_4 - station
        robot_1 - player
        onion_1 onion_2 onion_3 - item
        pot_1 bowl_1 - container
        water_1 - meal
    )
    (:init
        (istable table_1) (istable table_2) (istable table_3) (istable table_5) (istable table_4)
        (isboard board_1) (issink sink_1) (isstove stove_1)
        (loc robot_1 table_1)
        (nothing robot_1)
        (vacant board_1) (vacant sink_1) (vacant table_2) (vacant table_3) (vacant table_5) (vacant stove_1) (vacant table_4)
        (on onion_1 table_2) (at onion_1 table_2) (clear onion_1) (iscuttable onion_1) (item-free onion_1)
        (on onion_2 table_3) (at onion_2 table_3) (clear onion_2) (iscuttable onion_2) (item-free onion_2)
        (on onion_3 table_5) (at onion_3 table_5) (clear onion_3) (iscuttable onion_3) (item-free onion_3)
        (container_at pot_1 table_4) (ispot pot_1) (container_empty pot_1) (container-free pot_1)
        (container_at bowl_1 table_1) (isbowl bowl_1) (container_empty bowl_1) (container-free bowl_1)
        (iswater water_1)
        (empty board_1) (empty sink_1) (empty stove_1)
    )
    (:goal (and
        (in water_1 bowl_1)
        (isboiling water_1)
        (iscut onion_1)
        (addedto onion_1 water_1)
        (iscut onion_2)
        (addedto onion_2 water_1)
        (iscut onion_3)
        (addedto onion_3 water_1)
        (container_at bowl_1 table_1)
    ))
)