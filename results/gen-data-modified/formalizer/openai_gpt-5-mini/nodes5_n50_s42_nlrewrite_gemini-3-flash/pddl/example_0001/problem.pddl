(define (problem introduce_friends_problem) (:domain introduce_friends)
  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
  )
  (:goal (and
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
  ))
)
