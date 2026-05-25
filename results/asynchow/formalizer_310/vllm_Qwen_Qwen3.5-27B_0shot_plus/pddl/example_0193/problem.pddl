(define (problem cure_rash)
  (:domain skin_rash_cure)
  
  (:init
    (visit_doctor_pending)
    (apply_cream_pending)
    (take_pill_pending)
    (try_antifungal_pending)
  )

  (:goal (and
    (visit_doctor_done)
    (apply_cream_done)
    (take_pill_done)
    (try_antifungal_done)
  ))
)
