(define (domain breakfast_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (put_pan_pending)
    (put_pan_done)
    (take_ingredients_pending)
    (take_ingredients_done)
    (put_butter_pending)
    (put_butter_done)
    (turn_stove_pending)
    (turn_stove_done)
    (add_egg_pending)
    (add_egg_done)
    (cook_egg_pending)
    (cook_egg_done)
    (serve_enjoy_pending)
    (serve_enjoy_done)
  )

  (:durative-action put_pan
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (put_pan_pending))
    :effect (and (at start (not (put_pan_pending))) (at end (put_pan_done)))
  )

  (:durative-action take_ingredients
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (take_ingredients_pending))
    :effect (and (at start (not (take_ingredients_pending))) (at end (take_ingredients_done)))
  )

  (:durative-action put_butter
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (put_butter_pending)) (at start (put_pan_done)) (at start (take_ingredients_done)))
    :effect (and (at start (not (put_butter_pending))) (at end (put_butter_done)))
  )

  (:durative-action turn_stove
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (turn_stove_pending)) (at start (put_butter_done)))
    :effect (and (at start (not (turn_stove_pending))) (at end (turn_stove_done)))
  )

  (:durative-action add_egg
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (add_egg_pending)) (at start (turn_stove_done)))
    :effect (and (at start (not (add_egg_pending))) (at end (add_egg_done)))
  )

  (:durative-action cook_egg
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (cook_egg_pending)) (at start (add_egg_done)))
    :effect (and (at start (not (cook_egg_pending))) (at end (cook_egg_done)))
  )

  (:durative-action serve_enjoy
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (serve_enjoy_pending)) (at start (cook_egg_done)))
    :effect (and (at start (not (serve_enjoy_pending))) (at end (serve_enjoy_done)))
  )
)