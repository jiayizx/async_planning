(define (domain learn-karate)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (pending1)
    (pending2)
    (pending3)
    (pending4)
    (pending5)

    (done1)
    (done2)
    (done3)
    (done4)
    (done5)

    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)

    (learned_basics)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (pending1))
    :effect (and
      (at start (not (pending1)))
      (at end (done1))
      (at end (s1_done))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending2)) (at start (s1_done)))
    :effect (and
      (at start (not (pending2)))
      (at end (done2))
      (at end (s2_done))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (pending3)) (at start (s1_done)))
    :effect (and
      (at start (not (pending3)))
      (at end (done3))
      (at end (s3_done))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 6)
    :condition (and (at start (pending4)) (at start (s1_done)))
    :effect (and
      (at start (not (pending4)))
      (at end (done4))
      (at end (s4_done))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (pending5)) (at start (s1_done)))
    :effect (and
      (at start (not (pending5)))
      (at end (done5))
      (at end (s5_done))
      (at end (learned_basics))
    )
  )
)
