(define (domain school_departure)
  (:requirements :durative-actions)
  (:predicates
    (logout_pending)
    (logout_done)
    (save_paper_pending)
    (save_paper_done)
    (walk_gates_pending)
    (walk_gates_done)
    (pack_backpack_pending)
    (pack_backpack_done)
    (return_key_pending)
    (return_key_done)
  )

  (:durative-action logout_computer
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (logout_pending)) (at start (save_paper_done)))
    :effect (and (at start (not (logout_pending))) (at end (logout_done)))
  )

  (:durative-action save_paper
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (save_paper_pending))
    :effect (and (at start (not (save_paper_pending))) (at end (save_paper_done)))
  )

  (:durative-action walk_gates
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (walk_gates_pending)) (at start (return_key_done)))
    :effect (and (at start (not (walk_gates_pending))) (at end (walk_gates_done)))
  )

  (:durative-action pack_backpack
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (pack_backpack_pending))
    :effect (and (at start (not (pack_backpack_pending))) (at end (pack_backpack_done)))
  )

  (:durative-action return_key
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (return_key_pending)) (at start (pack_backpack_done)))
    :effect (and (at start (not (return_key_pending))) (at end (return_key_done)))
  )
)