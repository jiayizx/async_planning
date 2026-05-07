(define (domain lasagna_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (at_store)
    (noodles_bought)
    (sauce_bought)
    (at_home)
    (ingredients_assembled)
    (oven_preheated)
    (dish_covered)
  )

  (:durative-action go_to_store
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_store)))
  )

  (:durative-action buy_noodles
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (at_store)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (noodles_bought)))
  )

  (:durative-action buy_sauce
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (at_store)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sauce_bought)))
  )

  (:durative-action go_home
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (noodles_bought)) (at start (sauce_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_home)))
  )

  (:durative-action assemble_ingredients
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (at_home)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_assembled)))
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (at_home)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated)))
  )

  (:durative-action cover_dish
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (at_home)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dish_covered)))
  )
)