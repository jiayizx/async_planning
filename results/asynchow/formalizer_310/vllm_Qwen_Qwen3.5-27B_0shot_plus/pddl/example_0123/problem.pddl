(define (problem get_straight_as)
  (:domain school_grades)
  
  (:init
    (go_to_class_pending)
    (pay_attention_pending)
    (do_reading_pending)
    (do_homework_pending)
    (prepare_tests_pending)
    (get_high_scores_pending)
  )

  (:goal (and
    (go_to_class_done)
    (pay_attention_done)
    (do_reading_done)
    (do_homework_done)
    (prepare_tests_done)
    (get_high_scores_done)
  ))
)
