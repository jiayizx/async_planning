(define (domain pcc_application)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (visited_website)
    (registered)
    (application_filled)
    (fee_paid)
    (appointment_scheduled)
    (confirmation_printed)
  )

  (:durative-action visit_website
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (visited_website)))
  )

  (:durative-action register
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (visited_website)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (registered)))
  )

  (:durative-action fill_application
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (registered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (application_filled)))
  )

  (:durative-action pay_fee
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (application_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fee_paid)))
  )

  (:durative-action schedule_appointment
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (application_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (appointment_scheduled)))
  )

  (:durative-action print_confirmation
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (appointment_scheduled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (confirmation_printed)))
  )
)