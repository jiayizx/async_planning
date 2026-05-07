(define (problem hip_exercise_problem)
  (:domain hip_exercise)
  
  (:init
    (stretch_general_pending)
    (stretch_itb_pending)
    (stretch_piriformis_pending)
    (stretch_leg_chest_pending)
    (stretch_hamstring_pending)
  )

  (:goal (and
    (stretch_general_done)
    (stretch_itb_done)
    (stretch_piriformis_done)
    (stretch_leg_chest_done)
    (stretch_hamstring_done)
  ))
)