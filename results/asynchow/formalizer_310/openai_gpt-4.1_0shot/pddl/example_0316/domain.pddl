(define (domain baked-chicken)
  (:requirements :durative-actions)
  (:predicates
    (gather_ingredients_pending)
    (gather_ingredients_done)
    (prepare_chicken_pending)
    (prepare_chicken_done)
    (bake_chicken_pending)
    (bake_chicken_done)
    (finish_and_serve_pending)
    (finish_and_serve_done)
    (make_gravy_pending)
    (make_gravy_done)
    (make_spiced_chicken_pending)
    (make_spiced_chicken_done)
    (make_garlic_white_wine_pending)
    (make_garlic_white_wine_done)
    (make_herby_pending)
    (make_herby_done)
    (make_honey_dijon_pending)
    (make_honey_dijon_done)
    (make_garlic_lemon_pending)
    (make_garlic_lemon_done)
  )

  (:durative-action make_gravy
    :duration (= ?duration 900)
    :condition (at start (make_gravy_pending))
    :effect (and (at start (not (make_gravy_pending))) (at end (make_gravy_done)))
  )

  (:durative-action make_spiced_chicken
    :duration (= ?duration 1800)
    :condition (at start (make_spiced_chicken_pending))
    :effect (and (at start (not (make_spiced_chicken_pending))) (at end (make_spiced_chicken_done)))
  )

  (:durative-action make_garlic_white_wine
    :duration (= ?duration 2700)
    :condition (at start (make_garlic_white_wine_pending))
    :effect (and (at start (not (make_garlic_white_wine_pending))) (at end (make_garlic_white_wine_done)))
  )

  (:durative-action make_herby
    :duration (= ?duration 2400)
    :condition (at start (make_herby_pending))
    :effect (and (at start (not (make_herby_pending))) (at end (make_herby_done)))
  )

  (:durative-action make_honey_dijon
    :duration (= ?duration 2100)
    :condition (at start (make_honey_dijon_pending))
    :effect (and (at start (not (make_honey_dijon_pending))) (at end (make_honey_dijon_done)))
  )

  (:durative-action make_garlic_lemon
    :duration (= ?duration 3000)
    :condition (at start (make_garlic_lemon_pending))
    :effect (and (at start (not (make_garlic_lemon_pending))) (at end (make_garlic_lemon_done)))
  )

  (:durative-action gather_ingredients
    :duration (= ?duration 300)
    :condition (and
      (at start (gather_ingredients_pending))
      (at start (make_gravy_done))
      (at start (make_spiced_chicken_done))
      (at start (make_garlic_white_wine_done))
      (at start (make_herby_done))
      (at start (make_honey_dijon_done))
      (at start (make_garlic_lemon_done))
    )
    :effect (and (at start (not (gather_ingredients_pending))) (at end (gather_ingredients_done)))
  )

  (:durative-action prepare_chicken
    :duration (= ?duration 900)
    :condition (and
      (at start (prepare_chicken_pending))
      (at start (gather_ingredients_done))
    )
    :effect (and (at start (not (prepare_chicken_pending))) (at end (prepare_chicken_done)))
  )

  (:durative-action bake_chicken
    :duration (= ?duration 3600)
    :condition (and
      (at start (bake_chicken_pending))
      (at start (prepare_chicken_done))
    )
    :effect (and (at start (not (bake_chicken_pending))) (at end (bake_chicken_done)))
  )

  (:durative-action finish_and_serve
    :duration (= ?duration 300)
    :condition (and
      (at start (finish_and_serve_pending))
      (at start (bake_chicken_done))
    )
    :effect (and (at start (not (finish_and_serve_pending))) (at end (finish_and_serve_done)))
  )
)
