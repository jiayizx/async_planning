(define (domain chicken-curry)
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
  )

  (:durative-action do-step1
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1)) (at start (s14_ok)) (at start (s3_ok)) (at start (s10_ok)) (at start (s8_ok)) (at start (s20_ok)) (at start (s11_ok)) (at start (s15_ok)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_ok)))
  )

  (:durative-action do-step2
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (s7_ok)) (at start (s11_ok)) (at start (s15_ok)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_ok)))
  )

  (:durative-action do-step3
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_ok)))
  )

  (:durative-action do-step4
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step4)) (at start (s8_ok)) (at start (s9_ok)) (at start (s16_ok)) (at start (s11_ok)) (at start (s15_ok)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_ok)))
  )

  (:durative-action do-step5
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step5)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_ok)))
  )

  (:durative-action do-step6
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step6)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_ok)))
  )

  (:durative-action do-step7
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (s11_ok)) (at start (s15_ok)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_ok)))
  )

  (:durative-action do-step8
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step8)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_ok)))
  )

  (:durative-action do-step9
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step9)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_ok)))
  )

  (:durative-action do-step10
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step10)) (at start (s20_ok)) (at start (s8_ok)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_ok)))
  )

  (:durative-action do-step11
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step11)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_ok)))
  )

  (:durative-action do-step12
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step12)) (at start (s6_ok)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_ok)))
  )

  (:durative-action do-step13
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (s17_ok)) (at start (s19_ok)) (at start (s1_ok)) (at start (s5_ok)) (at start (s14_ok)) (at start (s3_ok)) (at start (s10_ok)) (at start (s8_ok)) (at start (s20_ok)) (at start (s12_ok)) (at start (s6_ok)) (at start (s11_ok)) (at start (s15_ok)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_ok)))
  )

  (:durative-action do-step14
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (s3_ok)) (at start (s10_ok)) (at start (s8_ok)) (at start (s20_ok)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_ok)))
  )

  (:durative-action do-step15
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step15)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_ok)))
  )

  (:durative-action do-step16
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step16)) (at start (s15_ok)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_ok)))
  )

  (:durative-action do-step17
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step17)) (at start (s1_ok)) (at start (s5_ok)) (at start (s14_ok)) (at start (s3_ok)) (at start (s10_ok)) (at start (s8_ok)) (at start (s20_ok)) (at start (s11_ok)) (at start (s15_ok)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_ok)))
  )

  (:durative-action do-step18
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step18)) (at start (s9_ok)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_ok)))
  )

  (:durative-action do-step19
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step19)) (at start (s12_ok)) (at start (s6_ok)) (at start (s20_ok)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_ok)))
  )

  (:durative-action do-step20
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step20)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_ok)))
  )
)
