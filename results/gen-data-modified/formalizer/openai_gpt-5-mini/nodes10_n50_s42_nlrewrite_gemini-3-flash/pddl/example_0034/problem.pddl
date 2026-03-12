(define (problem make_tuna_patties)
  (:domain tuna_patties)
  (:init
    (drain_pending) (preheat_pending) (flake_pending) (chop_pending) (saute_pending)
    (mix_pending) (form_pending) (chill_pending) (fry_pending) (clean_pending)
  )
  (:goal (and
    (drain_done) (preheat_done) (flake_done) (chop_done) (saute_done)
    (mix_done) (form_done) (chill_done) (fry_done) (clean_done)
  ))
)
