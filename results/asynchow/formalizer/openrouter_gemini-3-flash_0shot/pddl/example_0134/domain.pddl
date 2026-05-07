(define (domain animal_crossing_screenshot)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (l_button_held)
    (r_button_held)
    (screenshot_taken)
  )

  (:durative-action hold_l_button
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (l_button_held))
    )
  )

  (:durative-action hold_r_button
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (r_button_held))
    )
  )

  (:durative-action take_picture
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (and
      (at start (step_pending ?s))
      (at start (l_button_held))
      (at start (r_button_held))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (screenshot_taken))
    )
  )
)