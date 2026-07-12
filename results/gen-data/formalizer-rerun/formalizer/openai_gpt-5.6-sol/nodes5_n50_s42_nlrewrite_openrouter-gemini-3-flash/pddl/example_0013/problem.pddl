(define (problem complete-rustic-cabin-painting)
  (:domain rustic-cabin-painting)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    (step1_pending step1)
    (step2_pending step2)
    (step3_pending step3)
    (step4_pending step4)
    (step5_pending step5)
  )

  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (step_done step5)
      (protective_varnish_applied)
    )
  )
)