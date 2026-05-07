(define (domain adoption_process)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (agency_called)
    (id_checks_passed)
    (callback_received)
    (child_met)
    (final_checks_passed)
    (child_home)
  )

  (:durative-action call_agency
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (agency_called)))
  )

  (:durative-action pass_id_checks
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (agency_called)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (id_checks_passed)))
  )

  (:durative-action wait_callback
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (id_checks_passed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (callback_received)))
  )

  (:durative-action meet_child
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (callback_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (child_met)))
  )

  (:durative-action pass_final_checks
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (callback_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (final_checks_passed)))
  )

  (:durative-action bring_child_home
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (child_met)) (at start (final_checks_passed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (child_home)))
  )
)