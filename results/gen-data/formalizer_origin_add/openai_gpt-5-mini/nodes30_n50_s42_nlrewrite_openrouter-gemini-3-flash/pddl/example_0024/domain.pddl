(define (domain breakfast)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (s1_finished)
    (s2_finished)
    (s3_finished)
    (s4_finished)
    (s5_finished)
    (s6_finished)
    (s7_finished)
    (s8_finished)
    (s9_finished)
    (s10_finished)
    (s11_finished)
    (s12_finished)
    (s13_finished)
    (s14_finished)
    (s15_finished)
    (s16_finished)
    (s17_finished)
    (s18_finished)
    (s19_finished)
    (s20_finished)
    (s21_finished)
    (s22_finished)
    (s23_finished)
    (s24_finished)
    (s25_finished)
    (s26_finished)
    (s27_finished)
    (s28_finished)
    (s29_finished)
    (s30_finished)

    (breakfast_completed)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (s6_finished)) (at start (s26_finished)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_finished)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (s15_finished)) (at start (s21_finished)) (at start (s22_finished)) (at start (s1_finished)) (at start (s28_finished)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_finished)) (at end (breakfast_completed)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_finished)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (s16_finished)) (at start (s24_finished)) (at start (s1_finished)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_finished)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_finished)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step6)) (at start (s3_finished)) (at start (s25_finished)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_finished)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_finished)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step8)) (at start (s7_finished)) (at start (s10_finished)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_finished)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step9)) (at start (s3_finished)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_finished)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step10)) (at start (s9_finished)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_finished)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step11)) (at start (s29_finished)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_finished)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 45)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_finished)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step13)) (at start (s5_finished)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_finished)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step14)) (at start (s9_finished)) (at start (s19_finished)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_finished)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step15)) (at start (s13_finished)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_finished)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step16)) (at start (s18_finished)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_finished)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step17)) (at start (s9_finished)) (at start (s16_finished)) (at start (s28_finished)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_finished)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_finished)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_finished)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step20)) (at start (s21_finished)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_finished)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step21)) (at start (s13_finished)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_finished)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_finished)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step23)) (at start (s17_finished)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_finished)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step24)) (at start (s16_finished)) (at start (s19_finished)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_finished)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (s7_finished)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_finished)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step26)) (at start (s28_finished)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_finished)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step27)) (at start (s12_finished)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_finished)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (s13_finished)) (at start (s22_finished)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_finished)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step29)) (at start (s3_finished)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_finished)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step30)) (at start (s11_finished)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_finished)))
  )
)
