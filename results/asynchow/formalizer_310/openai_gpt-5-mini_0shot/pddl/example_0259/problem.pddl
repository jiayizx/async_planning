(define (problem make_beerbox_top_hat)
  (:domain beerbox_top_hat)

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
