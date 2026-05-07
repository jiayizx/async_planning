(define (domain protect_teeth)
  (:requirements :typing :durative-actions)
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
  )

  (:durative-action do_step1
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step1)) (at start (s3_done)) (at start (s17_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done))))

  (:durative-action do_step2
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step2)) (at start (s20_done)) (at start (s11_done)) (at start (s1_done)) (at start (s3_done)) (at start (s17_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done))))

  (:durative-action do_step3
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step3)) (at start (s17_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done))))

  (:durative-action do_step4
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step4)) (at start (s9_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done))))

  (:durative-action do_step5
    :duration (= ?duration 600)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done))))

  (:durative-action do_step6
    :duration (= ?duration 10800)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done))))

  (:durative-action do_step7
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (s5_done)) (at start (s14_done)) (at start (s15_done)) (at start (s8_done)) (at start (s19_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done))))

  (:durative-action do_step8
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (s15_done)) (at start (s5_done)) (at start (s7_done)) (at start (s14_done)) (at start (s18_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done))))

  (:durative-action do_step9
    :duration (= ?duration 2700)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done))))

  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (s3_done)) (at start (s17_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done))))

  (:durative-action do_step11
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step11)) (at start (s1_done)) (at start (s3_done)) (at start (s17_done)) (at start (s20_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done))))

  (:durative-action do_step12
    :duration (= ?duration 600)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done))))

  (:durative-action do_step13
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step13)) (at start (s12_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done))))

  (:durative-action do_step14
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step14)) (at start (s18_done)) (at start (s19_done)) (at start (s8_done)) (at start (s15_done)) (at start (s5_done)) (at start (s7_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done))))

  (:durative-action do_step15
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step15)) (at start (s5_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done))))

  (:durative-action do_step16
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step16)) (at start (s20_done)) (at start (s11_done)) (at start (s1_done)) (at start (s3_done)) (at start (s17_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done))))

  (:durative-action do_step17
    :duration (= ?duration 86400)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done))))

  (:durative-action do_step18
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step18)) (at start (s19_done)) (at start (s8_done)) (at start (s15_done)) (at start (s7_done)) (at start (s14_done)) (at start (s5_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done))))

  (:durative-action do_step19
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step19)) (at start (s6_done)) (at start (s8_done)) (at start (s15_done)) (at start (s7_done)) (at start (s14_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done))))

  (:durative-action do_step20
    :duration (= ?duration 1800)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done))))
)
