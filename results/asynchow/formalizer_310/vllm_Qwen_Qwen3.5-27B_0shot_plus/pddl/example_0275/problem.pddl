(define (problem shrink-rings-problem)
    (:domain shrink-rings)
    
    (:init
        (clean_pending)
        (apply_pending)
        (smooth_pending)
        (dry_pending)
        (try_pending)
    )

    (:goal (and
        (clean_done)
        (apply_done)
        (smooth_done)
        (dry_done)
        (try_done)
    ))
)
