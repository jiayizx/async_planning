(define (domain buy-firearms-brazil)
  (:requirements :durative-actions)
  (:predicates
    (fill_application_pending)
    (fill_application_done)
    (prepare_documents1_pending)
    (prepare_documents1_done)
    (prepare_documents2_pending)
    (prepare_documents2_done)
  )

  (:durative-action fill_application_sinarm
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (fill_application_pending))
      (at start (prepare_documents1_done))
      (at start (prepare_documents2_done))
    )
    :effect (and
      (at start (not (fill_application_pending)))
      (at end (fill_application_done))
    )
  )

  (:durative-action prepare_documents1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (prepare_documents1_pending))
    :effect (and
      (at start (not (prepare_documents1_pending)))
      (at end (prepare_documents1_done))
    )
  )

  (:durative-action prepare_documents2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (prepare_documents2_pending))
    :effect (and
      (at start (not (prepare_documents2_pending)))
      (at end (prepare_documents2_done))
    )
  )
)
