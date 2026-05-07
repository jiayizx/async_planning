(define (domain dress_metal_girls)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pins_buttons_done)
    (bracelets_done)
    (necklaces_done)
    (belt_done)
    (bag_done)
  )

  (:durative-action step1_pins_buttons
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (belt_done)) (at start (bag_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pins_buttons_done)))
  )

  (:durative-action step2_bracelets
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bracelets_done)))
  )

  (:durative-action step3_necklaces
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (necklaces_done)))
  )

  (:durative-action step4_belt
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (belt_done)))
  )

  (:durative-action step5_bag
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bag_done)))
  )
)