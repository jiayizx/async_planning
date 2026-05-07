(define (domain job_search)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (laptop_opened)
    (forums_found)
    (applications_filled)
    (resume_uploaded)
    (callbacks_received)
    (job_found)
  )

  (:durative-action open_laptop
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laptop_opened)))
  )

  (:durative-action search_forums
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (laptop_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (forums_found)))
  )

  (:durative-action fill_applications
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (forums_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (applications_filled)))
  )

  (:durative-action upload_resume
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (forums_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (resume_uploaded)))
  )

  (:durative-action wait_callbacks
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (applications_filled)) (at start (resume_uploaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (callbacks_received)))
  )

  (:durative-action go_interview
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (callbacks_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (job_found)))
  )
)