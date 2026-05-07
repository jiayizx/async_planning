(define (problem roast_beef_problem)
  (:domain roast_beef)

  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step
  )

  (:init
    ; mark all steps as pending initially (required by rule 7)
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

    ; bind step objects to their action-specific predicates
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

    ; No step_done or sX_completed predicates true initially
  )

  ; Goal: all steps completed plus final semantic predicate
  ; We choose the carving (step7) completion as final semantic outcome (meal served)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (step_done step8)
    (step_done step9)
    (step_done step10)
    (s7_completed)
  ))
)
