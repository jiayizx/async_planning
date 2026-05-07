(define (domain school_success)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (class_attended)
    (attention_paid)
    (reading_done)
    (homework_completed)
    (test_prepared)
    (high_scores_achieved)
  )

  (:durative-action go_to_class
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (class_attended)))
  )

  (:durative-action pay_attention
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (class_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (attention_paid)))
  )

  (:durative-action do_reading
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (class_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reading_done)))
  )

  (:durative-action do_homework
    :parameters (?s - step)
    :duration (= ?duration 216000)
    :condition (and (at start (step_pending ?s)) (at start (attention_paid)) (at start (reading_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (homework_completed)))
  )

  (:durative-action prepare_tests
    :parameters (?s - step)
    :duration (= ?duration 144000)
    :condition (and (at start (step_pending ?s)) (at start (homework_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (test_prepared)))
  )

  (:durative-action get_high_scores
    :parameters (?s - step)
    :duration (= ?duration 57600)
    :condition (and (at start (step_pending ?s)) (at start (test_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (high_scores_achieved)))
  )
)