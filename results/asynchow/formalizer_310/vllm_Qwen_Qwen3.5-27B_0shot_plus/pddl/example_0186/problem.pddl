(define (problem remove_old_caulking_problem)
    (:domain remove_old_caulking)
    
    (:init
        (step1_pending)
        (step2_pending)
        (step3_pending)
        (step4_pending)
    )

    (:goal (and
        (step1_done)
        (step2_done)
        (step3_done)
        (step4_done)
    ))
)
