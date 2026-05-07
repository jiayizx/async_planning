(define (problem make_pie_filling)
  (:domain pie_filling)
  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
  )
  (:goal (and
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (pie_baked)
  ))
)
