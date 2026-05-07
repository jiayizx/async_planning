(define (problem learn_recipe_prob)
  (:domain recipe_learning)
  (:objects
    s1 s2 s3 s4 s5 s6 s7 - step
  )
  (:init
    (step_pending s1)
    (step_pending s2)
    (step_pending s3)
    (step_pending s4)
    (step_pending s5)
    (step_pending s6)
    (step_pending s7)
  )
  (:goal
    (and
      (step1_done s1)
      (step2_done s2)
      (step3_done s3)
      (step4_done s4)
      (step5_done s5)
      (step6_done s6)
      (step7_done s7)
    )
  )
)