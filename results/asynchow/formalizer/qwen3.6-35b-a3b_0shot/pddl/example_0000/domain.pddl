(define (domain impress_girls)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (research_done)
               (identify_done)
               (location_found)
               (travel_done)
               (impressed))
  (:durative-action research_interests
    :parameters (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (research_done))))
  (:durative-action identify_girls
    :parameters (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (identify_done))))
  (:durative-action find_location
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (identify_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (location_found))))
  (:durative-action travel_to_location
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (location_found)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (travel_done))))
  (:durative-action impress_girls
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (research_done)) (at start (travel_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (impressed))))
)