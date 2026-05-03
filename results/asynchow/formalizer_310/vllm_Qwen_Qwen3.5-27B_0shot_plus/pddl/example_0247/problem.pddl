(define (problem deal_with_period_home_alone)
    (:domain period_home_alone)
    
    (:init
        (look_under_sink_pending)
        (look_in_linen_closet_pending)
        (ask_neighbor_pending)
        (go_to_store_pending)
        (use_sanitary_pad_pending)
    )

    (:goal (and
        (look_under_sink_done)
        (look_in_linen_closet_done)
        (ask_neighbor_done)
        (go_to_store_done)
        (use_sanitary_pad_done)
    ))
)
