(define (domain play_with_chinchilla)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (s1_completed)
    (s2_completed)
    (s3_completed)
    (s4_completed)
    (play_ready)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step1_pending))
    :effect (and
              (at start (not (step1_pending)))
              (at end (step1_done))
              (at end (s1_completed))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step2_pending)) (at start (s1_completed)))
    :effect (and
              (at start (not (step2_pending)))
              (at end (step2_done))
              (at end (s2_completed))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step3_pending)) (at start (s1_completed)))
    :effect (and
              (at start (not (step3_pending)))
              (at end (step3_done))
              (at end (s3_completed))
            )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step4_pending)) (at start (s1_completed)))
    :effect (and
              (at start (not (step4_pending)))
              (at end (step4_done))
              (at end (s4_completed))
              (at end (play_ready))
            )
  )
)
