(define (domain patellar_luxation_diagnosis)
  (:requirements :durative-actions)
  
  (:predicates
    (physical_exam_pending)
    (physical_exam_done)
    (xray_leg_pending)
    (xray_leg_done)
    (manage_mild_pending)
    (manage_mild_done)
    (surgery_severe_pending)
    (surgery_severe_done)
  )

  (:durative-action do_physical_exam
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (physical_exam_pending))
    :effect (and (at start (not (physical_exam_pending))) (at end (physical_exam_done)))
  )

  (:durative-action do_xray_leg
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (xray_leg_pending)) (at start (physical_exam_done)))
    :effect (and (at start (not (xray_leg_pending))) (at end (xray_leg_done)))
  )

  (:durative-action do_manage_mild
    :parameters ()
    :duration (= ?duration 2419200)
    :condition (and (at start (manage_mild_pending)) (at start (xray_leg_done)))
    :effect (and (at start (not (manage_mild_pending))) (at end (manage_mild_done)))
  )

  (:durative-action do_surgery_severe
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (surgery_severe_pending)) (at start (xray_leg_done)))
    :effect (and (at start (not (surgery_severe_pending))) (at end (surgery_severe_done)))
  )
)