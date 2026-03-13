(define (domain tuna_patties)
  (:requirements :durative-actions)
  (:predicates
    (drain_pending) (drain_done)
    (preheat_pending) (preheat_done)
    (flake_pending) (flake_done)
    (chop_pending) (chop_done)
    (saute_pending) (saute_done)
    (mix_pending) (mix_done)
    (form_pending) (form_done)
    (chill_pending) (chill_done)
    (fry_pending) (fry_done)
    (clean_pending) (clean_done)
  )

  (:durative-action drain
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (drain_pending))
    :effect (and (at start (not (drain_pending))) (at end (drain_done)))
  )

  (:durative-action preheat
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action flake
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (flake_pending)) (at start (drain_done)))
    :effect (and (at start (not (flake_pending))) (at end (flake_done)))
  )

  (:durative-action chop
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (chop_pending)) (at start (drain_done)))
    :effect (and (at start (not (chop_pending))) (at end (chop_done)))
  )

  (:durative-action saute
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (saute_pending)) (at start (chop_done)))
    :effect (and (at start (not (saute_pending))) (at end (saute_done)))
  )

  (:durative-action mix
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (mix_pending)) (at start (preheat_done)) (at start (flake_done)))
    :effect (and (at start (not (mix_pending))) (at end (mix_done)))
  )

  (:durative-action form
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (form_pending)) (at start (mix_done)))
    :effect (and (at start (not (form_pending))) (at end (form_done)))
  )

  (:durative-action chill
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (chill_pending)) (at start (saute_done)))
    :effect (and (at start (not (chill_pending))) (at end (chill_done)))
  )

  (:durative-action fry
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (fry_pending)) (at start (form_done)))
    :effect (and (at start (not (fry_pending))) (at end (fry_done)))
  )

  (:durative-action clean
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (clean_pending)) (at start (flake_done)) (at start (chop_done)))
    :effect (and (at start (not (clean_pending))) (at end (clean_done)))
  )
)
