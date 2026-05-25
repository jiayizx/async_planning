(define (domain buy_camera)
  (:requirements :durative-actions :typing)
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
    (p8_done)
    (p9_done)
    (p10_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step1)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (p1_done))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending step2) (p3_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (p2_done))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step3) (p1_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (p3_done))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step4) (p7_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (p4_done))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 259200)
    :condition (at start (and (step_pending step5) (p2_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (p5_done))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step6)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (p6_done))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step7) (p3_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (p7_done))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 432000)
    :condition (at start (and (step_pending step8) (p4_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (p8_done))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step9) (p6_done) (p8_done) (p10_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (p9_done))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step10) (p8_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (p10_done))
    )
  )
)
