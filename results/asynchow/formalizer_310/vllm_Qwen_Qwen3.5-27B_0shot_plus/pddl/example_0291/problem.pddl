(define (problem make_layered_chocolate_fudge_cake)
    (:domain layered_chocolate_fudge_cake)
    
    (:init
        (melt_chocolate_pending)
        (cut_cake_pending)
        (melt_ganache_pending)
        (assemble_cake_pending)
        (break_shards_pending)
    )

    (:goal (and
        (melt_chocolate_done)
        (cut_cake_done)
        (melt_ganache_done)
        (assemble_cake_done)
        (break_shards_done)
    ))
)