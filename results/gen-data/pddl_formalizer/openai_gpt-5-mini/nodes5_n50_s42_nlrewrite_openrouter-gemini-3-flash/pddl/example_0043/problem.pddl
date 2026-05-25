(define (problem spotting-warning-signs-problem)
  (:domain spotting-warning-signs)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; all steps start pending (rule 7)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps completed and the final semantic predicate (crossref_done)
  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (step_done step4)
           (step_done step5)
           (crossref_done)
         ) )
)
