(define (domain clean_silk_tie)
    (:requirements :durative-actions)
    
    (:predicates
        (spray_protector_pending)
        (spray_protector_done)
        (hand_wash_pending)
        (hand_wash_done)
        (tuck_away_pending)
        (tuck_away_done)
    )

    (:durative-action do_hand_wash
        :parameters ()
        :duration (= ?duration 600)
        :condition (at start (hand_wash_pending))
        :effect (and (at start (not (hand_wash_pending))) (at end (hand_wash_done)))
    )

    (:durative-action do_spray_protector
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (spray_protector_pending)) (at start (hand_wash_done)))
        :effect (and (at start (not (spray_protector_pending))) (at end (spray_protector_done)))
    )

    (:durative-action do_tuck_away
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (tuck_away_pending))
        :effect (and (at start (not (tuck_away_pending))) (at end (tuck_away_done)))
    )
)