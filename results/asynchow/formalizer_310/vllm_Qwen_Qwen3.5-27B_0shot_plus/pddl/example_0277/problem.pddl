(define (problem raise_bike_handlebars_task)
    (:domain raise_bike_handlebars)
    
    (:init
        (raise_handlebars_pending)
        (lower_handlebars_pending)
        (position_handlebars_pending)
    )

    (:goal (and
        (raise_handlebars_done)
        (lower_handlebars_done)
        (position_handlebars_done)
    ))
)