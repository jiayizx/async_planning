(define (domain treat_bruises)
  (:requirements :durative-actions)
  (:predicates
    (apply_cold_compress_pending)
    (apply_cold_compress_done)
    (clean_area_pending)
    (clean_area_done)
    (apply_concealer_pending)
    (apply_concealer_done)
    (massage_arnica_gel_pending)
    (massage_arnica_gel_done)
    (wait_bruise_transition_pending)
    (wait_bruise_transition_done)
  )

  (:durative-action apply_cold_compress
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (apply_cold_compress_pending)) (at start (clean_area_done)))
    :effect (and (at start (not (apply_cold_compress_pending))) (at end (apply_cold_compress_done)))
  )

  (:durative-action clean_area
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (clean_area_pending))
    :effect (and (at start (not (clean_area_pending))) (at end (clean_area_done)))
  )

  (:durative-action apply_concealer
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (apply_concealer_pending)) (at start (wait_bruise_transition_done)))
    :effect (and (at start (not (apply_concealer_pending))) (at end (apply_concealer_done)))
  )

  (:durative-action massage_arnica_gel
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (massage_arnica_gel_pending)) (at start (apply_cold_compress_done)) (at start (clean_area_done)))
    :effect (and (at start (not (massage_arnica_gel_pending))) (at end (massage_arnica_gel_done)))
  )

  (:durative-action wait_bruise_transition
    :parameters ()
    :duration (= ?duration 345600)
    :condition (at start (wait_bruise_transition_pending))
    :effect (and (at start (not (wait_bruise_transition_pending))) (at end (wait_bruise_transition_done)))
  )
)
