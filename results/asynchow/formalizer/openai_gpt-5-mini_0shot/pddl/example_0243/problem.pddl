(define (problem sew-button-problem)
  (:domain sew-button)
  (:objects step1 step2 step3 step4 step5 - step)
  (:init
    ;; All steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  ;; Goal requires each step done and the final semantic outcomes of both chains
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (tied_knot)
    (marked_fabric)
  ))
)
