(define (problem kidney_donor_problem)
  (:domain kidney_donor)
  (:init
    (recover_in_hospital_pending)
    (manage_pain_pending)
    (prepare_followups_pending)
  )
  (:goal (and
    (recover_in_hospital_done)
    (manage_pain_done)
    (prepare_followups_done)
  ))
)
