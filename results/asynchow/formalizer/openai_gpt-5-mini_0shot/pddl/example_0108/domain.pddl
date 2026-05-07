(define (domain go_yellowstone)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending_step1)
    (pending_step2)
    (pending_step3)
    (pending_step4)
    (pending_step5)
    (done_step1)
    (done_step2)
    (done_step3)
    (done_step4)
    (done_step5)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (pending_step1))
    :effect (and
      (at start (not (pending_step1)))
      (at end (done_step1))
      (at end (s1_done))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (pending_step2))
    :effect (and
      (at start (not (pending_step2)))
      (at end (done_step2))
      (at end (s2_done))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (pending_step3)) (at start (s1_done)) (at start (s2_done)))
    :effect (and
      (at start (not (pending_step3)))
      (at end (done_step3))
      (at end (s3_done))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending_step4)) (at start (s3_done)))
    :effect (and
      (at start (not (pending_step4)))
      (at end (done_step4))
      (at end (s4_done))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (pending_step5)) (at start (s4_done)))
    :effect (and
      (at start (not (pending_step5)))
      (at end (done_step5))
      (at end (s5_done))
    )
  )
)
