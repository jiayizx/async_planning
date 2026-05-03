(define (problem add_large_animal_task)
  (:domain add_large_animal)
  
  (:init
    (call_about_animal_pending)
    (drive_to_zoo_pending)
    (setup_paperwork_pending)
    (setup_area_pending)
    (receive_animal_pending)
  )

  (:goal (and
    (call_about_animal_done)
    (drive_to_zoo_done)
    (setup_paperwork_done)
    (setup_area_done)
    (receive_animal_done)
  ))
)
