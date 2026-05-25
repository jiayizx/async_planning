(define (problem robotouille_soup_and_sandwiches)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 table_6 table_7 table_8 stove_1 board_1 sink_1 - station
    tomato_1 onion_1 chicken_1 chicken_2 bread_1 bread_2 bread_3 bread_4 - item
    robot_1 - player
    pot_1 bowl_1 - container
    water_1 - meal
  )
  (:init (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5) (istable table_6) (istable table_7) (istable table_8) (isstove stove_1) (isboard board_1) (issink sink_1) (loc robot_1 table_1) (nothing robot_1) (vacant stove_1) (vacant board_1) (vacant sink_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5) (vacant table_6) (vacant table_7) (vacant table_8) (iscuttable tomato_1) (iscuttable onion_1) (iscookable chicken_1) (iscookable chicken_2) (on tomato_1 table_2) (at tomato_1 table_2) (clear tomato_1) (item-free tomato_1) (on onion_1 table_3) (at onion_1 table_3) (clear onion_1) (item-free onion_1) (on chicken_1 table_5) (at chicken_1 table_5) (clear chicken_1) (item-free chicken_1) (on chicken_2 table_6) (at chicken_2 table_6) (clear chicken_2) (item-free chicken_2) (on bread_1 table_7) (at bread_1 table_7)  (item-free bread_1) (at bread_2 table_7) (atop bread_2 bread_1) (clear bread_2) (item-free bread_2) (on bread_3 table_8) (at bread_3 table_8) (item-free bread_3) (at bread_4 table_8) (atop bread_4 bread_3) (clear bread_4) (item-free bread_4) (empty stove_1) (empty board_1) (empty sink_1)  (ispot pot_1) (isbowl bowl_1) (container_at pot_1 table_4) (container_empty pot_1) (container-free pot_1) (container_at bowl_1 table_1) (container_empty bowl_1) (container-free bowl_1) (iswater water_1))
  (:goal (and
    (in water_1 bowl_1)
    (isboiling water_1)
    (iscut tomato_1)
    (addedto tomato_1 water_1)
    (iscut onion_1)
    (addedto onion_1 water_1)
    (container_at bowl_1 table_1)
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
    (on bread_3 table_3)
    (iscooked chicken_2)
    (at chicken_2 table_3)
    (at bread_4 table_3)
    (clear bread_4)
  ))
)