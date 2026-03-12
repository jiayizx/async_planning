(define (problem care_dwarf_rabbits_problem)
  (:domain care_dwarf_rabbits)
  (:init
    (find_vet_pending)
    (vaccinate_pending)
    (deworm_pending)
  )
  (:goal (and
    (find_vet_done)
    (vaccinate_done)
    (deworm_done)
  ))
)
