(define (domain school_musical)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (signed_up)
    (auditioned)
    (picked)
    (rehearsed_part)
    (rehearsed_with_others)
    (performed)
  )

  (:durative-action sign_up
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (signed_up)))
  )

  (:durative-action audition
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (signed_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (auditioned)))
  )

  (:durative-action get_picked
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (auditioned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (picked)))
  )

  (:durative-action rehearse_part
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (picked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rehearsed_part)))
  )

  (:durative-action rehearse_with_others
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (picked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rehearsed_with_others)))
  )

  (:durative-action show_up
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (rehearsed_part)) (at start (rehearsed_with_others)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (performed)))
  )
)