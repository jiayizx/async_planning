(define (domain vacation)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
    (s6_pending) (s6_done)
  )

  (:durative-action do_step_1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (s1_pending))
    :effect (and
      (at start (not (s1_pending)))
      (at end (s1_done))
    )
  )

  (:durative-action do_step_2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (s2_pending))
    :effect (and
      (at start (not (s2_pending)))
      (at end (s2_done))
    )
  )

  (:durative-action do_step_3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s3_pending)) (at start (s2_done)))
    :effect (and
      (at start (not (s3_pending)))
      (at end (s3_done))
    )
  )

  (:durative-action do_step_4
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (s4_pending)) (at start (s3_done)) (at start (s6_done)))
    :effect (and
      (at start (not (s4_pending)))
      (at end (s4_done))
    )
  )

  (:durative-action do_step_5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s5_pending)) (at start (s4_done)))
    :effect (and
      (at start (not (s5_pending)))
      (at end (s5_done))
    )
  )

  (:durative-action do_step_6
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s6_pending)) (at start (s1_done)))
    :effect (and
      (at start (not (s6_pending)))
      (at end (s6_done))
    )
  )
)
