(define (domain baja_racing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (skilled_at_racing)
    (application_submitted)
    (fees_paid)
    (gear_brought)
    (friends_brought)
  )

  (:durative-action get_skilled
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skilled_at_racing)))
  )

  (:durative-action apply_contest
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (skilled_at_racing)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (application_submitted)))
  )

  (:durative-action pay_fees
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (application_submitted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fees_paid)))
  )

  (:durative-action bring_gear
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (fees_paid)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gear_brought)))
  )

  (:durative-action bring_friends
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (fees_paid)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friends_brought)))
  )
)