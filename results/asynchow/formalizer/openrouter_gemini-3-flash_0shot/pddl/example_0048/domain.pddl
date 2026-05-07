(define (domain grill_party)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (grill_lit)
    (charcoal_warmed)
    (patties_made)
    (hamburgers_cooked)
    (hamburgers_on_bun)
  )

  (:durative-action light_grill
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grill_lit)))
  )

  (:durative-action warm_charcoal
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (grill_lit)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (charcoal_warmed)))
  )

  (:durative-action make_patties
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (grill_lit)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (patties_made)))
  )

  (:durative-action cook_hamburgers
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (charcoal_warmed)) (at start (patties_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hamburgers_cooked)))
  )

  (:durative-action assemble_buns
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (hamburgers_cooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hamburgers_on_bun)))
  )
)