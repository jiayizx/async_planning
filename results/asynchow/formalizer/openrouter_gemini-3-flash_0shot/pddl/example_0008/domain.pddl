(define (domain language_learning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (classes_found)
    (enrolled)
    (class_attended)
    (waited)
    (language_learned)
  )

  (:durative-action look_for_classes
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (classes_found)))
  )

  (:durative-action enroll
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (classes_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (enrolled)))
  )

  (:durative-action attend_class
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (enrolled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (class_attended)))
  )

  (:durative-action wait_for_next_class
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (enrolled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waited)))
  )

  (:durative-action practice_at_home
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (class_attended)) (at start (waited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (language_learned)))
  )
)