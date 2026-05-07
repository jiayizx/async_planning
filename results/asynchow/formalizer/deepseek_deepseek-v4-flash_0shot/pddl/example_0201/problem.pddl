(define (problem clean_fireplace_problem)
  (:domain clean_fireplace)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4)
    (scoop_step step1)
    (apply_step step2)
    (remove_step step3)
    (wipe_step step4)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (remove_done)
  ))
)