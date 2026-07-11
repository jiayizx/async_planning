(define (domain groom_labradoodle)
  (:requirements :durative-actions)
  
  (:predicates
    (bathe_pending)
    (bathe_done)
    (tub_pending)
    (tub_done)
    (shampoo_pending)
    (shampoo_done)
    (rinse_pending)
    (rinse_done)
    (dry_pending)
    (dry_done)
  )

  (:durative-action do_bathe
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (bathe_pending))
    :effect (and (at start (not (bathe_pending))) (at end (bathe_done)))
  )

  (:durative-action do_tub
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (tub_pending))
    :effect (and (at start (not (tub_pending))) (at end (tub_done)))
  )

  (:durative-action do_shampoo
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (shampoo_pending)) (at start (tub_done)))
    :effect (and (at start (not (shampoo_pending))) (at end (shampoo_done)))
  )

  (:durative-action do_rinse
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (rinse_pending)) (at start (shampoo_done)))
    :effect (and (at start (not (rinse_pending))) (at end (rinse_done)))
  )

  (:durative-action do_dry
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (dry_pending)) (at start (rinse_done)))
    :effect (and (at start (not (dry_pending))) (at end (dry_done)))
  )
)