(define (problem kill_weeds_vinegar_problem)
    (:domain kill_weeds_vinegar)
    
    (:init
        (buy_vinegar_pending)
        (add_soap_pending)
        (add_salt_pending)
    )

    (:goal (and
        (buy_vinegar_done)
        (add_soap_done)
        (add_salt_done)
    ))
)