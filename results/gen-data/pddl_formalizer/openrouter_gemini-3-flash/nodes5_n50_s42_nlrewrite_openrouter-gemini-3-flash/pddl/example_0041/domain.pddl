(define (domain sippy_cup_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cup_retrieved)
    (cup_filled)
    (lid_screwed)
    (cap_removed)
    (drink_taken)
  )

  (:durative-action retrieve_cup
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cup_retrieved)))
  )

  (:durative-action fill_cup
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (cup_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cup_filled)))
  )

  (:durative-action screw_lid
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (cup_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lid_screwed)))
  )

  (:durative-action remove_cap
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cap_removed)))
  )

  (:durative-action take_drink
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (lid_screwed)) (at start (cap_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (drink_taken)))
  )
)