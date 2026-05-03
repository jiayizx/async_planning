(define (domain travel_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (go_on_internet_pending)
    (go_on_internet_done)
    (research_locations_pending)
    (research_locations_done)
    (look_for_tickets_pending)
    (look_for_tickets_done)
    (make_hotel_reservations_pending)
    (make_hotel_reservations_done)
    (purchase_tickets_pending)
    (purchase_tickets_done)
    (pack_suitcase_pending)
    (pack_suitcase_done)
    (drive_to_airport_pending)
    (drive_to_airport_done)
  )

  (:durative-action go_on_internet
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (go_on_internet_pending)))
    :effect (and (at start (not (go_on_internet_pending)))
                 (at end (go_on_internet_done)))
  )

  (:durative-action research_locations
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (research_locations_pending))
                    (at start (go_on_internet_done)))
    :effect (and (at start (not (research_locations_pending)))
                 (at end (research_locations_done)))
  )

  (:durative-action look_for_tickets
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (look_for_tickets_pending))
                    (at start (research_locations_done)))
    :effect (and (at start (not (look_for_tickets_pending)))
                 (at end (look_for_tickets_done)))
  )

  (:durative-action make_hotel_reservations
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (make_hotel_reservations_pending))
                    (at start (research_locations_done)))
    :effect (and (at start (not (make_hotel_reservations_pending)))
                 (at end (make_hotel_reservations_done)))
  )

  (:durative-action purchase_tickets
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (purchase_tickets_pending))
                    (at start (look_for_tickets_done))
                    (at start (make_hotel_reservations_done)))
    :effect (and (at start (not (purchase_tickets_pending)))
                 (at end (purchase_tickets_done)))
  )

  (:durative-action pack_suitcase
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pack_suitcase_pending))
                    (at start (purchase_tickets_done)))
    :effect (and (at start (not (pack_suitcase_pending)))
                 (at end (pack_suitcase_done)))
  )

  (:durative-action drive_to_airport
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (drive_to_airport_pending))
                    (at start (pack_suitcase_done)))
    :effect (and (at start (not (drive_to_airport_pending)))
                 (at end (drive_to_airport_done)))
  )
)