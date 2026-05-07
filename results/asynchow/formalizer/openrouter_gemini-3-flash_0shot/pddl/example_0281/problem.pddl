(define (problem strengthen_hips_prob)
  (:domain strengthen_hips)
  (:objects
    s1 s2 s3 s4 s5 - step
  )
  (:init
    (step_pending s1)
    (step_pending s2)
    (step_pending s3)
    (step_pending s4)
    (step_pending s5)
  )
  (:goal
    (and
      (step_done s1)
      (step_done s2)
      (step_done s3)
      (step_done s4)
      (step_done s5)
      (stretch_timed)
      (itb_stretched)
      (piriformis_stretched)
      (leg_to_chest_done)
      (hamstring_stretched)
    )
  )
)