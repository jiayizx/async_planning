(define (domain add_large_animal)
  (:requirements :durative-actions)
  
  (:predicates
    (call_about_animal_pending)
    (call_about_animal_done)
    (drive_to_zoo_pending)
    (drive_to_zoo_done)
    (setup_paperwork_pending)
    (setup_paperwork_done)
    (setup_area_pending)
    (setup_area_done)
    (receive_animal_pending)
    (receive_animal_done)
  )

  (:durative-action do_call_about_animal
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (call_about_animal_pending))
    :effect (and (at start (not (call_about_animal_pending)))
                 (at end (call_about_animal_done)))
  )

  (:durative-action do_drive_to_zoo
    :parameters ()
    :duration (= ?duration 2100)
    :condition (and (at start (drive_to_zoo_pending))
                    (at start (call_about_animal_done)))
    :effect (and (at start (not (drive_to_zoo_pending)))
                 (at end (drive_to_zoo_done)))
  )

  (:durative-action do_setup_paperwork
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (setup_paperwork_pending))
                    (at start (drive_to_zoo_done)))
    :effect (and (at start (not (setup_paperwork_pending)))
                 (at end (setup_paperwork_done)))
  )

  (:durative-action do_setup_area
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (setup_area_pending))
                    (at start (drive_to_zoo_done)))
    :effect (and (at start (not (setup_area_pending)))
                 (at end (setup_area_done)))
  )

  (:durative-action do_receive_animal
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (receive_animal_pending))
                    (at start (setup_paperwork_done)))
    :effect (and (at start (not (receive_animal_pending)))
                 (at end (receive_animal_done)))
  )
)
