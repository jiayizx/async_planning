(define (domain maine-natural-beauty)
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
    (cottage_booked)
    (trails_researched)
    (sunrise_watched)
    (park_loop_driven)
    (park_entrance_reached)
  )

  (:durative-action book_coastal_rental_cottage
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cottage_booked))
    )
  )

  (:durative-action research_acadia_hiking_trails
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (trails_researched))
    )
  )

  (:durative-action watch_cadillac_mountain_sunrise
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (park_entrance_reached))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sunrise_watched))
    )
  )

  (:durative-action drive_park_loop_road
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (cottage_booked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (park_loop_driven))
    )
  )

  (:durative-action drive_airport_to_park_entrance
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (trails_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (park_entrance_reached))
    )
  )
)