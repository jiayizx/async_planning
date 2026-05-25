(define (problem make-steamed-ginger-pudding)
  (:domain steamed-ginger-pudding)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ;; all step_pending predicates must be true initially
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
           (combined_batter)
         )
  )
)
