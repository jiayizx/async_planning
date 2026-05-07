(define (problem pet_hair_removal)
  (:domain remove_pet_hair)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step3_done)
    (step4_done)
  ))
  (:metric minimize (total-time))
)
