(define (domain europe_travel)
  (:requirements :durative-actions)
  
  (:predicates
    (apply_passport_pending)
    (apply_passport_done)
    (retrieve_passport_pending)
    (retrieve_passport_done)
    (research_destinations_pending)
    (research_destinations_done)
    (book_ticket_pending)
    (book_ticket_done)
    (pack_bags_pending)
    (pack_bags_done)
    (prepare_departure_pending)
    (prepare_departure_done)
  )

  (:durative-action apply_passport
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (apply_passport_pending)))
    :effect (and (at start (not (apply_passport_pending))) (at end (apply_passport_done)))
  )

  (:durative-action retrieve_passport
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (retrieve_passport_pending)) (at start (apply_passport_done)))
    :effect (and (at start (not (retrieve_passport_pending))) (at end (retrieve_passport_done)))
  )

  (:durative-action research_destinations
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (research_destinations_pending)) (at start (retrieve_passport_done)))
    :effect (and (at start (not (research_destinations_pending))) (at end (research_destinations_done)))
  )

  (:durative-action book_ticket
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (book_ticket_pending)) (at start (research_destinations_done)))
    :effect (and (at start (not (book_ticket_pending))) (at end (book_ticket_done)))
  )

  (:durative-action pack_bags
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (pack_bags_pending)) (at start (book_ticket_done)))
    :effect (and (at start (not (pack_bags_pending))) (at end (pack_bags_done)))
  )

  (:durative-action prepare_departure
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (prepare_departure_pending)) (at start (book_ticket_done)))
    :effect (and (at start (not (prepare_departure_pending))) (at end (prepare_departure_done)))
  )
)