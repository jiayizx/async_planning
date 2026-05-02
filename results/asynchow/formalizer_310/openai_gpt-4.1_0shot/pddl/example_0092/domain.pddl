(define (domain add_large_animal)
  (:requirements :durative-actions)
  (:predicates
    (call_about_large_animal_pending)
    (call_about_large_animal_done)
    (drive_to_zoo_pending)
    (drive_to_zoo_done)
    (set_up_paperwork_pending)
    (set_up_paperwork_done)
    (set_up_area_pending)
    (set_up_area_done)
    (receive_large_animal_pending)
    (receive_large_animal_done)
  )

  (:durative-action call_about_large_animal
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (call_about_large_animal_pending))
    :effect (and (at start (not (call_about_large_animal_pending)))
                 (at end (call_about_large_animal_done)))
  )

  (:durative-action drive_to_zoo
    :parameters ()
    :duration (= ?duration 2100)
    :condition (and (at start (drive_to_zoo_pending))
                    (at start (call_about_large_animal_done)))
    :effect (and (at start (not (drive_to_zoo_pending)))
                 (at end (drive_to_zoo_done)))
  )

  (:durative-action set_up_paperwork
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (set_up_paperwork_pending))
                    (at start (drive_to_zoo_done)))
    :effect (and (at start (not (set_up_paperwork_pending)))
                 (at end (set_up_paperwork_done)))
  )

  (:durative-action set_up_area
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (set_up_area_pending))
                    (at start (drive_to_zoo_done)))
    :effect (and (at start (not (set_up_area_pending)))
                 (at end (set_up_area_done)))
  )

  (:durative-action receive_large_animal
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (receive_large_animal_pending))
                    (at start (set_up_paperwork_done)))
    :effect (and (at start (not (receive_large_animal_pending)))
                 (at end (receive_large_animal_done)))
  )
)
