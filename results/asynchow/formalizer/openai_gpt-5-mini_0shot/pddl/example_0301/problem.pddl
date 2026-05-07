(define (problem iron_shirt_prob)
  (:domain iron_shirt)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; All steps start pending per rule 7
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal requires every step be done and the final semantic predicate (towels_ready)
  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (step_done step4)
           (step_done step5)
           (towels_ready)
         ))
)
