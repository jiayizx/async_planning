(define (domain poetry_book_creation)
  (:requirements :durative-actions)
  
  (:predicates
    (manuscript_ready_pending)
    (manuscript_ready_done)
    (publishing_route_found_pending)
    (publishing_route_found_done)
    (collection_assembled_pending)
    (collection_assembled_done)
    (materials_sent_pending)
    (materials_sent_done)
  )

  (:durative-action step1_make_manuscript_ready
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (manuscript_ready_pending))
                    (at start (collection_assembled_done)))
    :effect (and (at start (not (manuscript_ready_pending)))
                 (at end (manuscript_ready_done)))
  )

  (:durative-action step2_find_publishing_route
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (publishing_route_found_pending))
    :effect (and (at start (not (publishing_route_found_pending)))
                 (at end (publishing_route_found_done)))
  )

  (:durative-action step3_assemble_collection
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (at start (collection_assembled_pending))
    :effect (and (at start (not (collection_assembled_pending)))
                 (at end (collection_assembled_done)))
  )

  (:durative-action step4_send_materials
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (materials_sent_pending))
                    (at start (manuscript_ready_done))
                    (at start (publishing_route_found_done)))
    :effect (and (at start (not (materials_sent_pending)))
                 (at end (materials_sent_done)))
  )
)
