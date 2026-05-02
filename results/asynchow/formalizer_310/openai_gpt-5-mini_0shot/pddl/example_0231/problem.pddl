(define (problem write_medical_abstract_instance)
  (:domain write_medical_abstract)
  (:init
    (choose_title_pending)
    (list_authors_pending)
    (edit_abstract_pending)
  )
  (:goal (and
    (choose_title_done)
    (list_authors_done)
    (edit_abstract_done)
  ))
)
