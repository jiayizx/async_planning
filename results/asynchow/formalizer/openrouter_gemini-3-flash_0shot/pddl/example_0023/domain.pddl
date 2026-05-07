(define (domain anger_date)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (someone_single)
    (someone_attractive)
    (asked_out)
    (day_planned)
    (at_location)
    (anger_expressed)
  )

  (:durative-action find_single
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (someone_single)))
  )

  (:durative-action find_attractive
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (someone_attractive)))
  )

  (:durative-action ask_out
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (someone_single)) (at start (someone_attractive)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (asked_out)))
  )

  (:durative-action plan_day
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (asked_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (day_planned)))
  )

  (:durative-action drive_to_location
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (day_planned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_location)))
  )

  (:durative-action express_anger
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (at_location)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (anger_expressed)))
  )
)