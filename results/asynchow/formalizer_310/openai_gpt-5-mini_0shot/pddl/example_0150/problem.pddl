(define (problem get_rid_blackheads_prob)
  (:domain get_rid_blackheads)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
  ))
)
