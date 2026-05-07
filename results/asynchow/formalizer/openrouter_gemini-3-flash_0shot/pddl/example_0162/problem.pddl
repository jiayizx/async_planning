(define (problem change_name_problem)
  (:domain change_name_divorce)
  (:objects
    s1 s2 s3 s4 - step
  )
  (:init
    (step_pending s1)
    (step_pending s2)
    (step_pending s3)
    (step_pending s4)
  )
  (:goal
    (and
      (step_done s1)
      (step_done s2)
      (step_done s3)
      (step_done s4)
      (petition_filed)
      (ss_card_done)
      (license_done)
      (passport_done)
    )
  )
  (:metric minimize (total-time))
)