(define (domain do_something_different)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (something_different_done)
  )

  ;; Step 1: consider what is normally done (900s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s1_done))
    )
  )

  ;; Step 2: brainstorm other plans (900s), requires step1
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s2_done))
    )
  )

  ;; Step 3: write down those things (900s), requires step2
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s3_done))
    )
  )

  ;; Step 4: see which plans are interesting (300s), requires step2
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s4_done))
    )
  )

  ;; Step 5: pick something to do from there (300s), requires step3 and step4
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s4_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s5_done))
      (at end (something_different_done))
    )
  )
)
