(define (domain make-friends)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
    (step6_pending)
    (step7_pending)

    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (step6_done)
    (step7_done)

    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
    (s6_complete)
    (s7_complete)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step1_pending))
    :effect (and
              (at start (not (step1_pending)))
              (at end (step1_done))
              (at end (s1_complete))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step2_pending)) (at start (s1_complete)))
    :effect (and
              (at start (not (step2_pending)))
              (at end (step2_done))
              (at end (s2_complete))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step3_pending)) (at start (s2_complete)))
    :effect (and
              (at start (not (step3_pending)))
              (at end (step3_done))
              (at end (s3_complete))
            )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step4_pending)) (at start (s2_complete)))
    :effect (and
              (at start (not (step4_pending)))
              (at end (step4_done))
              (at end (s4_complete))
            )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step5_pending)) (at start (s3_complete)) (at start (s4_complete)))
    :effect (and
              (at start (not (step5_pending)))
              (at end (step5_done))
              (at end (s5_complete))
            )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step6_pending)) (at start (s5_complete)))
    :effect (and
              (at start (not (step6_pending)))
              (at end (step6_done))
              (at end (s6_complete))
            )
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step7_pending)) (at start (s6_complete)))
    :effect (and
              (at start (not (step7_pending)))
              (at end (step7_done))
              (at end (s7_complete))
            )
  )
)
