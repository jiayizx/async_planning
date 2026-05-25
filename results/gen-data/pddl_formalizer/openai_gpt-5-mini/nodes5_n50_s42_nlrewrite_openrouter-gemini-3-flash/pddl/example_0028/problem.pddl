(define (problem cure_gastritis)
  (:domain gastritis_cure)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ;; all steps are initially pending
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
    ;; final semantic predicate forces completion of the full causal chain
    (step5_complete)
  ))
)
