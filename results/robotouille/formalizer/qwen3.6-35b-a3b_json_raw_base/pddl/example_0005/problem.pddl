(define (problem robotouille_soup)
  (:domain robotouille)
  (:objects table_1 sink_1 - station
            potato_1 - item
            pot_1 bowl_1 - container
            water_1 - meal
            robot_1 - player)
  (:init
    (loc robot_1 table_1)
    (nothing robot_1)
    (on potato_1 table_1)
    (at potato_1 table_1)
    (clear potato_1)
    (item-free potato_1)
    (iscuttable potato_1)
    (empty sink_1)
    (vacant sink_1)
    (container_at pot_1 sink_1)
    (container_empty pot_1)
    (container-free pot_1)
    (ispot pot_1)
    (container_at bowl_1 sink_1)
    (container_empty bowl_1)
    (container-free bowl_1)
    (isbowl bowl_1)
    (iswater water_1)
  )
  (:goal
    (and
      (in water_1 bowl_1)
      (addedto potato_1 water_1)
      (isboiling water_1)
      (container_at bowl_1 table_1)
    )
  )
)