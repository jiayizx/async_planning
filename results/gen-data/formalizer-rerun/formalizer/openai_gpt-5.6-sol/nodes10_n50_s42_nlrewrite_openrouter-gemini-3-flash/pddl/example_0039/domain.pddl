(define (domain adventure-planning)
  (:requirements :durative-actions :typing)
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
    (destination_chosen)
    (flight_tickets_booked)
    (camera_purchased)
    (backpack_packed)
    (airport_reached)
    (camera_settings_learned)
    (travel_visa_obtained)
    (landmarks_researched)
    (itinerary_created)
    (travel_clothes_clean)
  )

  (:durative-action choose_destination
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (destination_chosen)))
  )

  (:durative-action book_flight_tickets
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (destination_chosen)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flight_tickets_booked)))
  )

  (:durative-action purchase_camera
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (camera_purchased)))
  )

  (:durative-action pack_backpack
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (travel_clothes_clean)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (backpack_packed)))
  )

  (:durative-action drive_to_airport
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (backpack_packed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (airport_reached)))
  )

  (:durative-action learn_camera_settings
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (camera_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (camera_settings_learned)))
  )

  (:durative-action apply_for_travel_visa
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (flight_tickets_booked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (travel_visa_obtained)))
  )

  (:durative-action research_landmarks
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (camera_settings_learned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (landmarks_researched)))
  )

  (:durative-action create_itinerary
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (landmarks_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (itinerary_created)))
  )

  (:durative-action wash_travel_clothes
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (travel_clothes_clean)))
  )
)