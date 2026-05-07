(define (problem identify-hornet-prob)
  (:domain identify-hornet)
  (:objects step1 step2 step3 - step)
  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)

    ;; assign roles so each durative-action applies only to its intended step object
    (is-step1 step1)
    (is-step2 step2)
    (is-step3 step3)
  )

  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           ;; final semantic predicate to force the full causal chain
           (identified-hornet)
         )
  )
)
