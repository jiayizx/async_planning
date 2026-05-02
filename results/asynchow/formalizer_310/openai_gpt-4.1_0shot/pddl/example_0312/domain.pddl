(define (domain eat_lemon)
  (:requirements :durative-actions)
  (:predicates
    (make_simple_syrup_pending)
    (make_simple_syrup_done)
    (get_lemon_juice_pending)
    (get_lemon_juice_done)
    (combine_ingredients_pending)
    (combine_ingredients_done)
    (refrigerate_and_serve_pending)
    (refrigerate_and_serve_done)
  )

  (:durative-action make_simple_syrup
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (make_simple_syrup_pending))
    :effect (and
      (at start (not (make_simple_syrup_pending)))
      (at end (make_simple_syrup_done))
    )
  )

  (:durative-action get_lemon_juice
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (get_lemon_juice_pending))
    :effect (and
      (at start (not (get_lemon_juice_pending)))
      (at end (get_lemon_juice_done))
    )
  )

  (:durative-action combine_ingredients
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (combine_ingredients_pending))
      (at start (make_simple_syrup_done))
      (at start (get_lemon_juice_done))
    )
    :effect (and
      (at start (not (combine_ingredients_pending)))
      (at end (combine_ingredients_done))
    )
  )

  (:durative-action refrigerate_and_serve
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (refrigerate_and_serve_pending))
      (at start (combine_ingredients_done))
    )
    :effect (and
      (at start (not (refrigerate_and_serve_pending)))
      (at end (refrigerate_and_serve_done))
    )
  )
)
