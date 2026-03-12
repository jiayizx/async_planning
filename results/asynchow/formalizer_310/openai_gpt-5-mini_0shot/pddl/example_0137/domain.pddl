(define (domain identify-hornet)
  (:requirements :durative-actions)
  (:predicates
    (observe_paper_pending)
    (observe_paper_done)
    (look_nest_pending)
    (look_nest_done)
    (estimate_number_pending)
    (estimate_number_done)
  )

  (:durative-action do_observe_paper
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (observe_paper_pending)) (at start (look_nest_done)))
    :effect (and (at start (not (observe_paper_pending))) (at end (observe_paper_done)))
  )

  (:durative-action do_look_nest
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (look_nest_pending))
    :effect (and (at start (not (look_nest_pending))) (at end (look_nest_done)))
  )

  (:durative-action do_estimate_number
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (estimate_number_pending)) (at start (look_nest_done)))
    :effect (and (at start (not (estimate_number_pending))) (at end (estimate_number_done)))
  )
)
