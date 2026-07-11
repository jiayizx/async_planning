(define (problem create_balloon_decorations)
    (:domain balloon_decorations)
    
    (:init
        (select_hat_pending)
        (purchase_glue_pending)
        (blow_balloons_pending)
        (add_hat_pending)
    )

    (:goal (and
        (select_hat_done)
        (purchase_glue_done)
        (blow_balloons_done)
        (add_hat_done)
    ))
)
