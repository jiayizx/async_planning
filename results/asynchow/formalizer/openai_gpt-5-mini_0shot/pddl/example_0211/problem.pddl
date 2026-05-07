(define (problem write-paper-due-tomorrow)
  (:domain write-paper)

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

    ;; No semantic predicates are initially true (they will become true when steps finish).
  )

  ;; Goal: all steps done and final semantic predicate (evidence_done) true
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (step_done step5)
            (evidence_done)
         )
  )
)
