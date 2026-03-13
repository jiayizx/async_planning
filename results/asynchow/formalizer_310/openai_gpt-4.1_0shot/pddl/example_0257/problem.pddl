(define (problem care-for-dwarf-rabbits-problem)
  (:domain care-for-dwarf-rabbits)
  (:init
    (find_vet_pending)
    (vaccinate_pending)
    (deparasite_pending)
  )
  (:goal (and
    (find_vet_done)
    (vaccinate_done)
    (deparasite_done)
  ))
)
