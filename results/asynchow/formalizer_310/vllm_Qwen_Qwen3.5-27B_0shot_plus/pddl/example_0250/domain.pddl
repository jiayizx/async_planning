(define (domain treat_diarrhea_lovebirds)
    (:requirements :durative-actions)
    
    (:predicates
        (step1_pending)
        (step1_done)
        (step2_pending)
        (step2_done)
        (step3_pending)
        (step3_done)
    )

    (:durative-action do_step1
        :parameters ()
        :duration (= ?duration 86400)
        :condition (at start (step1_pending))
        :effect (and (at start (not (step1_pending))) (at end (step1_done)))
    )

    (:durative-action do_step2
        :parameters ()
        :duration (= ?duration 3600)
        :condition (at start (step2_pending))
        :effect (and (at start (not (step2_pending))) (at end (step2_done)))
    )

    (:durative-action do_step3
        :parameters ()
        :duration (= ?duration 1800)
        :condition (and (at start (step3_pending)) (at start (step1_done)) (at start (step2_done)))
        :effect (and (at start (not (step3_pending))) (at end (step3_done)))
    )
)
