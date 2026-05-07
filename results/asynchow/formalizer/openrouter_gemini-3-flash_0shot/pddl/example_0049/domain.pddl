(define (domain baseball_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (signed_up)
    (gear_bought)
    (fees_paid)
    (driven_to_practice)
    (woken_up)
  )

  (:durative-action sign_up
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (signed_up)))
  )

  (:durative-action buy_gear
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gear_bought)))
  )

  (:durative-action pay_fees
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (signed_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fees_paid)))
  )

  (:durative-action get_driven
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (gear_bought)) (at start (fees_paid)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driven_to_practice)))
  )

  (:durative-action wake_up
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (driven_to_practice)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (woken_up)))
  )
)