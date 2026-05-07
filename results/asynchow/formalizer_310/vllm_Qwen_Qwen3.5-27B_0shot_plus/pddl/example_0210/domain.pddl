(define (domain keep-bees)
    (:requirements :durative-actions)
    
    (:predicates
        (catch_swarm_pending)
        (catch_swarm_done)
        (purchase_hive_pending)
        (purchase_hive_done)
        (order_beeds_pending)
        (order_beeds_done)
        (place_beeds_pending)
        (place_beeds_done)
    )

    (:durative-action catch_swarm
        :parameters ()
        :duration (= ?duration 259200)
        :condition (at start (catch_swarm_pending))
        :effect (and (at start (not (catch_swarm_pending))) (at end (catch_swarm_done)))
    )

    (:durative-action purchase_hive
        :parameters ()
        :duration (= ?duration 172800)
        :condition (at start (purchase_hive_pending))
        :effect (and (at start (not (purchase_hive_pending))) (at end (purchase_hive_done)))
    )

    (:durative-action order_beeds
        :parameters ()
        :duration (= ?duration 1814400)
        :condition (at start (order_beeds_pending))
        :effect (and (at start (not (order_beeds_pending))) (at end (order_beeds_done)))
    )

    (:durative-action place_beeds
        :parameters ()
        :duration (= ?duration 86400)
        :condition (and (at start (place_beeds_pending))
                        (at start (catch_swarm_done))
                        (at start (purchase_hive_done))
                        (at start (order_beeds_done)))
        :effect (and (at start (not (place_beeds_pending))) (at end (place_beeds_done)))
    )
)
