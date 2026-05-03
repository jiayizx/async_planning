(define (domain air_dry_hair)
    (:requirements :durative-actions)
    
    (:predicates
        (cut_shampoo_pending)
        (cut_shampoo_done)
        (shampoo_roots_pending)
        (shampoo_roots_done)
        (comb_hair_pending)
        (comb_hair_done)
    )

    (:durative-action do_cut_shampoo
        :parameters ()
        :duration (= ?duration 180)
        :condition (at start (cut_shampoo_pending))
        :effect (and (at start (not (cut_shampoo_pending))) (at end (cut_shampoo_done)))
    )

    (:durative-action do_shampoo_roots
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (shampoo_roots_pending))
        :effect (and (at start (not (shampoo_roots_pending))) (at end (shampoo_roots_done)))
    )

    (:durative-action do_comb_hair
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (comb_hair_pending)) (at start (shampoo_roots_done)))
        :effect (and (at start (not (comb_hair_pending))) (at end (comb_hair_done)))
    )
)