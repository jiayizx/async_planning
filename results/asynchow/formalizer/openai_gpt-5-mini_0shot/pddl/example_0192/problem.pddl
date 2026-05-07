(define (problem exfoliate_eyebrows_prob)
  (:domain exfoliate_eyebrows)

  (:objects
    step1 step2 step3 step4 - step
  )

  (:init
    ; all steps start as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )

  ; Goal: all steps done and the final semantic outcome produced
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (exfoliation_done)
  ))
)
