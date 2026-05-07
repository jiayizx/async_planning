(define (domain school_musical)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (a1_done)
    (a2_done)
    (a3_done)
    (a4_done)
    (a5_done)
    (a6_done)
  )

  ;; Step 1: Sign up for try outs (900s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (a1_done))
            )
  )

  ;; Step 2: Audition for the musical (3600s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (a1_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (a2_done))
            )
  )

  ;; Step 3: Get picked for the part (3600s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (a2_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (a3_done))
            )
  )

  ;; Step 4: Rehearse the part (432000s)  (follows step3)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (a3_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (a4_done))
            )
  )

  ;; Step 5: Show up the night of the musical (3600s)  (requires step4 and step6)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (a4_done)) (at start (a6_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (a5_done))
            )
  )

  ;; Step 6: Rehearse the play with others (604800s)  (follows step3, precedes step5)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (a3_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (a6_done))
            )
  )
)
