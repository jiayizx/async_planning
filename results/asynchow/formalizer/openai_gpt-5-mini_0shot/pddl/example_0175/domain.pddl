(define (domain tell_if_pregnant)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (observed_done)
    (physical_done)
    (diagnosis_done)
    (fetal_done)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
  )

  ; Step 1: Observe the behaviour of cows and heifers. (2 months = 2 * 30d = 2 * 2592000 s = 5184000 s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (observed_done))
    )
  )

  ; Step 2: Pay attention to physical changes. (3 months = 3 * 2592000 s = 7776000 s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (physical_done))
    )
  )

  ; Step 4: Perform an accurate scientific pregnancy diagnosis to confirm observations. (2 weeks = 14d = 1209600 s)
  ; Requires Step1 (observed_done) AND Step2 (physical_done) to have finished before starting
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (observed_done)) (at start (physical_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (diagnosis_done))
    )
  )

  ; Step 3: Fetal responsiveness to testing. (1 month = 2592000 s)
  ; Requires Step4 (diagnosis_done)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (diagnosis_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fetal_done))
    )
  )
)
