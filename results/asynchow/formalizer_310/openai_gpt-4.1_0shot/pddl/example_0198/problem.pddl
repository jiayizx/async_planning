(define (problem diagnose_geriatric_hamster_p)
  (:domain diagnose_geriatric_hamster)
  (:init
    (take_to_vet_pending)
    (watch_lethargy_pending)
    (look_discharge_pending)
  )
  (:goal (and
    (take_to_vet_done)
    (watch_lethargy_done)
    (look_discharge_done)
  ))
)
