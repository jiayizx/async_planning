(define (problem poetry_book_creation_problem)
  (:domain poetry_book_creation)
  
  (:init
    (manuscript_ready_pending)
    (publishing_route_found_pending)
    (collection_assembled_pending)
    (materials_sent_pending)
  )

  (:goal (and
    (manuscript_ready_done)
    (publishing_route_found_done)
    (collection_assembled_done)
    (materials_sent_done)
  ))
)
