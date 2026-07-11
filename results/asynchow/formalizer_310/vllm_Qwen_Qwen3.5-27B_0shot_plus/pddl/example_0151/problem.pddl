(define (problem buy_firearms_task)
    (:domain buy_firearms_brazil)
    
    (:init
        (fill_application_pending)
        (prepare_documents_1_pending)
        (prepare_documents_2_pending)
    )

    (:goal (and
        (fill_application_done)
        (prepare_documents_1_done)
        (prepare_documents_2_done)
    ))
)
