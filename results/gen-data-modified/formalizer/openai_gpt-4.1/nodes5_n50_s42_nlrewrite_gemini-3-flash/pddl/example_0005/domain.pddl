(define (domain steak-cooking)
  (:requirements :durative-actions)
  (:predicates
    (season_steak_pending)
    (season_steak_done)
    (rest_steak_pending)
    (rest_steak_done)
    (remove_steak_pending)
    (remove_steak_done)
    (sear_steak_pending)
    (sear_steak_done)
    (serve_steak_pending)
    (serve_steak_done)
  )

  (:durative-action do_season_steak
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (season_steak_pending)) (at start (sear_steak_done)))
    :effect (and (at start (not (season_steak_pending))) (at end (season_steak_done)))
  )

  (:durative-action do_rest_steak
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (rest_steak_pending)) (at start (sear_steak_done)))
    :effect (and (at start (not (rest_steak_pending))) (at end (rest_steak_done)))
  )

  (:durative-action do_remove_steak
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (remove_steak_pending))
    :effect (and (at start (not (remove_steak_pending))) (at end (remove_steak_done)))
  )

  (:durative-action do_sear_steak
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (sear_steak_pending)) (at start (remove_steak_done)))
    :effect (and (at start (not (sear_steak_pending))) (at end (sear_steak_done)))
  )

  (:durative-action do_serve_steak
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (serve_steak_pending)) (at start (season_steak_done)))
    :effect (and (at start (not (serve_steak_pending))) (at end (serve_steak_done)))
  )
)
