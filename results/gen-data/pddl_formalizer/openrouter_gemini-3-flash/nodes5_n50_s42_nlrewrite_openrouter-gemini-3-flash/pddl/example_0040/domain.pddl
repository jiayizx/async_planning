(define (domain ginger_pudding_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (ginger_bought)
    (ginger_prepared)
    (eggs_warmed)
    (batter_ready)
    (pudding_molded)
  )

  (:durative-action buy_ginger
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ginger_bought)))
  )

  (:durative-action warm_eggs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_warmed)))
  )

  (:durative-action prepare_ginger
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (ginger_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ginger_prepared)))
  )

  (:durative-action whisk_eggs
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (eggs_warmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batter_ready)))
  )

  (:durative-action mold_pudding
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (ginger_prepared)) (at start (batter_ready)) (at start (ginger_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pudding_molded)))
  )
)