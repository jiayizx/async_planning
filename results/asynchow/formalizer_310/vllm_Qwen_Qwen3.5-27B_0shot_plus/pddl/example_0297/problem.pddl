(define (problem cook_ground_turkey_problem)
    (:domain cook_ground_turkey)
    
    (:init
        (mix_pending)
        (shape_pending)
        (heat_pending)
        (cook_pending)
        (serve_pending)
    )

    (:goal (and
        (mix_done)
        (shape_done)
        (heat_done)
        (cook_done)
        (serve_done)
    ))
)
