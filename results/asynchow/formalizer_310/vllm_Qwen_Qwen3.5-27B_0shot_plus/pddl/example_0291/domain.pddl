(define (domain layered_chocolate_fudge_cake)
    (:requirements :durative-actions)
    
    (:predicates
        (melt_chocolate_pending)
        (melt_chocolate_done)
        (cut_cake_pending)
        (cut_cake_done)
        (melt_ganache_pending)
        (melt_ganache_done)
        (assemble_cake_pending)
        (assemble_cake_done)
        (break_shards_pending)
        (break_shards_done)
    )

    (:durative-action melt_chocolate
        :parameters ()
        :duration (= ?duration 3600)
        :condition (and (at start (melt_chocolate_pending)))
        :effect (and (at start (not (melt_chocolate_pending))) (at end (melt_chocolate_done)))
    )

    (:durative-action cut_cake
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (cut_cake_pending)))
        :effect (and (at start (not (cut_cake_pending))) (at end (cut_cake_done)))
    )

    (:durative-action melt_ganache
        :parameters ()
        :duration (= ?duration 900)
        :condition (and (at start (melt_ganache_pending)))
        :effect (and (at start (not (melt_ganache_pending))) (at end (melt_ganache_done)))
    )

    (:durative-action assemble_cake
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (assemble_cake_pending)) (at start (cut_cake_done)) (at start (melt_ganache_done)))
        :effect (and (at start (not (assemble_cake_pending))) (at end (assemble_cake_done)))
    )

    (:durative-action break_shards
        :parameters ()
        :duration (= ?duration 1200)
        :condition (and (at start (break_shards_pending)) (at start (melt_chocolate_done)))
        :effect (and (at start (not (break_shards_pending))) (at end (break_shards_done)))
    )
)