(define (problem eat-lemon-instance)
    (:domain eat-lemon)
    
    (:init
        (make_syrup_pending)
        (get_juice_pending)
        (combine_pending)
        (refrigerate_pending)
    )

    (:goal (and
        (make_syrup_done)
        (get_juice_done)
        (combine_done)
        (refrigerate_done)
    ))
)
