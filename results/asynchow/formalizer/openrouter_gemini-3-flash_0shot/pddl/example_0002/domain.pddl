(define (domain travel_europe)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (passport_applied)
    (passport_retrieved)
    (research_done)
    (ticket_booked)
    (bags_packed)
    (departure_prepared)
  )

  (:durative-action apply_passport
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (passport_applied)))
  )

  (:durative-action retrieve_passport
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (passport_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (passport_retrieved)))
  )

  (:durative-action research_destinations
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (passport_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action book_ticket
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ticket_booked)))
  )

  (:durative-action pack_bags
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (ticket_booked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bags_packed)))
  )

  (:durative-action prepare_departure
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (ticket_booked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (departure_prepared)))
  )
)