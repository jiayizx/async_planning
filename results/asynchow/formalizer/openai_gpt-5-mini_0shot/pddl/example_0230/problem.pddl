(define (problem contact-leah-problem)
  (:domain contact-leah)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)

    ;; bind each step object to its corresponding action via is_stepN predicates
    (is_step1 step1)
    (is_step2 step2)
    (is_step3 step3)
    (is_step4 step4)
    (is_step5 step5)
  )

  ;; Goal: all steps done AND the semantic final predicate (contact_made) must be true
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (step_done step5)
            (contact_made)
         ))
)
