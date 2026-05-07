(define (problem download-psp-games-problem)
  (:domain download-psp-games)

  (:objects
    step1 step2 step3 - step
  )

  (:init
    ; all steps initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  ; Goal: all steps done AND the final semantic predicate of the main chain (format_done)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (format_done)
  ))
)
