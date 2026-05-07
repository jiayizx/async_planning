(define (problem kidney_donor_problem)
  (:domain kidney_donor)
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
      (hospital_recovered)
      (pain_managed)
      (followups_prepared)
    )
  )
)