(define (domain care_dwarf_rabbits)
  (:requirements :durative-actions)
  (:predicates
    (find_vet_pending)
    (find_vet_done)
    (vaccinate_pending)
    (vaccinate_done)
    (deworm_pending)
    (deworm_done)
  )

  (:durative-action do_find_vet
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (find_vet_pending))
    :effect (and
              (at start (not (find_vet_pending)))
              (at end (find_vet_done))
            )
  )

  (:durative-action do_vaccinate
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (vaccinate_pending)) (at start (find_vet_done)))
    :effect (and
              (at start (not (vaccinate_pending)))
              (at end (vaccinate_done))
            )
  )

  (:durative-action do_deworm
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (deworm_pending)) (at start (find_vet_done)))
    :effect (and
              (at start (not (deworm_pending)))
              (at end (deworm_done))
            )
  )
)
