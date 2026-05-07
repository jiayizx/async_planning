(define (domain eat_lemon)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (syrup_made)
    (juice_obtained)
    (ingredients_combined)
    (lemon_eaten)
  )

  (:durative-action make_syrup
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (syrup_made)))
  )

  (:durative-action get_juice
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (juice_obtained)))
  )

  (:durative-action combine_ingredients
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (syrup_made)) (at start (juice_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_combined)))
  )

  (:durative-action refrigerate_and_serve
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (ingredients_combined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lemon_eaten)))
  )
)