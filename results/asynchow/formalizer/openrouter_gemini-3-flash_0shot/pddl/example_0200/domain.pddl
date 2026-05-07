(define (domain gouda_cheese)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (oven_preheated)
    (macaroni_boiled)
    (sauce_prepared)
    (cheese_added)
    (dish_baked)
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated)))
  )

  (:durative-action boil_macaroni
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (macaroni_boiled)))
  )

  (:durative-action prepare_sauce
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sauce_prepared)))
  )

  (:durative-action add_cheese
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (sauce_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cheese_added)))
  )

  (:durative-action bake_dish
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (oven_preheated)) (at start (macaroni_boiled)) (at start (cheese_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dish_baked)))
  )
)