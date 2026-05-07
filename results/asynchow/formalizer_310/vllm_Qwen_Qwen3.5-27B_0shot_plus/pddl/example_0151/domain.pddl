(define (domain buy_firearms_brazil)
    (:requirements :durative-actions)
    
    (:predicates
        (fill_application_pending)
        (fill_application_done)
        (prepare_documents_1_pending)
        (prepare_documents_1_done)
        (prepare_documents_2_pending)
        (prepare_documents_2_done)
    )

    (:durative-action fill_application
        :parameters ()
        :duration (= ?duration 1800)
        :condition (and
            (at start (fill_application_pending))
            (at start (prepare_documents_1_done))
            (at start (prepare_documents_2_done))
        )
        :effect (and
            (at start (not (fill_application_pending)))
            (at end (fill_application_done))
        )
    )

    (:durative-action prepare_documents_1
        :parameters ()
        :duration (= ?duration 3600)
        :condition (at start (prepare_documents_1_pending))
        :effect (and
            (at start (not (prepare_documents_1_pending)))
            (at end (prepare_documents_1_done))
        )
    )

    (:durative-action prepare_documents_2
        :parameters ()
        :duration (= ?duration 3600)
        :condition (at start (prepare_documents_2_pending))
        :effect (and
            (at start (not (prepare_documents_2_pending)))
            (at end (prepare_documents_2_done))
        )
    )
)
