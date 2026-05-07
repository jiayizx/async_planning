(define (problem stretch-canvas-shoes-prob)
  (:domain stretch-canvas-shoes)

  (:objects
    step1 step2 step3 - step
  )

  (:init
    ;; All steps start as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)

    ;; Note: semantic predicates for steps are initially false (they will be produced by actions)
  )

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (stretched)
  ))
)
