(define (problem make_beer_box_hat)
  (:domain beer_box_hat)
  
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  
  (:goal (and (step1_done) (step2_done) (step3_done)))
)