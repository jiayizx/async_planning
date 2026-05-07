(define (problem fix_dishwasher_prob)
  (:domain dishwasher_repair)
  (:objects
    s1 s2 s3 s4 s5 s6 s7 - step
  )
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
    (step6_pending)
    (step7_pending)
  )
  (:goal
    (and
      (step1_done)
      (step2_done)
      (step3_done)
      (step4_done)
      (step5_done)
      (step6_done)
      (step7_done)
    )
  )
)