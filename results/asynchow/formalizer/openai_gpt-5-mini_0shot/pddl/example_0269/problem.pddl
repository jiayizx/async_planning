(define (problem make-marshmallow-desserts-prob)
  (:domain make-marshmallow-desserts)
  (:objects step1 step2 step3 - step)

  (:init
    ;; all steps are initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  ;; Goal: all steps completed and final semantic outcome (dessert_ready)
  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (dessert_ready)
         ))
)
