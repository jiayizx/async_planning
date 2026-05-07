(define (domain lower_androgen_levels)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (tested)
    (birth_control_discussed)
    (hypoglycemic_med_obtained)
    (anti_androgen_discussed)
  )

  (:durative-action get_tested
    :parameters (?s - step)
    :duration (= ?duration 14)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tested)))
  )

  (:durative-action discuss_birth_control
    :parameters (?s - step)
    :duration (= ?duration 90)
    :condition (and (at start (step_pending ?s)) (at start (tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (birth_control_discussed)))
  )

  (:durative-action get_hypoglycemic_med
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hypoglycemic_med_obtained)))
  )

  (:durative-action discuss_anti_androgen
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (anti_androgen_discussed)))
  )
)