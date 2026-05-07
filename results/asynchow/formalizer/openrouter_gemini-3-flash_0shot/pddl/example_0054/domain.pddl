(define (domain lollipop_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (recipes_found)
    (molds_bought)
    (ingredients_bought)
    (mixture_made)
    (mixture_poured)
    (candy_hardened)
  )

  (:durative-action find_recipes
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recipes_found)))
  )

  (:durative-action buy_molds
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (recipes_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (molds_bought)))
  )

  (:durative-action buy_ingredients
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (recipes_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_bought)))
  )

  (:durative-action make_mixture
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (molds_bought)) (at start (ingredients_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_made)))
  )

  (:durative-action pour_mixture
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (mixture_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_poured)))
  )

  (:durative-action harden_candy
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (mixture_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (candy_hardened)))
  )
)