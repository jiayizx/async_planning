(define (problem eat_english_muffin)
  (:domain english_muffin_prep)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (french_toast_made)
      (filling_made)
      (sandwich_assembled)
      (toppings_added)
    )
  )
)