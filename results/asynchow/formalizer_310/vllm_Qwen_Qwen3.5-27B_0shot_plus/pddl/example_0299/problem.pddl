(define (problem flavor_cigars_problem)
  (:domain flavor_cigars)
  
  (:init
    (choose_flavor_pending)
    (select_cigar_pending)
    (prepare_pads_pending)
    (soak_pads_pending)
    (stash_cigar_pending)
    (place_baggie_pending)
    (enjoy_cigar_pending)
  )

  (:goal (and
    (choose_flavor_done)
    (select_cigar_done)
    (prepare_pads_done)
    (soak_pads_done)
    (stash_cigar_done)
    (place_baggie_done)
    (enjoy_cigar_done)
  ))
)