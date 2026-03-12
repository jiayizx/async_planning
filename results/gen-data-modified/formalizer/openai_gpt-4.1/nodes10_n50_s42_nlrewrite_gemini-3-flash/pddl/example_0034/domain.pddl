(define (domain tuna_patties)
  (:requirements :durative-actions)
  (:predicates
    (drain_tuna_pending)
    (drain_tuna_done)
    (preheat_pan_pending)
    (preheat_pan_done)
    (flake_tuna_pending)
    (flake_tuna_done)
    (chop_veggies_pending)
    (chop_veggies_done)
    (saute_veggies_pending)
    (saute_veggies_done)
    (mix_binders_pending)
    (mix_binders_done)
    (form_patties_pending)
    (form_patties_done)
    (chill_veggies_pending)
    (chill_veggies_done)
    (fry_patties_pending)
    (fry_patties_done)
    (clean_board_pending)
    (clean_board_done)
  )

  (:durative-action drain_tuna
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (drain_tuna_pending))
    :effect (and (at start (not (drain_tuna_pending))) (at end (drain_tuna_done)))
  )

  (:durative-action preheat_pan
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (preheat_pan_pending))
    :effect (and (at start (not (preheat_pan_pending))) (at end (preheat_pan_done)))
  )

  (:durative-action flake_tuna
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (flake_tuna_pending)) (at start (drain_tuna_done)))
    :effect (and (at start (not (flake_tuna_pending))) (at end (flake_tuna_done)))
  )

  (:durative-action chop_veggies
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (chop_veggies_pending)) (at start (drain_tuna_done)))
    :effect (and (at start (not (chop_veggies_pending))) (at end (chop_veggies_done)))
  )

  (:durative-action saute_veggies
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (saute_veggies_pending)) (at start (chop_veggies_done)))
    :effect (and (at start (not (saute_veggies_pending))) (at end (saute_veggies_done)))
  )

  (:durative-action mix_binders
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (mix_binders_pending)) (at start (preheat_pan_done)) (at start (flake_tuna_done)))
    :effect (and (at start (not (mix_binders_pending))) (at end (mix_binders_done)))
  )

  (:durative-action form_patties
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (form_patties_pending)) (at start (mix_binders_done)))
    :effect (and (at start (not (form_patties_pending))) (at end (form_patties_done)))
  )

  (:durative-action chill_veggies
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (chill_veggies_pending)) (at start (saute_veggies_done)))
    :effect (and (at start (not (chill_veggies_pending))) (at end (chill_veggies_done)))
  )

  (:durative-action fry_patties
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (fry_patties_pending)) (at start (form_patties_done)))
    :effect (and (at start (not (fry_patties_pending))) (at end (fry_patties_done)))
  )

  (:durative-action clean_board
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (clean_board_pending)) (at start (flake_tuna_done)) (at start (chop_veggies_done)))
    :effect (and (at start (not (clean_board_pending))) (at end (clean_board_done)))
  )
)
