(define (domain patellar_luxation_diagnosis)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (physical_exam_done)
    (xray_done)
    (mild_managed)
    (surgery_done)
  )

  (:durative-action physical_exam
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (physical_exam_done))
    )
  )

  (:durative-action xray_leg
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (physical_exam_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (xray_done))
    )
  )

  (:durative-action manage_mild
    :parameters (?s - step)
    :duration (= ?duration 2419200)
    :condition (and
      (at start (step_pending ?s))
      (at start (xray_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mild_managed))
    )
  )

  (:durative-action undergo_surgery
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (xray_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (surgery_done))
    )
  )
)