(define (domain protect_from_sun)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_ok)
    (s2_ok)
    (s3_ok)
    (s4_ok)
  )

  ; Step 1: Test how well your clothing protects against the sun. (15 min = 900s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s4_ok)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s1_ok))
    )
  )

  ; Step 2: Wear sunglasses. (1 min = 60s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s2_ok))
    )
  )

  ; Step 3: Wear a hat with at least a 3-inch brim. (5 min = 300s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s3_ok))
    )
  )

  ; Step 4: Wear clothing that covers more skin. (10 min = 600s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s4_ok))
    )
  )
)
