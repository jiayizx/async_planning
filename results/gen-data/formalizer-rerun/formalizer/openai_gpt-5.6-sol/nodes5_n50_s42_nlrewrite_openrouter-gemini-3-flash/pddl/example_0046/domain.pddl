(define (domain may-day)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (dance_pending)
    (gather_pending)
    (weave_pending)
    (deliver_pending)
    (buy_pending)
    (maypole_dance_completed)
    (wildflowers_gathered)
    (flower_crowns_woven)
    (flower_baskets_delivered)
    (ribbons_and_wire_bought)
  )

  (:durative-action dance_around_maypole
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (dance_pending))
      (at start (is_step1 ?s))
      (at start (wildflowers_gathered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (dance_pending)))
      (at end (step_done ?s))
      (at end (maypole_dance_completed))
    )
  )

  (:durative-action gather_wildflowers
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (gather_pending))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (gather_pending)))
      (at end (step_done ?s))
      (at end (wildflowers_gathered))
    )
  )

  (:durative-action weave_flower_crowns
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (weave_pending))
      (at start (is_step3 ?s))
      (at start (ribbons_and_wire_bought))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (weave_pending)))
      (at end (step_done ?s))
      (at end (flower_crowns_woven))
    )
  )

  (:durative-action deliver_flower_baskets
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (deliver_pending))
      (at start (is_step4 ?s))
      (at start (flower_crowns_woven))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (deliver_pending)))
      (at end (step_done ?s))
      (at end (flower_baskets_delivered))
    )
  )

  (:durative-action buy_ribbons_and_wire
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (buy_pending))
      (at start (is_step5 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (buy_pending)))
      (at end (step_done ?s))
      (at end (ribbons_and_wire_bought))
    )
  )
)