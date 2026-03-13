(define (problem overcome_fear_reading_problem)
  (:domain overcome_fear_reading)

  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )

  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
  ))
)
