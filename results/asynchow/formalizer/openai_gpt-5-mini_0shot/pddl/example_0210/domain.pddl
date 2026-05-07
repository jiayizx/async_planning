(define (domain keep-bees)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (caught_swarm)
    (purchased_hive)
    (ordered_bees)
    (bees_placed)
  )

  (:durative-action catch_swarm
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (caught_swarm))
    )
  )

  (:durative-action purchase_hive
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (purchased_hive))
    )
  )

  (:durative-action order_bees
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ordered_bees))
    )
  )

  (:durative-action place_bees
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (caught_swarm))
      (at start (purchased_hive))
      (at start (ordered_bees))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bees_placed))
    )
  )
)
