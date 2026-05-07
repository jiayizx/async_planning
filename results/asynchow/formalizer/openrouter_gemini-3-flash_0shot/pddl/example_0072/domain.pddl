(define (domain weight_measurement)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (scale_bought)
    (scale_placed)
    (undressing_begun)
    (shirt_removed)
    (pants_removed)
    (weight_measured)
  )

  (:durative-action buy_scale
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scale_bought)))
  )

  (:durative-action place_scale
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (scale_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scale_placed)))
  )

  (:durative-action begin_undress
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (scale_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (undressing_begun)))
  )

  (:durative-action remove_shirt
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (undressing_begun)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shirt_removed)))
  )

  (:durative-action remove_pants
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (undressing_begun)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pants_removed)))
  )

  (:durative-action stand_on_scale
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (shirt_removed)) (at start (pants_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weight_measured)))
  )
)