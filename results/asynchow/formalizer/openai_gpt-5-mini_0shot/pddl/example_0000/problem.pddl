(define (problem impress_popular_girls_problem)
  (:domain impress_popular_girls)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  (:goal (and
    ;; require completion of every step
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    ;; final semantic predicate to enforce full causal chain
    (impress_done)
  ))
)
