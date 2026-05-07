(define (problem dress-metal-girls-prob)
  (:domain dress-metal-girls)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)

    ; bind each object to its corresponding action identity predicate
    (is_step1 step1)
    (is_step2 step2)
    (is_step3 step3)
    (is_step4 step4)
    (is_step5 step5)
  )

  ; Goal requires all steps completed and the final semantic predicate done1
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (step_done step5)
            (done1)
         ))
)
