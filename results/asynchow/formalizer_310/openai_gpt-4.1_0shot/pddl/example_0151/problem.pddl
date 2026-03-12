(define (problem buy-firearms-brazil-problem)
  (:domain buy-firearms-brazil)
  (:init
    (fill_application_pending)
    (prepare_documents1_pending)
    (prepare_documents2_pending)
  )
  (:goal (and
    (fill_application_done)
    (prepare_documents1_done)
    (prepare_documents2_done)
  ))
)
