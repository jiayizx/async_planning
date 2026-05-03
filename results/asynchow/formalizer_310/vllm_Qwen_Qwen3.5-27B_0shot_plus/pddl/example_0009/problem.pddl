(define (problem vacation_task)
  (:domain vacation_planning)
  
  (:init
    (look_hotel_pending)
    (look_flights_pending)
    (buy_tickets_pending)
    (go_airport_pending)
    (board_plane_pending)
    (book_hotel_pending)
  )

  (:goal (and
    (look_hotel_done)
    (look_flights_done)
    (buy_tickets_done)
    (go_airport_done)
    (board_plane_done)
    (book_hotel_done)
  ))
)
