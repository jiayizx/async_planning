(define (problem protect_from_sun_problem)
  (:domain protect_from_sun)

  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
  )

  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
  ))

  (:metric minimize (total-time))
)
