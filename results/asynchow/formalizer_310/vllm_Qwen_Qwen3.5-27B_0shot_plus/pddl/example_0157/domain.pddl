(define (domain kill_weeds_vinegar)
    (:requirements :durative-actions)
    
    (:predicates
        (buy_vinegar_pending)
        (buy_vinegar_done)
        (add_soap_pending)
        (add_soap_done)
        (add_salt_pending)
        (add_salt_done)
    )

    (:durative-action buy_vinegar
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (buy_vinegar_pending))
        :effect (and (at start (not (buy_vinegar_pending))) (at end (buy_vinegar_done)))
    )

    (:durative-action add_soap
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (add_soap_pending)) (at start (buy_vinegar_done)))
        :effect (and (at start (not (add_soap_pending))) (at end (add_soap_done)))
    )

    (:durative-action add_salt
        :parameters ()
        :duration (= ?duration 180)
        :condition (and (at start (add_salt_pending)) (at start (buy_vinegar_done)))
        :effect (and (at start (not (add_salt_pending))) (at end (add_salt_done)))
    )
)