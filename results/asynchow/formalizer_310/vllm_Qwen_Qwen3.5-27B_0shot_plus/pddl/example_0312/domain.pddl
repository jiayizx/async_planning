(define (domain eat-lemon)
    (:requirements :durative-actions)
    
    (:predicates
        (make_syrup_pending)
        (make_syrup_done)
        (get_juice_pending)
        (get_juice_done)
        (combine_pending)
        (combine_done)
        (refrigerate_pending)
        (refrigerate_done)
    )

    (:durative-action make_syrup
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (make_syrup_pending))
        :effect (and (at start (not (make_syrup_pending))) (at end (make_syrup_done)))
    )

    (:durative-action get_juice
        :parameters ()
        :duration (= ?duration 600)
        :condition (at start (get_juice_pending))
        :effect (and (at start (not (get_juice_pending))) (at end (get_juice_done)))
    )

    (:durative-action combine
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (combine_pending)) (at start (make_syrup_done)) (at start (get_juice_done)))
        :effect (and (at start (not (combine_pending))) (at end (combine_done)))
    )

    (:durative-action refrigerate
        :parameters ()
        :duration (= ?duration 3600)
        :condition (and (at start (refrigerate_pending)) (at start (combine_done)))
        :effect (and (at start (not (refrigerate_pending))) (at end (refrigerate_done)))
    )
)
