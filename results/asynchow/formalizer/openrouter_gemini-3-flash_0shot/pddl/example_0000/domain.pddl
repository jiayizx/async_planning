(define (domain school_popularity)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (interests_researched)
    (girls_identified)
    (location_found)
    (arrived_at_location)
    (girls_impressed)
  )

  (:durative-action research_interests
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (interests_researched)))
  )

  (:durative-action identify_girls
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (girls_identified)))
  )

  (:durative-action find_location
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (girls_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (location_found)))
  )

  (:durative-action travel_to_location
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (location_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_location)))
  )

  (:durative-action impress_girls
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (interests_researched)) (at start (arrived_at_location)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (girls_impressed)))
  )
)