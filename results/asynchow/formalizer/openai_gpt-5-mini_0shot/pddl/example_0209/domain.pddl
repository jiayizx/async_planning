(define (domain kidney-donor)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
  )

  ;; Step 1: Recover in the hospital
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s1_done))
    )
  )

  ;; Step 2: Manage your pain (requires completion of step1)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s2_done))
    )
  )

  ;; Step 3: Prepare for multiple follow-ups (requires completion of step1)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 4838400)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s3_done))
    )
  )
)
