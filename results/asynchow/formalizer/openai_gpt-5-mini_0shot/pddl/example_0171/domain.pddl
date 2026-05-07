(define (domain diagnose-patellar-luxation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (exam_done)
    (xray_done)
    (manage_done)
    (surgery_done)
  )

  ; Step 1: physical exam
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (exam_done))
    )
  )

  ; Step 2: x-ray the leg
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (exam_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (xray_done))
    )
  )

  ; Step 3: manage condition (4 weeks)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 2419200)
    :condition (at start (and (step_pending ?s) (xray_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (manage_done))
    )
  )

  ; Step 4: surgery (severe cases)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending ?s) (xray_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (surgery_done))
    )
  )
)
