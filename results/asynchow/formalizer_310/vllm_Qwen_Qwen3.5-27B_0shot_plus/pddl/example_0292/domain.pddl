(define (domain eat-kumquat)
  (:requirements :durative-actions)
  
  (:predicates
    (choose_ripe_pending)
    (choose_ripe_done)
    (wash_dry_pending)
    (wash_dry_done)
    (rub_pending)
    (rub_done)
    (remove_seeds_pending)
    (remove_seeds_done)
    (eat_pending)
    (eat_done)
    (store_extra_pending)
    (store_extra_done)
  )

  (:durative-action choose_ripe
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (choose_ripe_pending))
    :effect (and (at start (not (choose_ripe_pending))) (at end (choose_ripe_done)))
  )

  (:durative-action wash_dry
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (wash_dry_pending)) (at start (choose_ripe_done)))
    :effect (and (at start (not (wash_dry_pending))) (at end (wash_dry_done)))
  )

  (:durative-action rub
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (rub_pending)) (at start (wash_dry_done)))
    :effect (and (at start (not (rub_pending))) (at end (rub_done)))
  )

  (:durative-action remove_seeds
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (remove_seeds_pending)) (at start (wash_dry_done)))
    :effect (and (at start (not (remove_seeds_pending))) (at end (remove_seeds_done)))
  )

  (:durative-action eat
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (eat_pending)) (at start (rub_done)) (at start (remove_seeds_done)))
    :effect (and (at start (not (eat_pending))) (at end (eat_done)))
  )

  (:durative-action store_extra
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (store_extra_pending)) (at start (choose_ripe_done)))
    :effect (and (at start (not (store_extra_pending))) (at end (store_extra_done)))
  )
)
