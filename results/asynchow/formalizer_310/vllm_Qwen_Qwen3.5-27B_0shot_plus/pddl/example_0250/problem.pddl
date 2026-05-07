(define (problem treat_diarrhea_lovebirds_problem)
    (:domain treat_diarrhea_lovebirds)
    
    (:init
        (step1_pending)
        (step2_pending)
        (step3_pending)
    )

    (:goal (and (step1_done) (step2_done) (step3_done)))
)
