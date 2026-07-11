(define (domain vacation_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (look_hotel_pending)
    (look_hotel_done)
    (look_flights_pending)
    (look_flights_done)
    (buy_tickets_pending)
    (buy_tickets_done)
    (go_airport_pending)
    (go_airport_done)
    (board_plane_pending)
    (board_plane_done)
    (book_hotel_pending)
    (book_hotel_done)
  )

  (:durative-action look_hotel
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (look_hotel_pending))
    :effect (and (at start (not (look_hotel_pending))) (at end (look_hotel_done)))
  )

  (:durative-action look_flights
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (look_flights_pending))
    :effect (and (at start (not (look_flights_pending))) (at end (look_flights_done)))
  )

  (:durative-action buy_tickets
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (buy_tickets_pending)) (at start (look_flights_done)))
    :effect (and (at start (not (buy_tickets_pending))) (at end (buy_tickets_done)))
  )

  (:durative-action go_airport
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (go_airport_pending)) (at start (buy_tickets_done)) (at start (book_hotel_done)))
    :effect (and (at start (not (go_airport_pending))) (at end (go_airport_done)))
  )

  (:durative-action board_plane
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (board_plane_pending)) (at start (go_airport_done)))
    :effect (and (at start (not (board_plane_pending))) (at end (board_plane_done)))
  )

  (:durative-action book_hotel
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (book_hotel_pending)) (at start (look_hotel_done)))
    :effect (and (at start (not (book_hotel_pending))) (at end (book_hotel_done)))
  )
)
