(define (problem remove_lead_water_prob)
  (:domain remove_lead_water)
  (:init
    (find_lab_pending)
    (collect_samples_pending)
    (deliver_and_review_pending)
  )
  (:goal (and
    (find_lab_done)
    (collect_samples_done)
    (deliver_and_review_done)
  ))
)
