(define (domain herb_gardening)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (lights_installed)
    (seeds_purchased)
    (seeds_germinated)
    (seedlings_transplanted)
    (space_cleared)
  )

  (:durative-action install_lights
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (space_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lights_installed)))
  )

  (:durative-action purchase_seeds
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (space_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seeds_purchased)))
  )

  (:durative-action sow_seeds
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (seeds_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seeds_germinated)))
  )

  (:durative-action transplant_seedlings
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (seeds_purchased)) (at start (seeds_germinated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seedlings_transplanted)))
  )

  (:durative-action clear_space
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (space_cleared)))
  )
)