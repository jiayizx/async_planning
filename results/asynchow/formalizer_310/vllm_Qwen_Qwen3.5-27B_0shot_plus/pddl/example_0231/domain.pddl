(define (domain medical_abstract)
  (:requirements :durative-actions)
  
  (:predicates
    (choose_title_pending)
    (choose_title_done)
    (list_authors_pending)
    (list_authors_done)
    (edit_abstract_pending)
    (edit_abstract_done)
  )

  (:durative-action choose_title
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (choose_title_pending))
    :effect (and (at start (not (choose_title_pending)))
                 (at end (choose_title_done)))
  )

  (:durative-action list_authors
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (list_authors_pending))
    :effect (and (at start (not (list_authors_pending)))
                 (at end (list_authors_done)))
  )

  (:durative-action edit_abstract
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (edit_abstract_pending))
                    (at start (choose_title_done)))
    :effect (and (at start (not (edit_abstract_pending)))
                 (at end (edit_abstract_done)))
  )
)
