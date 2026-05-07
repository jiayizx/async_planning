(define (domain revise-writing)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step ?s - step)
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
  )

  ;; Step 1: wait between writing and revising (7200s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s1_done))
    )
  )

  ;; Step 2: print out the paper (15 min = 900s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (s1_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s2_done))
    )
  )

  ;; Step 3: read your document out loud (30 min = 1800s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (s1_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s3_done))
    )
  )

  ;; Step 4: ask a peer to proofread (20 min = 1200s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending ?s) (s1_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s4_done))
    )
  )
)
