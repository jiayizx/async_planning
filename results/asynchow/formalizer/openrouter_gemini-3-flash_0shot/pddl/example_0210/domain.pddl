(define (domain beekeeping)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (swarm_caught)
    (hive_purchased)
    (bees_ordered)
    (bees_placed)
  )

  (:durative-action catch_swarm
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (swarm_caught)))
  )

  (:durative-action purchase_hive
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hive_purchased)))
  )

  (:durative-action order_bees
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bees_ordered)))
  )

  (:durative-action place_bees
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and 
      (at start (step_pending ?s))
      (at start (swarm_caught))
      (at start (hive_purchased))
      (at start (bees_ordered))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bees_placed)))
  )
)