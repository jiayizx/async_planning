(define (domain cook_ground_turkey)
    (:requirements :durative-actions)
    
    (:predicates
        (mix_pending)
        (mix_done)
        (shape_pending)
        (shape_done)
        (heat_pending)
        (heat_done)
        (cook_pending)
        (cook_done)
        (serve_pending)
        (serve_done)
    )

    (:durative-action do_mix
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (mix_pending))
        :effect (and (at start (not (mix_pending))) (at end (mix_done)))
    )

    (:durative-action do_shape
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (shape_pending)) (at start (mix_done)))
        :effect (and (at start (not (shape_pending))) (at end (shape_done)))
    )

    (:durative-action do_heat
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (heat_pending))
        :effect (and (at start (not (heat_pending))) (at end (heat_done)))
    )

    (:durative-action do_cook
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (cook_pending)) (at start (shape_done)) (at start (heat_done)))
        :effect (and (at start (not (cook_pending))) (at end (cook_done)))
    )

    (:durative-action do_serve
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (serve_pending)) (at start (cook_done)))
        :effect (and (at start (not (serve_pending))) (at end (serve_done)))
    )
)
