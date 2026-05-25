(define (domain forest_packing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
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
    (s11_done)
    (s12_done)
    (s13_done)
    (s14_done)
    (s15_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (s1_done))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (s2_done))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (s14_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (s3_done))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step4)) (at start (s11_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (s4_done))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (s3_done)) (at start (s14_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (s5_done))
    )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (s6_done))
    )
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step7)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (s7_done))
    )
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step8)) (at start (s11_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (s8_done))
    )
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step9)) (at start (s10_done)) (at start (s15_done)) (at start (s11_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (s9_done))
    )
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step10))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (s10_done))
    )
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step11))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (s11_done))
    )
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step12)) (at start (s11_done)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (s12_done))
    )
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step13)) (at start (s11_done)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (s13_done))
    )
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step14))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (s14_done))
    )
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step15)) (at start (s11_done)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (s15_done))
    )
  )
)
