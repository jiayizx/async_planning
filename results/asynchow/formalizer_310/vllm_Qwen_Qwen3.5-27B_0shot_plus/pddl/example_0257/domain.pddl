(define (domain dwarf_rabbit_care)
  (:requirements :durative-actions)
  
  (:predicates
    (find_vet_pending)
    (find_vet_done)
    (vaccinate_pending)
    (vaccinate_done)
    (rid_parasites_pending)
    (rid_parasites_done)
  )

  (:durative-action find_vet
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (find_vet_pending))
    :effect (and (at start (not (find_vet_pending))) (at end (find_vet_done)))
  )

  (:durative-action vaccinate
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (vaccinate_pending)) (at start (find_vet_done)))
    :effect (and (at start (not (vaccinate_pending))) (at end (vaccinate_done)))
  )

  (:durative-action rid_parasites
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (rid_parasites_pending)) (at start (find_vet_done)))
    :effect (and (at start (not (rid_parasites_pending))) (at end (rid_parasites_done)))
  )
)
