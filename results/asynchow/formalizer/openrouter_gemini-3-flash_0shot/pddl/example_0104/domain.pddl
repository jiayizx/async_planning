(define (domain piano_purchase)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (visited_stores)
    (kind_decided)
    (options_tried)
    (paid_and_scheduled)
    (piano_arrived)
  )

  (:durative-action visit_stores
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (visited_stores)))
  )

  (:durative-action decide_kind
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (visited_stores)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kind_decided)))
  )

  (:durative-action try_options
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (visited_stores)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (options_tried)))
  )

  (:durative-action pay_and_schedule
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (kind_decided)) (at start (options_tried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paid_and_scheduled)))
  )

  (:durative-action piano_delivery
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (paid_and_scheduled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (piano_arrived)))
  )
)