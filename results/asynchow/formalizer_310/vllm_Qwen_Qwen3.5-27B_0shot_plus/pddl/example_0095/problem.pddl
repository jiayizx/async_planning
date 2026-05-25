(define (problem learn_rollerblade)
  (:domain rollerblade_learning)
  
  (:init
    (walk_to_bus_stop_pending)
    (wait_for_bus_pending)
    (take_bus_to_rink_pending)
    (sign_up_pending)
    (rent_blades_pending)
    (wait_for_lessons_pending)
    (follow_instructions_pending)
  )

  (:goal (and
    (walk_to_bus_stop_done)
    (wait_for_bus_done)
    (take_bus_to_rink_done)
    (sign_up_done)
    (rent_blades_done)
    (wait_for_lessons_done)
    (follow_instructions_done)
  ))
)
