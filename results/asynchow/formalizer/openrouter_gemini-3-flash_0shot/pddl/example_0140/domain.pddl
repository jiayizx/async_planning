(define (domain remove_lead_from_water)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (lab_found)
    (samples_collected)
    (results_reviewed)
  )

  (:durative-action find_lab
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lab_found)))
  )

  (:durative-action collect_samples
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (samples_collected)))
  )

  (:durative-action test_and_review
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and 
      (at start (step_pending ?s)) 
      (at start (lab_found)) 
      (at start (samples_collected))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (results_reviewed)))
  )
)