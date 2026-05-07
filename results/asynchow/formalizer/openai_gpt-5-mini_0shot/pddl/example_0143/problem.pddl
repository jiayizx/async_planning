(define (problem clean-silk-tie-prob)
  (:domain clean-silk-tie)
  (:objects step1 step2 step3 - step)

  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  ; Ordering constraint: Step 2 (handwash) must precede Step 1 (spray)
  ; Implemented by requiring handwash_done (produced at end of step2) as a start condition of step1

  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (spray_done) ; final semantic predicate to force the chain (step2 -> step1)
         ))
)
