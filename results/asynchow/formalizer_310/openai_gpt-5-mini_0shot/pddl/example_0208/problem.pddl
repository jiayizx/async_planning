(define (problem make-steamed-sweet-potatoes)
  (:domain steamed-sweet-potatoes)

  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
  )

  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
  ))
)
