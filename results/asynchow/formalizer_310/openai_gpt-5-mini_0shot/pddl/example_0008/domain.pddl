(define (domain learn_language)
  (:requirements :durative-actions)
  (:predicates
    (look_for_local_classes_pending)
    (look_for_local_classes_done)
    (call_to_enroll_pending)
    (call_to_enroll_done)
    (attend_class_pending)
    (attend_class_done)
    (wait_next_weekly_class_pending)
    (wait_next_weekly_class_done)
    (practice_at_home_pending)
    (practice_at_home_done)
  )

  (:durative-action do_look_for_local_classes
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (look_for_local_classes_pending))
    :effect (and
      (at start (not (look_for_local_classes_pending)))
      (at end (look_for_local_classes_done))
    )
  )

  (:durative-action do_call_to_enroll
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (call_to_enroll_pending)) (at start (look_for_local_classes_done)))
    :effect (and
      (at start (not (call_to_enroll_pending)))
      (at end (call_to_enroll_done))
    )
  )

  (:durative-action do_attend_class
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (attend_class_pending)) (at start (call_to_enroll_done)))
    :effect (and
      (at start (not (attend_class_pending)))
      (at end (attend_class_done))
    )
  )

  (:durative-action do_wait_next_weekly_class
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (wait_next_weekly_class_pending)) (at start (call_to_enroll_done)))
    :effect (and
      (at start (not (wait_next_weekly_class_pending)))
      (at end (wait_next_weekly_class_done))
    )
  )

  (:durative-action do_practice_at_home
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (practice_at_home_pending)) (at start (attend_class_done)) (at start (wait_next_weekly_class_done)))
    :effect (and
      (at start (not (practice_at_home_pending)))
      (at end (practice_at_home_done))
    )
  )
)
