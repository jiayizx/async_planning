(define (problem poker_learning_problem)
  (:domain poker_learning)
  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending) (step6_pending)
  )
  (:goal (and (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (played_casino)))
)