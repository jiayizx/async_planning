(define (problem clean_tie)
  (:domain silk_tie_cleaning)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (tucked_away)
      (washed)
      (protected)
    )
  )
)