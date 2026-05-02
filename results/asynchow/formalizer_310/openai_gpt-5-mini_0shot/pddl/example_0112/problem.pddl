(define (problem get_ahead_work_problem)
  (:domain get_ahead_work)
  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
  )
  (:goal (and (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)))
)
