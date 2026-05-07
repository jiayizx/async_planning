(define (problem care_for_succulents_prob)
  (:domain care_for_succulents)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and (step_done step1) (step_done step2) (step_done step3)
              (pests_fought) (quarantine_done)))
)