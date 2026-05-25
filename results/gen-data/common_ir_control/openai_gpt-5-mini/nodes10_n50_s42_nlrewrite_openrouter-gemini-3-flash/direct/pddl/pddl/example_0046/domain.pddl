(define (domain marathon_prep)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 2700)
    :condition (at start (step_pending s1))
    :effect (and
      (at start (not (step_pending s1)))
      (at end (step_done s1))
      (at end (s1_done))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 6048000)
    :condition (and (at start (step_pending s2)) (at start (s6_done)))
    :effect (and
      (at start (not (step_pending s2)))
      (at end (step_done s2))
      (at end (s2_done))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending s3)) (at start (s2_done)))
    :effect (and
      (at start (not (step_pending s3)))
      (at end (step_done s3))
      (at end (s3_done))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending s4)) (at start (s5_done)))
    :effect (and
      (at start (not (step_pending s4)))
      (at end (step_done s4))
      (at end (s4_done))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending s5)) (at start (s3_done)))
    :effect (and
      (at start (not (step_pending s5)))
      (at end (step_done s5))
      (at end (s5_done))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s6)) (at start (s8_done)))
    :effect (and
      (at start (not (step_pending s6)))
      (at end (step_done s6))
      (at end (s6_done))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 1200)
    :condition (at start (step_pending s7))
    :effect (and
      (at start (not (step_pending s7)))
      (at end (step_done s7))
      (at end (s7_done))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 7200)
    :condition (at start (step_pending s8))
    :effect (and
      (at start (not (step_pending s8)))
      (at end (step_done s8))
      (at end (s8_done))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending s9)) (at start (s1_done)) (at start (s7_done)))
    :effect (and
      (at start (not (step_pending s9)))
      (at end (step_done s9))
      (at end (s9_done))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending s10)) (at start (s4_done)))
    :effect (and
      (at start (not (step_pending s10)))
      (at end (step_done s10))
      (at end (s10_done))
    )
  )
)
