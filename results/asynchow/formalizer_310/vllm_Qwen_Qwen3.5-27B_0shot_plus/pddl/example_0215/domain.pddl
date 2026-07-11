(define (domain freeze_watermelon)
    (:requirements :durative-actions)
    
    (:predicates
        (boil_syrup_pending)
        (boil_syrup_done)
        (chill_syrup_pending)
        (chill_syrup_done)
        (combine_watermelon_pending)
        (combine_watermelon_done)
        (cover_watermelon_pending)
        (cover_watermelon_done)
        (freeze_fruit_pending)
        (freeze_fruit_done)
    )

    (:durative-action boil_syrup
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (boil_syrup_pending))
        :effect (and (at start (not (boil_syrup_pending))) (at end (boil_syrup_done)))
    )

    (:durative-action chill_syrup
        :parameters ()
        :duration (= ?duration 3600)
        :condition (and (at start (chill_syrup_pending)) (at start (boil_syrup_done)))
        :effect (and (at start (not (chill_syrup_pending))) (at end (chill_syrup_done)))
    )

    (:durative-action combine_watermelon
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (combine_watermelon_pending)) (at start (chill_syrup_done)) (at start (cover_watermelon_done)))
        :effect (and (at start (not (combine_watermelon_pending))) (at end (combine_watermelon_done)))
    )

    (:durative-action cover_watermelon
        :parameters ()
        :duration (= ?duration 60)
        :condition (at start (cover_watermelon_pending))
        :effect (and (at start (not (cover_watermelon_pending))) (at end (cover_watermelon_done)))
    )

    (:durative-action freeze_fruit
        :parameters ()
        :duration (= ?duration 31536000)
        :condition (and (at start (freeze_fruit_pending)) (at start (combine_watermelon_done)))
        :effect (and (at start (not (freeze_fruit_pending))) (at end (freeze_fruit_done)))
    )
)
