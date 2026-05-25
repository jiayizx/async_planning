(define (domain melt_almond_bark)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_ok)
    (s2_ok)
    (s3_ok)
    (s4_ok)
    (s5_ok)
    (s6_ok)
    (s7_ok)
    (s8_ok)
    (s9_ok)
    (s10_ok)
    (s11_ok)
    (s12_ok)
    (s13_ok)
    (s14_ok)
    (s15_ok)
    (s16_ok)
    (s17_ok)
    (s18_ok)
    (s19_ok)
    (s20_ok)
    (s21_ok)
    (s22_ok)
    (s23_ok)
    (s24_ok)
    (s25_ok)
    (s26_ok)
    (s27_ok)
    (s28_ok)
    (s29_ok)
    (s30_ok)
  )

  (:durative-action do_step1
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step1)) (at start (s3_ok)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_ok)))
  )

  (:durative-action do_step2
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step2)) (at start (s28_ok)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_ok)))
  )

  (:durative-action do_step3
    :duration (= ?duration 1200)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_ok)))
  )

  (:durative-action do_step4
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (s16_ok)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_ok)))
  )

  (:durative-action do_step5
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step5)) (at start (s13_ok)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_ok)))
  )

  (:durative-action do_step6
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step6)) (at start (s1_ok)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_ok)))
  )

  (:durative-action do_step7
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step7)) (at start (s24_ok)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_ok)))
  )

  (:durative-action do_step8
    :duration (= ?duration 5)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_ok)))
  )

  (:durative-action do_step9
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step9)) (at start (s8_ok)) (at start (s27_ok)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_ok)))
  )

  (:durative-action do_step10
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step10)) (at start (s8_ok)) (at start (s19_ok)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_ok)))
  )

  (:durative-action do_step11
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step11)) (at start (s7_ok)) (at start (s15_ok)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_ok)))
  )

  (:durative-action do_step12
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step12)) (at start (s18_ok)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_ok)))
  )

  (:durative-action do_step13
    :duration (= ?duration 180)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_ok)))
  )

  (:durative-action do_step14
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step14)) (at start (s6_ok)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_ok)))
  )

  (:durative-action do_step15
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step15)) (at start (s2_ok)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_ok)))
  )

  (:durative-action do_step16
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step16)) (at start (s22_ok)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_ok)))
  )

  (:durative-action do_step17
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step17)) (at start (s1_ok)) (at start (s8_ok)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_ok)))
  )

  (:durative-action do_step18
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step18)) (at start (s30_ok)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_ok)))
  )

  (:durative-action do_step19
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step19)) (at start (s11_ok)) (at start (s30_ok)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_ok)))
  )

  (:durative-action do_step20
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step20)) (at start (s23_ok)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_ok)))
  )

  (:durative-action do_step21
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step21)) (at start (s12_ok)) (at start (s24_ok)) (at start (s27_ok)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_ok)))
  )

  (:durative-action do_step22
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step22)) (at start (s13_ok)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_ok)))
  )

  (:durative-action do_step23
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step23)) (at start (s4_ok)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_ok)))
  )

  (:durative-action do_step24
    :duration (= ?duration 60)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_ok)))
  )

  (:durative-action do_step25
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step25)) (at start (s28_ok)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_ok)))
  )

  (:durative-action do_step26
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step26)) (at start (s9_ok)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_ok)))
  )

  (:durative-action do_step27
    :duration (= ?duration 10)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_ok)))
  )

  (:durative-action do_step28
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (s5_ok)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_ok)))
  )

  (:durative-action do_step29
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step29)) (at start (s8_ok)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_ok)))
  )

  (:durative-action do_step30
    :duration (= ?duration 120)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_ok)))
  )
)
