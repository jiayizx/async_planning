(define (problem help_child_community_prob)
  (:domain help_child_community)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; all steps start as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; The goal requires all steps to be done and the final semantic outcome (deliver_done)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (deliver_done)
  ))
)
