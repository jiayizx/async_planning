(define (domain early_payment_discount)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (total_calculated)
    (discount_decided)
    (discount_amount_calculated)
    (final_amount_calculated)
  )

  (:durative-action calculate_total
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (total_calculated)))
  )

  (:durative-action decide_discount_percent
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (discount_decided)))
  )

  (:durative-action multiply_discount
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (total_calculated)) (at start (discount_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (discount_amount_calculated)))
  )

  (:durative-action subtract_discount
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (discount_amount_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (final_amount_calculated)))
  )
)