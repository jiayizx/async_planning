(define (domain remove-old-caulking)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; unique semantic predicates produced by each action
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)

    ;; identity markers so each durative-action applies to its designated step object
    (is_s1 ?s - step)
    (is_s2 ?s - step)
    (is_s3 ?s - step)
    (is_s4 ?s - step)
  )

  ;; Step 1: Work slowly. 30 minutes = 1800 seconds
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_s1 ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s1_done))
            )
  )

  ;; Step 2: Start with a putty knife. 10 minutes = 600 seconds
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_s2 ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s2_done))
            )
  )

  ;; Step 3: Use pliers to remove broken-off bits. 15 minutes = 900 seconds
  ;; Requires Step 4 completed before starting (Step 4 precedes Step 3)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_s3 ?s)) (at start (s4_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s3_done))
            )
  )

  ;; Step 4: Scrape away whatever's left. 30 minutes = 1800 seconds
  ;; Requires Step 2 completed before starting (Step 2 precedes Step 4)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_s4 ?s)) (at start (s2_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s4_done))
            )
  )
)
