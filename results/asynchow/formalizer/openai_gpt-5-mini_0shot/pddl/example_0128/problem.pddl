(define (problem put_on_left_sock_prob)
  (:domain put_on_left_sock)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ;; all steps start as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps done AND final semantic outcome (sock_fully_on)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (sock_fully_on)
  ))
)
