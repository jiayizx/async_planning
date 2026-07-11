(define (domain sun_protection)
    (:requirements :durative-actions)
    
    (:predicates
        (test_clothing_pending)
        (test_clothing_done)
        (wear_sunglasses_pending)
        (wear_sunglasses_done)
        (wear_hat_pending)
        (wear_hat_done)
        (wear_clothing_pending)
        (wear_clothing_done)
    )

    (:durative-action do_test_clothing
        :parameters ()
        :duration (= ?duration 900)
        :condition (and (at start (test_clothing_pending)) (at start (wear_clothing_done)))
        :effect (and (at start (not (test_clothing_pending))) (at end (test_clothing_done)))
    )

    (:durative-action do_wear_sunglasses
        :parameters ()
        :duration (= ?duration 60)
        :condition (at start (wear_sunglasses_pending))
        :effect (and (at start (not (wear_sunglasses_pending))) (at end (wear_sunglasses_done)))
    )

    (:durative-action do_wear_hat
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (wear_hat_pending))
        :effect (and (at start (not (wear_hat_pending))) (at end (wear_hat_done)))
    )

    (:durative-action do_wear_clothing
        :parameters ()
        :duration (= ?duration 600)
        :condition (at start (wear_clothing_pending))
        :effect (and (at start (not (wear_clothing_pending))) (at end (wear_clothing_done)))
    )
)
