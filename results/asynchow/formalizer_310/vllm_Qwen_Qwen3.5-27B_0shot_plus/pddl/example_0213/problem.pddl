(define (problem make_cookies)
    (:domain cookie-making)
    
    (:init
        (preheat_pending)
        (combine_pending)
        (blend_pending)
        (add_blend_pending)
        (place_pending)
    )

    (:goal (and
        (preheat_done)
        (combine_done)
        (blend_done)
        (add_blend_done)
        (place_done)
    ))
)
