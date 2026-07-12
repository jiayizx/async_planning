(define (domain traditional-honeymoon)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (flights_booked)
    (locations_researched)
    (itinerary_finalized)
    (suitcases_packed)
    (suite_checked_into)
    (long_haul_flight_completed)
    (resort_reached)
    (passports_received)
    (time_off_requested)
    (sunset_dinner_enjoyed)
  )

  (:durative-action choose_destination_and_book_flights
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (locations_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flights_booked))
    )
  )

  (:durative-action research_romantic_travel_locations
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (locations_researched))
    )
  )

  (:durative-action finalize_hotel_and_itinerary
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (flights_booked))
      (at start (time_off_requested))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (itinerary_finalized))
    )
  )

  (:durative-action pack_suitcases_and_travel_gear
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (itinerary_finalized))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (suitcases_packed))
    )
  )

  (:durative-action check_into_honeymoon_suite
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (long_haul_flight_completed))
      (at start (passports_received))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (suite_checked_into))
    )
  )

  (:durative-action take_long_haul_flight
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (long_haul_flight_completed))
    )
  )

  (:durative-action travel_airport_to_resort
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (suitcases_packed))
      (at start (passports_received))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (resort_reached))
    )
  )

  (:durative-action apply_for_and_receive_passports
    :parameters (?s - step)
    :duration (= ?duration 3628800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (passports_received))
    )
  )

  (:durative-action request_time_off_work
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (passports_received))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (time_off_requested))
    )
  )

  (:durative-action enjoy_sunset_dinner_on_beach
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (suite_checked_into))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sunset_dinner_enjoyed))
    )
  )
)