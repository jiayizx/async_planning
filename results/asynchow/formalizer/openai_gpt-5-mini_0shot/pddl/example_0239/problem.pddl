(define (problem organize-hello-kitty-party)
  (:domain hello-kitty-party)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ; all steps are initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ; Goal: all steps completed and the final semantic predicate produced by the
  ; last action in the ordering chain (step1 is the one that must follow step2)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (party_organized)
  ))
)
