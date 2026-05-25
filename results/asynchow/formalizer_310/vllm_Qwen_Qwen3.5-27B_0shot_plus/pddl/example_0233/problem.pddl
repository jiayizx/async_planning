(define (problem air_dry_hair_task)
    (:domain air_dry_hair)
    
    (:init
        (cut_shampoo_pending)
        (shampoo_roots_pending)
        (comb_hair_pending)
    )

    (:goal (and
        (cut_shampoo_done)
        (shampoo_roots_done)
        (comb_hair_done)
    ))
)