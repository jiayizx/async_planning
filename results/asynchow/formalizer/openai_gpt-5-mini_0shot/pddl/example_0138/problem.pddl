(define (problem get_gov_assist_single_mothers)
  (:domain gov_assist)
  (:objects s1 s2 s3 - step)

  (:init
    (step_pending s1)
    (step_pending s2)
    (step_pending s3)
  )

  (:goal (and
    (step_done s1)
    (step_done s2)
    (step_done s3)
    (pell_applied)
    (fseog_applied)
  ))
)
