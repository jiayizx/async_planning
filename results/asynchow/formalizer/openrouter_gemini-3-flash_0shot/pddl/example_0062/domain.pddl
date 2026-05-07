(define (domain fly_to_warm_climate)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (internet_accessed)
    (locations_researched)
    (tickets_found)
    (hotel_reserved)
    (tickets_purchased)
    (suitcase_packed)
    (at_airport)
  )

  (:durative-action go_on_internet
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (internet_accessed)))
  )

  (:durative-action research_locations
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (internet_accessed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (locations_researched)))
  )

  (:durative-action look_for_tickets
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (locations_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_found)))
  )

  (:durative-action make_hotel_reservations
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (locations_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hotel_reserved)))
  )

  (:durative-action purchase_tickets
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (tickets_found)) (at start (hotel_reserved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_purchased)))
  )

  (:durative-action pack_suitcase
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (tickets_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (suitcase_packed)))
  )

  (:durative-action drive_to_airport
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (suitcase_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_airport)))
  )
)