(define (problem cure-gastritis)
  (:domain gastritis-cure)

  (:objects
    step1 - step1type
    step2 - step2type
    step3 - step3type
    step4 - step4type
    step5 - step5type
  )

  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (step_done step5)
      (antibiotic_course_completed)
      (recovery_confirmed)
    )
  )

  (:metric minimize (total-time))
)