(define (problem pickle-jalapenos-problem)
  (:domain pickle-jalapenos)
  (:objects step1 step2 step3 - step)
  (:init
    ;; All steps start as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           ;; final semantic predicate to enforce full causal chain
           (pickled_jalapenos)
         ))
)
