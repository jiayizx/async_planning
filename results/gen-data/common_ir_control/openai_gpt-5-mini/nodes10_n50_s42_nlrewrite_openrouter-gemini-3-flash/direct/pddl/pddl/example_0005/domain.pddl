(define (domain wear_gloves_bed)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates per step (zero-arity)
    (p1_ready)
    (p2_ready)
    (p3_ready)
    (p4_ready)
    (p5_ready)
    (p6_ready)
    (p7_ready)
    (gloves_on)
    (p9_ready)
    (p10_ready)
  )

  ; One durative action per step
  (:durative-action do_step1
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (p10_ready)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (p1_ready))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (p2_ready))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (p2_ready)) (at start (p7_ready)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (p3_ready))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 180)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (p4_ready))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step5)) (at start (p9_ready)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (p5_ready))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (p4_ready)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (p6_ready))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 240)
    :condition (at start (step_pending step7))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (p7_ready))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step8)) (at start (p1_ready)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (gloves_on))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 15)
    :condition (at start (step_pending step9))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (p9_ready))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step10)) (at start (p2_ready)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (p10_ready))
    )
  )
)
