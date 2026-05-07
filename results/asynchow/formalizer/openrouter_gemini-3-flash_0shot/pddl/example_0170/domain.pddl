(define (domain minimalist_living)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (furniture_cleared)
    (smaller_space_considered)
    (carless_thought)
    (changes_discussed)
  )

  (:durative-action discuss_changes
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (changes_discussed)))
  )

  (:durative-action consider_smaller_space
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (changes_discussed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (smaller_space_considered)))
  )

  (:durative-action think_carless
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (changes_discussed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (carless_thought)))
  )

  (:durative-action clear_furniture
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (smaller_space_considered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (furniture_cleared)))
  )
)