(define (problem robotouille_soup_sandwich)
  (:domain robotouille)
  (:requirements :durative-actions :typing)
  (:objects
    table_1 - station
    table_2 - station
    table_3 - station
    table_4 - station
    table_5 - station
    table_6 - station
    stove_1 - station
    board_1 - station
    sink_1 - station
    tomato_1 - item
    lettuce_1 - item
    chicken_1 - item
    bread_1 - item
    bread_2 - item
    robot_1 - player
    pot_1 - container
    bowl_1 - container
    water_1 - meal
  )
  (:init (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5) (istable table_6) (isstove stove_1) (isboard board_1) (issink sink_1) (loc robot_1 table_1) (nothing robot_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant table_5) (vacant table_6) (vacant stove_1) (vacant board_1) (vacant sink_1) (empty stove_1) (empty board_1) (empty sink_1) (on tomato_1 table_2) (at tomato_1 table_2) (clear tomato_1) (on lettuce_1 table_3) (at lettuce_1 table_3) (clear lettuce_1) (on chicken_1 table_5) (at chicken_1 table_5) (clear chicken_1) (on bread_1 table_6) (at bread_1 table_6) (at bread_2 table_6) (atop bread_2 bread_1) (clear bread_2) (iscuttable tomato_1) (iscuttable lettuce_1) (iscookable chicken_1) (item-free tomato_1) (item-free lettuce_1) (item-free chicken_1) (item-free bread_1) (item-free bread_2) (container_at pot_1 table_4) (container_empty pot_1) (container-free pot_1) (ispot pot_1) (container_at bowl_1 table_1) (container_empty bowl_1) (container-free bowl_1) (isbowl bowl_1) (iswater water_1))
  (:goal (and
    (in water_1 bowl_1)
    (isboiling water_1)
    (addedto tomato_1 water_1)
    (container_at bowl_1 table_1)
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
  ))
)