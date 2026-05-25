(define (problem remove_lead_task)
    (:domain remove_lead_from_water)
    
    (:init
        (find_lab_pending)
        (collect_samples_pending)
        (test_and_review_pending)
    )

    (:goal (and (find_lab_done) (collect_samples_done) (test_and_review_done)))
)