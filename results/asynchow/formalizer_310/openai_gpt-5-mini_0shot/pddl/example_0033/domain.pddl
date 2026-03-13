(define (domain youtube-channel)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
    (s6_pending) (s6_done)
    (s7_pending) (s7_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s1_pending))
    :effect (and (at start (not (s1_pending))) (at end (s1_done)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (s2_pending)) (at start (s1_done)))
    :effect (and (at start (not (s2_pending))) (at end (s2_done)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s3_pending)) (at start (s2_done)))
    :effect (and (at start (not (s3_pending))) (at end (s3_done)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (s4_pending)) (at start (s3_done)))
    :effect (and (at start (not (s4_pending))) (at end (s4_done)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s5_pending)) (at start (s4_done)))
    :effect (and (at start (not (s5_pending))) (at end (s5_done)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s6_pending)) (at start (s5_done)))
    :effect (and (at start (not (s6_pending))) (at end (s6_done)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s7_pending)) (at start (s5_done)))
    :effect (and (at start (not (s7_pending))) (at end (s7_done)))
  )
)
