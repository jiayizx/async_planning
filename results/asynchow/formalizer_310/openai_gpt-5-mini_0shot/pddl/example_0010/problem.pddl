(define (problem find_part_time_job_problem)
  (:domain find_part_time_job)
  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending) (step6_pending)
  )
  (:goal (and
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done)
  ))
)
