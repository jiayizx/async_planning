(define (problem clean_silk_tie_instance)
    (:domain clean_silk_tie)
    
    (:init
        (hand_wash_pending)
        (spray_protector_pending)
        (tuck_away_pending)
    )

    (:goal (and
        (hand_wash_done)
        (spray_protector_done)
        (tuck_away_done)
    ))
)