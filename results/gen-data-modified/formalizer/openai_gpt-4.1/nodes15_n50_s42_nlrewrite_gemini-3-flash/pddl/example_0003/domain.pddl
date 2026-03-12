(define (domain sandwich_lunch)
  (:requirements :durative-actions)
  (:predicates
    (slice_sourdough_pending)
    (slice_sourdough_done)
    (wash_lettuce_pending)
    (wash_lettuce_done)
    (spread_condiments_pending)
    (spread_condiments_done)
    (close_and_cut_pending)
    (close_and_cut_done)
    (put_ham_away_pending)
    (put_ham_away_done)
    (get_ingredients_pending)
    (get_ingredients_done)
    (sharpen_knife_pending)
    (sharpen_knife_done)
    (clear_crumbs_pending)
    (clear_crumbs_done)
    (slice_veggies_pending)
    (slice_veggies_done)
    (plate_sandwiches_pending)
    (plate_sandwiches_done)
    (season_veggies_pending)
    (season_veggies_done)
    (toast_bread_pending)
    (toast_bread_done)
    (layer_meat_cheese_pending)
    (layer_meat_cheese_done)
    (put_condiments_away_pending)
    (put_condiments_away_done)
    (stack_veggies_pending)
    (stack_veggies_done)
  )

  (:durative-action slice_sourdough
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (slice_sourdough_pending)) (at start (sharpen_knife_done)))
    :effect (and (at start (not (slice_sourdough_pending))) (at end (slice_sourdough_done)))
  )

  (:durative-action wash_lettuce
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (wash_lettuce_pending)) (at start (get_ingredients_done)))
    :effect (and (at start (not (wash_lettuce_pending))) (at end (wash_lettuce_done)))
  )

  (:durative-action spread_condiments
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (spread_condiments_pending)) (at start (toast_bread_done)))
    :effect (and (at start (not (spread_condiments_pending))) (at end (spread_condiments_done)))
  )

  (:durative-action close_and_cut
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (close_and_cut_pending)) (at start (stack_veggies_done)))
    :effect (and (at start (not (close_and_cut_pending))) (at end (close_and_cut_done)))
  )

  (:durative-action put_ham_away
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (put_ham_away_pending)) (at start (get_ingredients_done)))
    :effect (and (at start (not (put_ham_away_pending))) (at end (put_ham_away_done)))
  )

  (:durative-action get_ingredients
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (get_ingredients_pending))
    :effect (and (at start (not (get_ingredients_pending))) (at end (get_ingredients_done)))
  )

  (:durative-action sharpen_knife
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (sharpen_knife_pending))
    :effect (and (at start (not (sharpen_knife_pending))) (at end (sharpen_knife_done)))
  )

  (:durative-action clear_crumbs
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (clear_crumbs_pending)) (at start (put_condiments_away_done)))
    :effect (and (at start (not (clear_crumbs_pending))) (at end (clear_crumbs_done)))
  )

  (:durative-action slice_veggies
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (slice_veggies_pending)) (at start (get_ingredients_done)))
    :effect (and (at start (not (slice_veggies_pending))) (at end (slice_veggies_done)))
  )

  (:durative-action plate_sandwiches
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (plate_sandwiches_pending)) (at start (close_and_cut_done)) (at start (season_veggies_done)))
    :effect (and (at start (not (plate_sandwiches_pending))) (at end (plate_sandwiches_done)))
  )

  (:durative-action season_veggies
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (season_veggies_pending)) (at start (slice_veggies_done)))
    :effect (and (at start (not (season_veggies_pending))) (at end (season_veggies_done)))
  )

  (:durative-action toast_bread
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (toast_bread_pending)) (at start (slice_sourdough_done)))
    :effect (and (at start (not (toast_bread_pending))) (at end (toast_bread_done)))
  )

  (:durative-action layer_meat_cheese
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (layer_meat_cheese_pending)) (at start (wash_lettuce_done)) (at start (spread_condiments_done)))
    :effect (and (at start (not (layer_meat_cheese_pending))) (at end (layer_meat_cheese_done)))
  )

  (:durative-action put_condiments_away
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (put_condiments_away_pending)) (at start (get_ingredients_done)))
    :effect (and (at start (not (put_condiments_away_pending))) (at end (put_condiments_away_done)))
  )

  (:durative-action stack_veggies
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (stack_veggies_pending)) (at start (spread_condiments_done)) (at start (layer_meat_cheese_done)))
    :effect (and (at start (not (stack_veggies_pending))) (at end (stack_veggies_done)))
  )
)
