(define (domain raise_bike_handlebars)
    (:requirements :durative-actions)
    
    (:predicates
        (position_handlebars_pending)
        (position_handlebars_done)
        (raise_handlebars_pending)
        (raise_handlebars_done)
        (lower_handlebars_pending)
        (lower_handlebars_done)
    )

    (:durative-action do_raise_handlebars
        :parameters ()
        :duration (= ?duration 600)
        :condition (at start (raise_handlebars_pending))
        :effect (and (at start (not (raise_handlebars_pending))) (at end (raise_handlebars_done)))
    )

    (:durative-action do_lower_handlebars
        :parameters ()
        :duration (= ?duration 900)
        :condition (at start (lower_handlebars_pending))
        :effect (and (at start (not (lower_handlebars_pending))) (at end (lower_handlebars_done)))
    )

    (:durative-action do_position_handlebars
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (position_handlebars_pending)) (at start (raise_handlebars_done)) (at start (lower_handlebars_done)))
        :effect (and (at start (not (position_handlebars_pending))) (at end (position_handlebars_done)))
    )
)