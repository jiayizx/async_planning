(define (problem buy_fishing_rod_prob)
  (:domain buy_fishing_rod)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (employee_noted)
    (paid)
    (receipt_stored)
  ))
  (:metric minimize (total-time))
)