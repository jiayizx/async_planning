(define (domain english_muffin_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (french_toast_made)
    (filling_made)
    (sandwich_assembled)
    (toppings_added)
  )

  (:durative-action make_french_toast
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (french_toast_made)))
  )

  (:durative-action make_filling
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (filling_made)))
  )

  (:durative-action assemble_sandwich
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (filling_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sandwich_assembled)))
  )

  (:durative-action add_toppings
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (toppings_added)))
  )
)