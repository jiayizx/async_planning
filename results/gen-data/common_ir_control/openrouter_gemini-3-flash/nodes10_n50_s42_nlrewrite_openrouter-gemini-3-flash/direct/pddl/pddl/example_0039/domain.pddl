(define (domain adventure_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (destination_chosen)
    (tickets_booked)
    (camera_purchased)
    (backpack_packed)
    (airport_reached)
    (camera_skills_learned)
    (visa_applied)
    (landmarks_researched)
    (itinerary_created)
    (clothes_washed)
  )

  (:durative-action choose_destination
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (destination_chosen)))
  )

  (:durative-action book_tickets
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (destination_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_booked)))
  )

  (:durative-action purchase_camera
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (camera_purchased)))
  )

  (:durative-action pack_backpack
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (clothes_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (backpack_packed)))
  )

  (:durative-action drive_to_airport
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (backpack_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (airport_reached)))
  )

  (:durative-action learn_camera
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (camera_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (camera_skills_learned)))
  )

  (:durative-action apply_visa
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (tickets_booked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (visa_applied)))
  )

  (:durative-action research_landmarks
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (camera_skills_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (landmarks_researched)))
  )

  (:durative-action create_itinerary
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (landmarks_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (itinerary_created)))
  )

  (:durative-action wash_clothes
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_washed)))
  )
)