(define (domain choose-cruise)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (stick_budget_done)
    (calc_travel_done)
    (acknowledge_incl_done)
  )

  ;; Step 1: Stick to your budget (10 minutes = 600 seconds)
  (:durative-action do_step1_stick_budget
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (calc_travel_done)) (at start (acknowledge_incl_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stick_budget_done)))
  )

  ;; Step 2: Calculate the cost of getting to/from the cruise (15 minutes = 900 seconds)
  (:durative-action do_step2_calc_travel
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (calc_travel_done)))
  )

  ;; Step 3: Acknowledge what's included / not included (20 minutes = 1200 seconds)
  (:durative-action do_step3_ack_inclusions
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (acknowledge_incl_done)))
  )
)
