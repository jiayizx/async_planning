(define (domain honeymoon_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (destination_booked)
    (locations_researched)
    (itinerary_finalized)
    (suitcases_packed)
    (checked_in)
    (flight_completed)
    (resort_reached)
    (passports_received)
    (time_off_approved)
    (dinner_enjoyed)
  )

  (:durative-action step2_research_locations
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (locations_researched)))
  )

  (:durative-action step8_apply_passports
    :parameters (?s - step)
    :duration (= ?duration 3628800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (passports_received)))
  )

  (:durative-action step1_book_flights
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (locations_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (destination_booked)))
  )

  (:durative-action step9_request_time_off
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (passports_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (time_off_approved)))
  )

  (:durative-action step3_finalize_itinerary
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (destination_booked)) (at start (time_off_approved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (itinerary_finalized)))
  )

  (:durative-action step4_pack_suitcases
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (itinerary_finalized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (suitcases_packed)))
  )

  (:durative-action step6_long_haul_flight
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flight_completed)))
  )

  (:durative-action step7_travel_to_resort
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (suitcases_packed)) (at start (passports_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (resort_reached)))
  )

  (:durative-action step5_check_in
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (flight_completed)) (at start (passports_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (checked_in)))
  )

  (:durative-action step10_sunset_dinner
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (checked_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dinner_enjoyed)))
  )
)