(define (domain beef-tongue)
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
    (s21_done)
    (s22_done)
    (s23_done)
    (s24_done)
    (s25_done)
    (s26_done)
    (s27_done)
    (s28_done)
    (s29_done)
    (s30_done)
  )

  (:durative-action do-step1
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done)))
  )

  (:durative-action do-step2
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (s1_done)) (at start (s17_done)) (at start (s10_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done)))
  )

  (:durative-action do-step3
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (s15_done)) (at start (s24_done)) (at start (s30_done)) (at start (s17_done)) (at start (s10_done)) (at start (s2_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done)))
  )

  (:durative-action do-step4
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step4)) (at start (s19_done)) (at start (s18_done)) (at start (s8_done)) (at start (s22_done)) (at start (s24_done)) (at start (s7_done)) (at start (s6_done)) (at start (s5_done)) (at start (s3_done)) (at start (s15_done)) (at start (s30_done)) (at start (s17_done)) (at start (s10_done)) (at start (s2_done)) (at start (s1_done)) (at start (s25_done)) (at start (s16_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done)))
  )

  (:durative-action do-step5
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step5)) (at start (s3_done)) (at start (s11_done)) (at start (s15_done)) (at start (s24_done)) (at start (s30_done)) (at start (s17_done)) (at start (s10_done)) (at start (s2_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done)))
  )

  (:durative-action do-step6
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (s17_done)) (at start (s30_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done)))
  )

  (:durative-action do-step7
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (s6_done)) (at start (s23_done)) (at start (s27_done)) (at start (s24_done)) (at start (s5_done)) (at start (s3_done)) (at start (s15_done)) (at start (s30_done)) (at start (s11_done)) (at start (s17_done)) (at start (s10_done)) (at start (s2_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done)))
  )

  (:durative-action do-step8
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (s26_done)) (at start (s22_done)) (at start (s24_done)) (at start (s3_done)) (at start (s15_done)) (at start (s30_done)) (at start (s17_done)) (at start (s10_done)) (at start (s2_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done)))
  )

  (:durative-action do-step9
    :duration (= ?duration 300)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done)))
  )

  (:durative-action do-step10
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step10)) (at start (s17_done)) (at start (s1_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done)))
  )

  (:durative-action do-step11
    :duration (= ?duration 600)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done)))
  )

  (:durative-action do-step12
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step12)) (at start (s2_done)) (at start (s10_done)) (at start (s17_done)) (at start (s1_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done)))
  )

  (:durative-action do-step13
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done)))
  )

  (:durative-action do-step14
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step14)) (at start (s13_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done)))
  )

  (:durative-action do-step15
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step15)) (at start (s30_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done)))
  )

  (:durative-action do-step16
    :duration (= ?duration 300)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done)))
  )

  (:durative-action do-step17
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step17)) (at start (s1_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done)))
  )

  (:durative-action do-step18
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step18)) (at start (s7_done)) (at start (s25_done)) (at start (s3_done)) (at start (s5_done)) (at start (s6_done)) (at start (s23_done)) (at start (s27_done)) (at start (s24_done)) (at start (s15_done)) (at start (s30_done)) (at start (s11_done)) (at start (s17_done)) (at start (s10_done)) (at start (s2_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done)))
  )

  (:durative-action do-step19
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step19)) (at start (s18_done)) (at start (s25_done)) (at start (s16_done)) (at start (s7_done)) (at start (s3_done)) (at start (s5_done)) (at start (s6_done)) (at start (s23_done)) (at start (s27_done)) (at start (s24_done)) (at start (s15_done)) (at start (s30_done)) (at start (s11_done)) (at start (s17_done)) (at start (s10_done)) (at start (s2_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done)))
  )

  (:durative-action do-step20
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step20)) (at start (s11_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done)))
  )

  (:durative-action do-step21
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step21)) (at start (s13_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done)))
  )

  (:durative-action do-step22
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step22)) (at start (s24_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done)))
  )

  (:durative-action do-step23
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step23)) (at start (s8_done)) (at start (s26_done)) (at start (s3_done)) (at start (s15_done)) (at start (s24_done)) (at start (s30_done)) (at start (s17_done)) (at start (s10_done)) (at start (s2_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done)))
  )

  (:durative-action do-step24
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (s30_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done)))
  )

  (:durative-action do-step25
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (s9_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done)))
  )

  (:durative-action do-step26
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step26)) (at start (s3_done)) (at start (s15_done)) (at start (s24_done)) (at start (s30_done)) (at start (s17_done)) (at start (s10_done)) (at start (s2_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done)))
  )

  (:durative-action do-step27
    :duration (= ?duration 60)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done)))
  )

  (:durative-action do-step28
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step28)) (at start (s8_done)) (at start (s22_done)) (at start (s24_done)) (at start (s3_done)) (at start (s15_done)) (at start (s30_done)) (at start (s17_done)) (at start (s10_done)) (at start (s2_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done)))
  )

  (:durative-action do-step29
    :duration (= ?duration 900)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done)))
  )

  (:durative-action do-step30
    :duration (= ?duration 900)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done)))
  )
)
