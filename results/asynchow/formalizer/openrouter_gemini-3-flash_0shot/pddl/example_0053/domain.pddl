(define (domain nature_retreat)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (week_off_taken)
    (park_reached)
    (hiked_out)
    (lived_off_land)
    (electronics_avoided)
  )

  (:durative-action take_week_off
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (week_off_taken)))
  )

  (:durative-action drive_to_park
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (week_off_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (park_reached)))
  )

  (:durative-action hike_into_nature
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (park_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hiked_out)))
  )

  (:durative-action live_off_land
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (hiked_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lived_off_land)))
  )

  (:durative-action avoid_electronics
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (hiked_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (electronics_avoided)))
  )
)