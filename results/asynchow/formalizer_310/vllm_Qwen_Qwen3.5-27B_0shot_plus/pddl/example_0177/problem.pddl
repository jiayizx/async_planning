(define (problem boost_athletic_performance)
    (:domain essential_oils_performance)
    
    (:init
        (use_caution_pending)
        (massage_lavender_pending)
        (use_ginger_pending)
        (try_black_pepper_pending)
    )

    (:goal (and
        (use_caution_done)
        (massage_lavender_done)
        (use_ginger_done)
        (try_black_pepper_done)
    ))
)
