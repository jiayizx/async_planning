(define (domain corned_beef_hash_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (ingredients_gathered)
    (mixture_combined)
    (bread_toasted)
    (hash_prepared)
  )

  (:durative-action gather_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_gathered)))
  )

  (:durative-action combine_mixture
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (ingredients_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_combined)))
  )

  (:durative-action toast_bread
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bread_toasted)))
  )

  (:durative-action spread_mixture
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (mixture_combined)) (at start (bread_toasted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hash_prepared)))
  )
)