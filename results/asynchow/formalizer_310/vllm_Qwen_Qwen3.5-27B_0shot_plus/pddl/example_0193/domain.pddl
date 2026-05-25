(define (domain skin_rash_cure)
  (:requirements :durative-actions)
  
  (:predicates
    (visit_doctor_pending)
    (visit_doctor_done)
    (apply_cream_pending)
    (apply_cream_done)
    (take_pill_pending)
    (take_pill_done)
    (try_antifungal_pending)
    (try_antifungal_done)
  )

  (:durative-action visit_doctor
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (visit_doctor_pending))
    :effect (and (at start (not (visit_doctor_pending)))
                 (at end (visit_doctor_done)))
  )

  (:durative-action apply_cream
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (apply_cream_pending))
                    (at start (visit_doctor_done)))
    :effect (and (at start (not (apply_cream_pending)))
                 (at end (apply_cream_done)))
  )

  (:durative-action take_pill
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (take_pill_pending))
                    (at start (visit_doctor_done)))
    :effect (and (at start (not (take_pill_pending)))
                 (at end (take_pill_done)))
  )

  (:durative-action try_antifungal
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (try_antifungal_pending))
                    (at start (visit_doctor_done)))
    :effect (and (at start (not (try_antifungal_pending)))
                 (at end (try_antifungal_done)))
  )
)
