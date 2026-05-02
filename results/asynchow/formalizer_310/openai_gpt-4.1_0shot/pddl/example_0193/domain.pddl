(define (domain cure_skin_rash)
  (:requirements :durative-actions)
  (:predicates
    (visit_doctor_pending)
    (visit_doctor_done)
    (apply_cortisone_pending)
    (apply_cortisone_done)
    (take_antihistamine_pending)
    (take_antihistamine_done)
    (try_antifungal_pending)
    (try_antifungal_done)
  )

  (:durative-action visit_doctor
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (visit_doctor_pending))
    :effect (and
      (at start (not (visit_doctor_pending)))
      (at end (visit_doctor_done))
    )
  )

  (:durative-action apply_cortisone
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (apply_cortisone_pending))
      (at start (visit_doctor_done))
    )
    :effect (and
      (at start (not (apply_cortisone_pending)))
      (at end (apply_cortisone_done))
    )
  )

  (:durative-action take_antihistamine
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (take_antihistamine_pending))
      (at start (visit_doctor_done))
    )
    :effect (and
      (at start (not (take_antihistamine_pending)))
      (at end (take_antihistamine_done))
    )
  )

  (:durative-action try_antifungal
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and
      (at start (try_antifungal_pending))
      (at start (visit_doctor_done))
    )
    :effect (and
      (at start (not (try_antifungal_pending)))
      (at end (try_antifungal_done))
    )
  )
)
