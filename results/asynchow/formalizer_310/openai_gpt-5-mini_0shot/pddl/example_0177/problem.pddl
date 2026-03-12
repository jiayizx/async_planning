(define (problem boost_athletic_problem)
  (:domain boost_athletic_performance)
  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending)
  )
  (:goal (and (step1_done) (step2_done) (step3_done) (step4_done)))
)
