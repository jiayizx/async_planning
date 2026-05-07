(define (domain dental_assistant_texas)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (enrolled)
    (cpr_certified)
    (radiography_passed)
    (jurisprudence_passed)
    (application_submitted)
  )

  (:durative-action enroll_program
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (enrolled)))
  )

  (:durative-action complete_cpr
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cpr_certified)))
  )

  (:durative-action pass_radiography
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (enrolled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (radiography_passed)))
  )

  (:durative-action pass_jurisprudence
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (cpr_certified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jurisprudence_passed)))
  )

  (:durative-action submit_application
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (cpr_certified)) (at start (radiography_passed)) (at start (jurisprudence_passed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (application_submitted)))
  )
)