(define (domain cook_mushrooms)
  (:requirements :durative-actions)
  (:predicates
    (heat_oil_pending) (heat_oil_done)
    (prepare_mushrooms_pending) (prepare_mushrooms_done)
    (beat_egg_pending) (beat_egg_done)
    (add_ingredients_pending) (add_ingredients_done)
    (coat_mushrooms_pending) (coat_mushrooms_done)
    (deep_fry_pending) (deep_fry_done)
    (drain_serve_pending) (drain_serve_done)
  )

  (:durative-action heat_oil
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (heat_oil_pending)))
    :effect (and (at start (not (heat_oil_pending))) (at end (heat_oil_done)))
  )

  (:durative-action prepare_mushrooms
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (prepare_mushrooms_pending)))
    :effect (and (at start (not (prepare_mushrooms_pending))) (at end (prepare_mushrooms_done)))
  )

  (:durative-action beat_egg
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (beat_egg_pending)))
    :effect (and (at start (not (beat_egg_pending))) (at end (beat_egg_done)))
  )

  (:durative-action add_ingredients
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (add_ingredients_pending)) (at start (beat_egg_done)))
    :effect (and (at start (not (add_ingredients_pending))) (at end (add_ingredients_done)))
  )

  (:durative-action coat_mushrooms
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (coat_mushrooms_pending)) (at start (prepare_mushrooms_done)) (at start (add_ingredients_done)))
    :effect (and (at start (not (coat_mushrooms_pending))) (at end (coat_mushrooms_done)))
  )

  (:durative-action deep_fry
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (deep_fry_pending)) (at start (heat_oil_done)) (at start (coat_mushrooms_done)))
    :effect (and (at start (not (deep_fry_pending))) (at end (deep_fry_done)))
  )

  (:durative-action drain_serve
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (drain_serve_pending)) (at start (deep_fry_done)))
    :effect (and (at start (not (drain_serve_pending))) (at end (drain_serve_done)))
  )
)
