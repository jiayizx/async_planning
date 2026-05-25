(define (problem cook_ground_turkey_problem)
    (:domain cook_ground_turkey)
    
    (:init
        (preheat_pending)
        (mix_pending)
        (form_pending)
        (cook_pending)
    )

    (:goal (and
        (preheat_done)
        (mix_done)
        (form_done)
        (cook_done)
    ))
)
