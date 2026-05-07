(define (problem season-tilapia-problem)
  (:domain season-tilapia)
  (:objects step1 step2 step3 step4 step5 - step)
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (baked_done)  ;; final semantic predicate to force full chain
  ))
)
