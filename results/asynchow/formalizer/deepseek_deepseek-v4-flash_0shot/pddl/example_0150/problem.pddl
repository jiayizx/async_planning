(define (problem get_rid_of_blackheads_problem)
  (:domain get_rid_of_blackheads)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and (step_done step1) (step_done step2) (step_done step3)
              (s1_done) (s2_done) (s3_done)))
)