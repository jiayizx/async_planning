(define (domain commercial_lease)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (properties_found)
    (manager_spoken)
    (agent_considered)
    (amenities_checked)
  )

  (:durative-action find_properties
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (properties_found)))
  )

  (:durative-action speak_manager
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (properties_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (manager_spoken)))
  )

  (:durative-action check_amenities
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (properties_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (amenities_checked)))
  )

  (:durative-action consider_agent
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (agent_considered)))
  )
)