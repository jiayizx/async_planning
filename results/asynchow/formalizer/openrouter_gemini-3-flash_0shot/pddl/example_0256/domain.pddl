(define (domain lose_upper_body_fat)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (exercises_chosen)
    (chinups_done)
    (dumbbell_row_done)
    (delt_raise_done)
  )

  (:durative-action choose_exercises
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (exercises_chosen)))
  )

  (:durative-action do_chinups
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (exercises_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chinups_done)))
  )

  (:durative-action dumbbell_row
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (exercises_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dumbbell_row_done)))
  )

  (:durative-action delt_raise
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (exercises_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (delt_raise_done)))
  )
)