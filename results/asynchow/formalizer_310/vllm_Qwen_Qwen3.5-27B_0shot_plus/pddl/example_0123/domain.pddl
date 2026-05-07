(define (domain school_grades)
  (:requirements :durative-actions)
  
  (:predicates
    (go_to_class_pending)
    (go_to_class_done)
    (pay_attention_pending)
    (pay_attention_done)
    (do_reading_pending)
    (do_reading_done)
    (do_homework_pending)
    (do_homework_done)
    (prepare_tests_pending)
    (prepare_tests_done)
    (get_high_scores_pending)
    (get_high_scores_done)
  )

  (:durative-action go_to_class
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (at start (go_to_class_pending))
    :effect (and (at start (not (go_to_class_pending))) (at end (go_to_class_done)))
  )

  (:durative-action pay_attention
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (pay_attention_pending)) (at start (go_to_class_done)))
    :effect (and (at start (not (pay_attention_pending))) (at end (pay_attention_done)))
  )

  (:durative-action do_reading
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (do_reading_pending)) (at start (go_to_class_done)))
    :effect (and (at start (not (do_reading_pending))) (at end (do_reading_done)))
  )

  (:durative-action do_homework
    :parameters ()
    :duration (= ?duration 216000)
    :condition (and (at start (do_homework_pending)) (at start (pay_attention_done)) (at start (do_reading_done)))
    :effect (and (at start (not (do_homework_pending))) (at end (do_homework_done)))
  )

  (:durative-action prepare_tests
    :parameters ()
    :duration (= ?duration 144000)
    :condition (and (at start (prepare_tests_pending)) (at start (do_homework_done)))
    :effect (and (at start (not (prepare_tests_pending))) (at end (prepare_tests_done)))
  )

  (:durative-action get_high_scores
    :parameters ()
    :duration (= ?duration 57600)
    :condition (and (at start (get_high_scores_pending)) (at start (prepare_tests_done)))
    :effect (and (at start (not (get_high_scores_pending))) (at end (get_high_scores_done)))
  )
)
