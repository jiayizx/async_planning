(define (domain make-farina)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    ; pending flags (one per step) - used instead of (step_pending ?s)
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)

    ; generic step completion facts (one per step) required by goal
    (step_done1)
    (step_done2)
    (step_done3)
    (step_done4)
    (step_done5)

    ; semantic predicates (one unique predicate produced by each action)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step1_pending)) (at start (s3_done)))
    :effect (and
              (at start (not (step1_pending)))
              (at end (step_done1))
              (at end (s1_done))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (step2_pending))
    :effect (and
              (at start (not (step2_pending)))
              (at end (step_done2))
              (at end (s2_done))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step3_pending)) (at start (s2_done)) (at start (s1_done)))
    :effect (and
              (at start (not (step3_pending)))
              (at end (step_done3))
              (at end (s3_done))
            )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step4_pending)) (at start (s2_done)))
    :effect (and
              (at start (not (step4_pending)))
              (at end (step_done4))
              (at end (s4_done))
            )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step5_pending)) (at start (s1_done)) (at start (s3_done)) (at start (s2_done)))
    :effect (and
              (at start (not (step5_pending)))
              (at end (step_done5))
              (at end (s5_done))
            )
  )
)
