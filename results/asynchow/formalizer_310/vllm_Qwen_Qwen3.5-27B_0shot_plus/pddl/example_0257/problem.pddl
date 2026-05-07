(define (problem care_rabbit)
  (:domain dwarf_rabbit_care)
  
  (:init
    (find_vet_pending)
    (vaccinate_pending)
    (rid_parasites_pending)
  )

  (:goal (and
    (find_vet_done)
    (vaccinate_done)
    (rid_parasites_done)
  ))
)
