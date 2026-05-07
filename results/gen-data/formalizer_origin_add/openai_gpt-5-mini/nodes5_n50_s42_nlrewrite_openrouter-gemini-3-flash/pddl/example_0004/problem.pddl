(define (problem make-farina-problem)
  (:domain make-farina)

  ;; exactly 5 step objects must be declared (one per step)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; all pending predicates must be true initially (per rule)
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
  )

  (:goal (and
            (step_done1)
            (step_done2)
            (step_done3)
            (step_done4)
            (step_done5)
            ;; final semantic predicate to force the full causal chain
            (s5_done)
         ))
)
