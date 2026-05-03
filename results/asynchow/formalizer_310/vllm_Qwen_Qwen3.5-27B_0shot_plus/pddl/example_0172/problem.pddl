(define (problem peel_papaya_instance)
    (:domain peel_papaya)
    
    (:init
        (slice_halves_pending)
        (remove_seeds_pending)
        (slice_wedges_pending)
        (peel_wedges_pending)
    )

    (:goal (and
        (slice_halves_done)
        (remove_seeds_done)
        (slice_wedges_done)
        (peel_wedges_done)
    ))
)
