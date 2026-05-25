(define (domain may_day_celebration)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (wildflowers_gathered)
    (ribbons_bought)
    (crowns_woven)
    (maypole_danced)
    (baskets_delivered)
  )

  (:durative-action gather_wildflowers
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wildflowers_gathered))
    )
  )

  (:durative-action buy_ribbons
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ribbons_bought))
    )
  )

  (:durative-action dance_maypole
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (wildflowers_gathered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (maypole_danced))
    )
  )

  (:durative-action weave_crowns
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (wildflowers_gathered))
      (at start (ribbons_bought))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (crowns_woven))
    )
  )

  (:durative-action deliver_baskets
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (wildflowers_gathered))
      (at start (ribbons_bought))
      (at start (crowns_woven))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (baskets_delivered))
    )
  )
)