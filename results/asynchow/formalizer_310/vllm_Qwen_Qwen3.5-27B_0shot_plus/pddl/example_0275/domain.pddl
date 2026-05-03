(define (domain shrink-rings)
    (:requirements :durative-actions)
    
    (:predicates
        (clean_pending)
        (clean_done)
        (apply_pending)
        (apply_done)
        (smooth_pending)
        (smooth_done)
        (dry_pending)
        (dry_done)
        (try_pending)
        (try_done)
    )

    (:durative-action do_clean
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (clean_pending))
        :effect (and (at start (not (clean_pending))) (at end (clean_done)))
    )

    (:durative-action do_apply
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (apply_pending)) (at start (clean_done)))
        :effect (and (at start (not (apply_pending))) (at end (apply_done)))
    )

    (:durative-action do_smooth
        :parameters ()
        :duration (= ?duration 180)
        :condition (and (at start (smooth_pending)) (at start (apply_done)))
        :effect (and (at start (not (smooth_pending))) (at end (smooth_done)))
    )

    (:durative-action do_dry
        :parameters ()
        :duration (= ?duration 1800)
        :condition (and (at start (dry_pending)) (at start (apply_done)))
        :effect (and (at start (not (dry_pending))) (at end (dry_done)))
    )

    (:durative-action do_try
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (try_pending)) (at start (dry_done)))
        :effect (and (at start (not (try_pending))) (at end (try_done)))
    )
)
