(define (problem put_on_shoes_prob)
  (:domain put_on_shoes)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (right_sock_on_done)
    (left_sock_on_done)
  ))
)
