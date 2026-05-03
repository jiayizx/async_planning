(define (domain overcome_fear_of_reading)
    (:requirements :durative-actions)
    
    (:predicates
        (practice_reading_pending)
        (practice_reading_done)
        (work_on_calm_pending)
        (work_on_calm_done)
        (move_past_mistakes_pending)
        (move_past_mistakes_done)
    )

    (:durative-action practice_reading
        :parameters ()
        :duration (= ?duration 1209600)
        :condition (at start (practice_reading_pending))
        :effect (and (at start (not (practice_reading_pending))) (at end (practice_reading_done)))
    )

    (:durative-action work_on_calm
        :parameters ()
        :duration (= ?duration 604800)
        :condition (at start (work_on_calm_pending))
        :effect (and (at start (not (work_on_calm_pending))) (at end (work_on_calm_done)))
    )

    (:durative-action move_past_mistakes
        :parameters ()
        :duration (= ?duration 172800)
        :condition (and (at start (move_past_mistakes_pending)) (at start (practice_reading_done)))
        :effect (and (at start (not (move_past_mistakes_pending))) (at end (move_past_mistakes_done)))
    )
)
