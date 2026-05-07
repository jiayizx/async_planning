(define (domain fix_chip_quartz)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cleaned)
    (taped)
    (superglued)
    (epoxied)
    (filed)
  )

  ;; Step 1: Clean the counter (15 minutes = 900 seconds)
  (:durative-action do_step1_clean
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cleaned))
    )
  )

  ;; Step 2: Apply masking tape (5 minutes = 300 seconds) -- requires step1 (cleaned) to have finished
  (:durative-action do_step2_tape
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (taped))
    )
  )

  ;; Step 3: Fix cracks with superglue (10 minutes = 600 seconds) -- requires step2 (taped)
  (:durative-action do_step3_superglue
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (taped)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (superglued))
    )
  )

  ;; Step 4: Use pigmented epoxy (15 minutes = 900 seconds) -- requires step2 (taped)
  (:durative-action do_step4_epoxy
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (taped)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (epoxied))
    )
  )

  ;; Step 5: File the glue patch once hardened (20 minutes = 1200 seconds)
  ;; requires both step3 (superglued) and step4 (epoxied)
  (:durative-action do_step5_file
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (superglued)) (at start (epoxied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (filed))
    )
  )
)
