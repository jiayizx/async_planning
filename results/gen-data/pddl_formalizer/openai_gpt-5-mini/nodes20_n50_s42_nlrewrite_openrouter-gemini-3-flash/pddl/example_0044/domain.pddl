(define (domain oil_blend)
  (:requirements :durative-actions :typing)
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
    (s11_done)
    (s12_done)
    (s13_done)
    (s14_done)
    (s15_done)
    (s16_done)
    (s17_done)
    (s18_done)
    (s19_done)
    (s20_done)
    (finished_blend)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done)) ) )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (s4_done)) (at start (s12_done)) (at start (s18_done)) (at start (s5_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done)) ) )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done)) ) )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step4)) (at start (s12_done)) (at start (s19_done)) (at start (s9_done)) (at start (s6_done)) (at start (s3_done)) (at start (s18_done)) (at start (s5_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done)) ) )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (s18_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done)) ) )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (s3_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done)) ) )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step7)) (at start (s11_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_done)) ) )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step8)) (at start (s12_done)) (at start (s5_done)) (at start (s18_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_done)) ) )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step9)) (at start (s6_done)) (at start (s3_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_done)) ) )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step10)) (at start (s20_done)) (at start (s1_done)) (at start (s2_done)) (at start (s12_done)) (at start (s13_done)) (at start (s9_done)) (at start (s6_done)) (at start (s3_done)) (at start (s14_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_done)) ) )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step11))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (s11_done)) ) )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step12)) (at start (s5_done)) (at start (s18_done)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (s12_done)) ) )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (s12_done)) (at start (s5_done)) (at start (s18_done)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (s13_done)) ) )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step14)) (at start (s3_done)) (at start (s16_done)))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (s14_done)) ) )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step15)) (at start (s17_done)) (at start (s19_done)) (at start (s9_done)) (at start (s6_done)) (at start (s3_done)) (at start (s12_done)) (at start (s5_done)) (at start (s18_done)) (at start (s14_done)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (s15_done)) ) )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step16))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (s16_done)) ) )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step17)) (at start (s19_done)) (at start (s9_done)) (at start (s6_done)) (at start (s3_done)) (at start (s12_done)) (at start (s5_done)) (at start (s18_done)))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (s17_done)) ) )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (s11_done)))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (s18_done)) ) )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step19)) (at start (s9_done)) (at start (s6_done)) (at start (s3_done)))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (s19_done)) ) )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (s1_done)) (at start (s2_done)) (at start (s13_done)) (at start (s12_done)) (at start (s5_done)) (at start (s18_done)) (at start (s9_done)) (at start (s6_done)) (at start (s3_done)) (at start (s14_done)) (at start (s19_done)) (at start (s17_done)))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (s20_done))
      (at end (finished_blend)) ) )
)
