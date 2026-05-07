(define (domain breakfast)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1_done)
    (p2_done)
    (p3_done)
    (p4_done)
    (p5_done)
    (p6_done)
    (p7_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 60)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (p1_done))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 60)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (p2_done))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step3)) (at start (p1_done)) (at start (p2_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (p3_done))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step4)) (at start (p3_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (p4_done))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step5)) (at start (p4_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (p5_done))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (p5_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (p6_done))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step7)) (at start (p6_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (p7_done))
    )
  )
)
