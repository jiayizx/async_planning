(define (domain online_earning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (signup_done)
    (verification_done)
    (approval_done)
    (browsing_done)
    (tasks_done)
  )

  (:durative-action research_methods
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action sign_up
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (signup_done)))
  )

  (:durative-action verification
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (verification_done)))
  )

  (:durative-action wait_approval
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (verification_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (approval_done)))
  )

  (:durative-action browse_hits
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (approval_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (browsing_done)))
  )

  (:durative-action complete_tasks
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (browsing_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tasks_done)))
  )
)