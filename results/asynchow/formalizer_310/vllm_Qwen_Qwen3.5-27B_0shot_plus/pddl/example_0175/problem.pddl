(define (problem cow_pregnancy_check_problem)
  (:domain cow_pregnancy_check)
  
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
)
