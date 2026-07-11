(define (problem learn_language)
  (:domain language_learning)
  
  (:init
    (look_for_classes_pending)
    (call_to_enroll_pending)
    (attend_class_pending)
    (wait_for_next_class_pending)
    (practice_at_home_pending)
  )

  (:goal (and
    (look_for_classes_done)
    (call_to_enroll_done)
    (attend_class_done)
    (wait_for_next_class_done)
    (practice_at_home_done)
  ))
)