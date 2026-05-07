(define (problem make_chili_sauce_prob)
  (:domain chili_sauce_making)
  (:objects
    s1 s2 s3 s4 s5 s6 - step
  )
  (:init
    (step_pending s1)
    (step_pending s2)
    (step_pending s3)
    (step_pending s4)
    (step_pending s5)
    (step_pending s6)
  )
  (:goal
    (and
      (step_done s1)
      (step_done s2)
      (step_done s3)
      (step_done s4)
      (step_done s5)
      (step_done s6)
      (sauce_cooled)
    )
  )
)