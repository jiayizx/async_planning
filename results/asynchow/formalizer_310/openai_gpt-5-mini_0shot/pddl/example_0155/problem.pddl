(define (problem stretch_canvas_shoes_problem)
  (:domain stretch_canvas_shoes)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  (:goal (and (step1_done) (step2_done) (step3_done)))
)
