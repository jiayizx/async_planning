(define (problem scribblenauts_puzzle1_1_problem)
  (:domain scribblenauts_puzzle1_1)
  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending) (step6_pending) (step7_pending)
  )
  (:goal (and
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (step7_done)
  ))
)
