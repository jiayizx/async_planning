(define (domain thanksgiving-special)
  (:requirements :durative-actions)
  (:predicates
    (ask_pending)
    (ask_done)
    (think_pending)
    (think_done)
    (search_pending)
    (search_done)
    (drive_pending)
    (drive_done)
    (buy_pending)
    (buy_done)
    (bake_pending)
    (bake_done)
    (setup_pending)
    (setup_done)
  )

  (:durative-action do_ask
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (ask_pending))
    :effect (and (at start (not (ask_pending))) (at end (ask_done)))
  )

  (:durative-action do_think
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (think_pending)) (at start (ask_done)))
    :effect (and (at start (not (think_pending))) (at end (think_done)))
  )

  (:durative-action do_search
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (search_pending)) (at start (ask_done)))
    :effect (and (at start (not (search_pending))) (at end (search_done)))
  )

  (:durative-action do_drive
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_pending)) (at start (think_done)) (at start (search_done)))
    :effect (and (at start (not (drive_pending))) (at end (drive_done)))
  )

  (:durative-action do_buy
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (buy_pending)) (at start (drive_done)))
    :effect (and (at start (not (buy_pending))) (at end (buy_done)))
  )

  (:durative-action do_bake
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (bake_pending)) (at start (buy_done)))
    :effect (and (at start (not (bake_pending))) (at end (bake_done)))
  )

  (:durative-action do_setup
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (setup_pending)) (at start (bake_done)))
    :effect (and (at start (not (setup_pending))) (at end (setup_done)))
  )
)
