(define (domain honeymoon_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (passports_done)
    (flight_booked)
    (time_off_done)
    (itinerary_done)
    (packing_done)
    (flight_taken)
    (transfer_done)
    (checked_in)
    (dinner_done)
  )

  (:durative-action research_locations
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action apply_passports
    :parameters (?s - step)
    :duration (= ?duration 3628800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (passports_done)))
  )

  (:durative-action book_flights
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flight_booked)))
  )

  (:durative-action request_time_off
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (passports_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (time_off_done)))
  )

  (:durative-action finalize_itinerary
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (flight_booked)) (at start (time_off_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (itinerary_done)))
  )

  (:durative-action pack_suitcases
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (itinerary_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (packing_done)))
  )

  (:durative-action take_flight
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flight_taken)))
  )

  (:durative-action travel_to_resort
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (packing_done)) (at start (passports_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (transfer_done)))
  )

  (:durative-action check_in
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (flight_taken)) (at start (passports_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (checked_in)))
  )

  (:durative-action sunset_dinner
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (checked_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dinner_done)))
  )
)