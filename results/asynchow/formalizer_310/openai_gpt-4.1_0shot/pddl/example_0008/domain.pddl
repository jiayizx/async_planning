(define (domain learn_language)
  (:requirements :durative-actions)
  (:predicates
    (look_for_local_classes_pending)
    (look_for_local_classes_done)
    (call_to_enroll_pending)
    (call_to_enroll_done)
    (attend_each_class_pending)
    (attend_each_class_done)
    (wait_for_next_weekly_class_pending)
    (wait_for_next_weekly_class_done)
    (practice_at_home_pending)
    (practice_at_home_done)
  )

  (:durative-action look_for_local_classes
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (look_for_local_classes_pending))
    :effect (and
      (at start (not (look_for_local_classes_pending)))
      (at end (look_for_local_classes_done))
    )
  )

  (:durative-action call_to_enroll
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (call_to_enroll_pending))
      (at start (look_for_local_classes_done))
    )
    :effect (and
      (at start (not (call_to_enroll_pending)))
      (at end (call_to_enroll_done))
    )
  )

  (:durative-action attend_each_class
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (attend_each_class_pending))
      (at start (call_to_enroll_done))
    )
    :effect (and
      (at start (not (attend_each_class_pending)))
      (at end (attend_each_class_done))
    )
  )

  (:durative-action wait_for_next_weekly_class
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and
      (at start (wait_for_next_weekly_class_pending))
      (at start (call_to_enroll_done))
    )
    :effect (and
      (at start (not (wait_for_next_weekly_class_pending)))
      (at end (wait_for_next_weekly_class_done))
    )
  )

  (:durative-action practice_at_home
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (practice_at_home_pending))
      (at start (attend_each_class_done))
      (at start (wait_for_next_weekly_class_done))
    )
    :effect (and
      (at start (not (practice_at_home_pending)))
      (at end (practice_at_home_done))
    )
  )
)
