(define (problem make-canoe-prob) (:domain make-canoe)
  (:init
    (apply_seal_pending)
    (select_harvest_pending)
    (hollow_out_pending)
    (carve_bow_stern_pending)
    (install_seats_pending)
  )

  (:goal (and
    (apply_seal_done)
    (select_harvest_done)
    (hollow_out_done)
    (carve_bow_stern_done)
    (install_seats_done)
  ))
)
