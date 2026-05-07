(define (domain vacation_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (hotel_prices_known)
    (flights_researched)
    (tickets_bought)
    (at_airport)
    (plane_boarded)
    (hotel_booked)
  )

  (:durative-action look_at_hotel_prices
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hotel_prices_known)))
  )

  (:durative-action look_at_flights
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flights_researched)))
  )

  (:durative-action buy_plane_tickets
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (flights_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_bought)))
  )

  (:durative-action book_hotel
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (hotel_prices_known)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hotel_booked)))
  )

  (:durative-action go_to_airport
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (tickets_bought)) (at start (hotel_booked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_airport)))
  )

  (:durative-action board_plane
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (at_airport)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plane_boarded)))
  )
)