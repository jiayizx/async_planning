(define (domain early-payment-discount)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (total_calculated)
    (percent_decided)
    (discount_computed)
    (final_amount_computed)
  )

  (:durative-action do_step1_calculate_total
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (total_calculated))
    )
  )

  (:durative-action do_step2_decide_percent
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (percent_decided))
    )
  )

  (:durative-action do_step3_multiply_percent_by_total
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (total_calculated)) (at start (percent_decided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (discount_computed))
    )
  )

  (:durative-action do_step4_subtract_discount
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (discount_computed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (final_amount_computed))
    )
  )
)
