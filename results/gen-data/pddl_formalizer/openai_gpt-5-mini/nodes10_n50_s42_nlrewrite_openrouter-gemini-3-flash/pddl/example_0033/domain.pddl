(define (domain honeymoon)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (chosen_booked_done)
    (researched_done)
    (finalized_done)
    (packed_done)
    (checkedin_done)
    (longhaul_done)
    (travel_to_resort_done)
    (passports_done)
    (timeoff_done)
    (sunset_done)
  )

  ;; Step 1: Choose a destination and book flights (10800)
  ;; Requires: Step 2
  (:durative-action do_step1_choose_and_book
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s))
                    (at start (researched_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (chosen_booked_done))))

  ;; Step 2: Research romantic travel locations (172800)
  ;; Requires: none
  (:durative-action do_step2_research_locations
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (researched_done))))

  ;; Step 3: Finalize hotel reservations and itinerary (14400)
  ;; Requires: Step 1, Step 2, Step 9, Step 8
  (:durative-action do_step3_finalize_reservations
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s))
                    (at start (chosen_booked_done))
                    (at start (researched_done))
                    (at start (timeoff_done))
                    (at start (passports_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (finalized_done))))

  ;; Step 4: Pack suitcases and travel gear (7200)
  ;; Requires: Step 3, Step 1, Step 2, Step 9, Step 8
  (:durative-action do_step4_pack_suitcases
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s))
                    (at start (finalized_done))
                    (at start (chosen_booked_done))
                    (at start (researched_done))
                    (at start (timeoff_done))
                    (at start (passports_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (packed_done))))

  ;; Step 5: Check into the honeymoon suite (900)
  ;; Requires: Step 6, Step 8
  (:durative-action do_step5_check_into_suite
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s))
                    (at start (longhaul_done))
                    (at start (passports_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (checkedin_done))))

  ;; Step 6: Take the long-haul flight to the destination (43200)
  ;; Requires: none
  (:durative-action do_step6_long_haul_flight
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (longhaul_done))))

  ;; Step 7: Travel from the airport to the resort (3600)
  ;; Requires: Step 4, Step 8, Step 3, Step 1, Step 2, Step 9
  (:durative-action do_step7_travel_airport_to_resort
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s))
                    (at start (packed_done))
                    (at start (passports_done))
                    (at start (finalized_done))
                    (at start (chosen_booked_done))
                    (at start (researched_done))
                    (at start (timeoff_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (travel_to_resort_done))))

  ;; Step 8: Apply for and receive updated passports (6 weeks = 3628800 seconds)
  ;; Requires: none
  (:durative-action do_step8_passports
    :parameters (?s - step)
    :duration (= ?duration 3628800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (passports_done))))

  ;; Step 9: Request time off from work (600)
  ;; Requires: Step 8
  (:durative-action do_step9_request_time_off
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s))
                    (at start (passports_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (timeoff_done))))

  ;; Step 10: Enjoy a sunset dinner on the beach (7200)
  ;; Requires: Step 5, Step 6, Step 8 (transitive ancestors of original partial order)
  (:durative-action do_step10_sunset_dinner
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s))
                    (at start (checkedin_done))
                    (at start (longhaul_done))
                    (at start (passports_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (sunset_done))))
)
