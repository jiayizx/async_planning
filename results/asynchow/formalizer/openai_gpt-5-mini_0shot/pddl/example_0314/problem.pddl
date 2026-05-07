(define (problem remove_coffee_stain_prob)
  (:domain remove_coffee_stain)

  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step
  )

  (:init
    ; all steps start pending (rule 7)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
    (step_pending step8)
    (step_pending step9)
    (step_pending step10)

    ; bind each object to its action via type-tags
    (is_step1 step1)
    (is_step2 step2)
    (is_step3 step3)
    (is_step4 step4)
    (is_step5 step5)
    (is_step6 step6)
    (is_step7 step7)
    (is_step8 step8)
    (is_step9 step9)
    (is_step10 step10)

    ; No semantic predicates are true initially; they will be produced by actions
  )

  ; Goal: all steps done AND final semantic predicate (dried) per rule 9
  (:goal (and
    (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5)
    (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
    (dried)
  ))
)
