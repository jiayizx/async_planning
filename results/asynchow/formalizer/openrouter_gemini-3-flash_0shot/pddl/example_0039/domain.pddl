(define (domain movie_trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (dressed)
    (movie_found)
    (tickets_bought)
    (tickets_printed)
    (house_locked)
    (at_theater)
    (entered_theater)
  )

  (:durative-action shower_and_dress
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressed)))
  )

  (:durative-action find_movie
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (movie_found)))
  )

  (:durative-action buy_tickets
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (movie_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_bought)))
  )

  (:durative-action print_tickets
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (tickets_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tickets_printed)))
  )

  (:durative-action leave_and_lock
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (dressed)) (at start (tickets_printed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (house_locked)))
  )

  (:durative-action go_to_theater
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (house_locked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_theater)))
  )

  (:durative-action present_tickets
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (at_theater)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (entered_theater)))
  )
)