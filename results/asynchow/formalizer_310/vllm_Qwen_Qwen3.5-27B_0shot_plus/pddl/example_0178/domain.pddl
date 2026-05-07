(define (domain prison_tattoo_ink)
    (:requirements :durative-actions)
    
    (:predicates
        (put_powder_pending)
        (put_powder_done)
        (add_water_pending)
        (add_water_done)
        (finish_mixing_pending)
        (finish_mixing_done)
    )

    (:durative-action put_powder
        :parameters ()
        :duration (= ?duration 60)
        :condition (at start (put_powder_pending))
        :effect (and (at start (not (put_powder_pending))) (at end (put_powder_done)))
    )

    (:durative-action add_water
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (add_water_pending))
        :effect (and (at start (not (add_water_pending))) (at end (add_water_done)))
    )

    (:durative-action finish_mixing
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (finish_mixing_pending)) (at start (put_powder_done)) (at start (add_water_done)))
        :effect (and (at start (not (finish_mixing_pending))) (at end (finish_mixing_done)))
    )
)