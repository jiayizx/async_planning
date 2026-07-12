(define (domain sippy-cup)
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
    (cup_retrieved)
    (lid_screwed)
    (cup_filled)
    (drink_completed)
    (travel_cap_removed)
  )

  (:durative-action retrieve_clean_cup
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cup_retrieved))
    )
  )

  (:durative-action screw_lid_onto_cup
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (cup_filled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lid_screwed))
    )
  )

  (:durative-action fill_cup_with_apple_juice
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (cup_retrieved))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cup_filled))
    )
  )

  (:durative-action tilt_cup_and_drink
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (travel_cap_removed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drink_completed))
    )
  )

  (:durative-action remove_travel_cap
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (travel_cap_removed))
    )
  )
)