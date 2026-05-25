(define (problem keep-bees-problem)
    (:domain keep-bees)
    
    (:init
        (catch_swarm_pending)
        (purchase_hive_pending)
        (order_beeds_pending)
        (place_beeds_pending)
    )

    (:goal (and
        (catch_swarm_done)
        (purchase_hive_done)
        (order_beeds_done)
        (place_beeds_done)
    ))
)
