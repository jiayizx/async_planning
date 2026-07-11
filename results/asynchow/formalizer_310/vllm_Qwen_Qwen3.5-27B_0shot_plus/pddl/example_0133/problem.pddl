(define (problem mocha_task)
    (:domain mocha-making)
    
    (:init
        (make_coffee_pending)
        (prepare_milk_pending)
        (add_chocolate_pending)
    )

    (:goal (and
        (make_coffee_done)
        (prepare_milk_done)
        (add_chocolate_done)
    ))
)