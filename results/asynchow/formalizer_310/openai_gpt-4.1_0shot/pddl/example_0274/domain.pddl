(define (domain double_jointed)
  (:requirements :durative-actions)
  (:predicates
    (pinky_lift_pending)
    (pinky_lift_done)
    (thumb_push_pending)
    (thumb_push_done)
    (elbow_open_pending)
    (elbow_open_done)
    (knee_extend_pending)
    (knee_extend_done)
    (palms_floor_pending)
    (palms_floor_done)
    (total_points_pending)
    (total_points_done)
  )

  (:durative-action pinky_lift
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (pinky_lift_pending))
    :effect (and (at start (not (pinky_lift_pending))) (at end (pinky_lift_done)))
  )

  (:durative-action thumb_push
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (thumb_push_pending))
    :effect (and (at start (not (thumb_push_pending))) (at end (thumb_push_done)))
  )

  (:durative-action elbow_open
    :parameters ()
    :duration (= ?duration 3)
    :condition (at start (elbow_open_pending))
    :effect (and (at start (not (elbow_open_pending))) (at end (elbow_open_done)))
  )

  (:durative-action knee_extend
    :parameters ()
    :duration (= ?duration 3)
    :condition (at start (knee_extend_pending))
    :effect (and (at start (not (knee_extend_pending))) (at end (knee_extend_done)))
  )

  (:durative-action palms_floor
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (palms_floor_pending))
    :effect (and (at start (not (palms_floor_pending))) (at end (palms_floor_done)))
  )

  (:durative-action total_points
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (total_points_pending))
      (at start (pinky_lift_done))
      (at start (thumb_push_done))
      (at start (elbow_open_done))
      (at start (knee_extend_done))
      (at start (palms_floor_done))
    )
    :effect (and (at start (not (total_points_pending))) (at end (total_points_done)))
  )
)
