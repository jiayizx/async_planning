(define (domain summer_job_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (application_picked_up)
    (at_restaurant)
    (application_filled)
    (application_submitted)
    (job_completed)
  )

  (:durative-action pick_up_application
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (application_picked_up)))
  )

  (:durative-action go_to_restaurant
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_restaurant)))
  )

  (:durative-action fill_out_application
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (application_picked_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (application_filled)))
  )

  (:durative-action turn_in_application
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (at_restaurant)) (at start (application_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (application_submitted)))
  )

  (:durative-action work_summer_job
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (application_submitted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (job_completed)))
  )
)