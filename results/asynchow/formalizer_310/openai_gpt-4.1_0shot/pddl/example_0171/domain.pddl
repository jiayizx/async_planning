(define (domain patellar-luxation-diagnosis)
  (:requirements :durative-actions)
  (:predicates
    (physical_exam_pending)
    (physical_exam_done)
    (xray_leg_pending)
    (xray_leg_done)
    (manage_condition_pending)
    (manage_condition_done)
    (undergo_surgery_pending)
    (undergo_surgery_done)
  )

  (:durative-action do_physical_exam
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (physical_exam_pending))
    :effect (and
      (at start (not (physical_exam_pending)))
      (at end (physical_exam_done))
    )
  )

  (:durative-action do_xray_leg
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (xray_leg_pending))
      (at start (physical_exam_done))
    )
    :effect (and
      (at start (not (xray_leg_pending)))
      (at end (xray_leg_done))
    )
  )

  (:durative-action do_manage_condition
    :parameters ()
    :duration (= ?duration 2419200)
    :condition (and
      (at start (manage_condition_pending))
      (at start (xray_leg_done))
    )
    :effect (and
      (at start (not (manage_condition_pending)))
      (at end (manage_condition_done))
    )
  )

  (:durative-action do_undergo_surgery
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (undergo_surgery_pending))
      (at start (xray_leg_done))
    )
    :effect (and
      (at start (not (undergo_surgery_pending)))
      (at end (undergo_surgery_done))
    )
  )
)
