(define (domain organize_house)
  (:requirements :durative-actions)
  
  (:predicates
    (throw_out_pending)
    (throw_out_done)
    (purchase_containers_pending)
    (purchase_containers_done)
    (use_bookshelves_pending)
    (use_bookshelves_done)
    (use_drawers_pending)
    (use_drawers_done)
    (purchase_kitchen_pending)
    (purchase_kitchen_done)
  )

  (:durative-action do_throw_out
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (throw_out_pending))
    :effect (and (at start (not (throw_out_pending))) (at end (throw_out_done)))
  )

  (:durative-action do_purchase_containers
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (purchase_containers_pending)) (at start (throw_out_done)))
    :effect (and (at start (not (purchase_containers_pending))) (at end (purchase_containers_done)))
  )

  (:durative-action do_use_bookshelves
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (use_bookshelves_pending)) (at start (throw_out_done)))
    :effect (and (at start (not (use_bookshelves_pending))) (at end (use_bookshelves_done)))
  )

  (:durative-action do_use_drawers
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (use_drawers_pending)) (at start (throw_out_done)))
    :effect (and (at start (not (use_drawers_pending))) (at end (use_drawers_done)))
  )

  (:durative-action do_purchase_kitchen
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (purchase_kitchen_pending)) (at start (throw_out_done)))
    :effect (and (at start (not (purchase_kitchen_pending))) (at end (purchase_kitchen_done)))
  )
)
