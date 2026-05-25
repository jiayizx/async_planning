(define (problem puff_pastry_task)
    (:domain puff_pastry)
    
    (:init
        (make_shells_pending)
        (make_baked_brie_pending)
        (make_filled_puffs_pending)
        (make_ham_cheese_pending)
        (make_herb_twists_pending)
    )

    (:goal (and
        (make_shells_done)
        (make_baked_brie_done)
        (make_filled_puffs_done)
        (make_ham_cheese_done)
        (make_herb_twists_done)
    ))
)
