(define (domain baked_chicken)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (ingredients_gathered)
    (chicken_prepared)
    (chicken_baked)
    (chicken_served)
    (gravy_made)
    (spiced_chicken_made)
    (garlic_wine_made)
    (herby_chicken_made)
    (honey_dijon_made)
    (garlic_lemon_made)
  )

  (:durative-action make_garlic_lemon
    :parameters (?s - step)
    :duration (= ?duration 3000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garlic_lemon_made)))
  )

  (:durative-action make_gravy
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gravy_made)))
  )

  (:durative-action make_spiced
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spiced_chicken_made)))
  )

  (:durative-action make_garlic_wine
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garlic_wine_made)))
  )

  (:durative-action make_herby
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (herby_chicken_made)))
  )

  (:durative-action make_honey_dijon
    :parameters (?s - step)
    :duration (= ?duration 2100)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (honey_dijon_made)))
  )

  (:durative-action gather_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) 
                    (at start (garlic_lemon_made))
                    (at start (gravy_made))
                    (at start (spiced_chicken_made))
                    (at start (garlic_wine_made))
                    (at start (herby_chicken_made))
                    (at start (honey_dijon_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_gathered)))
  )

  (:durative-action prepare_chicken
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (ingredients_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chicken_prepared)))
  )

  (:durative-action bake_chicken
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (chicken_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chicken_baked)))
  )

  (:durative-action finish_serve
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (chicken_baked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chicken_served)))
  )
)