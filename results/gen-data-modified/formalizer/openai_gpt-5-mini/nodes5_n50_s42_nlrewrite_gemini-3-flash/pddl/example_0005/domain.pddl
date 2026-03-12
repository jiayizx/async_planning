(define (domain cook_steak)
  (:requirements :durative-actions)
  (:predicates
    (season_pending)
    (season_done)
    (rest_pending)
    (rest_done)
    (remove_pending)
    (remove_done)
    (sear_pending)
    (sear_done)
    (serve_pending)
    (serve_done)
  )

  (:durative-action season_steak
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (season_pending)) (at start (sear_done)))
    :effect (and (at start (not (season_pending))) (at end (season_done)))
  )

  (:durative-action rest_steak
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (rest_pending)) (at start (sear_done)))
    :effect (and (at start (not (rest_pending))) (at end (rest_done)))
  )

  (:durative-action remove_from_fridge
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (remove_pending)))
    :effect (and (at start (not (remove_pending))) (at end (remove_done)))
  )

  (:durative-action sear_steak
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (sear_pending)) (at start (remove_done)))
    :effect (and (at start (not (sear_pending))) (at end (sear_done)))
  )

  (:durative-action serve_steak
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (serve_pending)) (at start (season_done)))
    :effect (and (at start (not (serve_pending))) (at end (serve_done)))
  )
)
