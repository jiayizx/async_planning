(define (problem cook_mushrooms_problem)
    (:domain cook_mushrooms)
    
    (:init
        (heat_oil_pending)
        (prepare_mushrooms_pending)
        (add_mushrooms_pending)
        (cook_mushrooms_pending)
        (season_serve_pending)
    )

    (:goal (and
        (heat_oil_done)
        (prepare_mushrooms_done)
        (add_mushrooms_done)
        (cook_mushrooms_done)
        (season_serve_done)
    ))
)
