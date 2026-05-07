(define (problem wedding_problem)
  (:domain wedding)
  (:init
    (pending_step1) (pending_step2) (pending_step3) (pending_step4) (pending_step5) (pending_step6) (pending_step7)
  )
  (:goal (and
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (step7_done)
  ))
)