(define (domain care-for-dwarf-rabbits)
  (:requirements :durative-actions)
  (:predicates
    (find_vet_pending)
    (find_vet_done)
    (vaccinate_pending)
    (vaccinate_done)
    (deparasite_pending)
    (deparasite_done)
  )

  (:durative-action do_find_vet
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (find_vet_pending))
    :effect (and (at start (not (find_vet_pending))) (at end (find_vet_done)))
  )

  (:durative-action do_vaccinate
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (vaccinate_pending)) (at start (find_vet_done)))
    :effect (and (at start (not (vaccinate_pending))) (at end (vaccinate_done)))
  )

  (:durative-action do_deparasite
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (deparasite_pending)) (at start (find_vet_done)))
    :effect (and (at start (not (deparasite_pending))) (at end (deparasite_done)))
  )
)
