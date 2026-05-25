(define (domain maine_beauty)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cottage_booked)
    (hiking_researched)
    (sunrise_watched)
    (road_driven)
    (airport_to_park_driven)
  )

  (:durative-action book_cottage
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cottage_booked)))
  )

  (:durative-action research_hiking
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hiking_researched)))
  )

  (:durative-action drive_airport_to_park
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (hiking_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (airport_to_park_driven)))
  )

  (:durative-action watch_sunrise
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (hiking_researched)) (at start (airport_to_park_driven)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunrise_watched)))
  )

  (:durative-action drive_loop_road
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (cottage_booked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (road_driven)))
  )
)