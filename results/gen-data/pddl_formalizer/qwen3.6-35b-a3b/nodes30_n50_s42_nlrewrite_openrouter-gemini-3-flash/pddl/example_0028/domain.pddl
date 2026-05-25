(define (domain pug_grooming)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done))

  (:durative-action do_step1
    :duration 300
    :condition (and (at start (step_pending step1)) (at start (s11_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done))))

  (:durative-action do_step2
    :duration 600
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done))))

  (:durative-action do_step3
    :duration 300
    :condition (and (at start (step_pending step3)) (at start (s15_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done))))

  (:durative-action do_step4
    :duration 600
    :condition (and (at start (step_pending step4)) (at start (s23_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done))))

  (:durative-action do_step5
    :duration 900
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done))))

  (:durative-action do_step6
    :duration 900
    :condition (and (at start (step_pending step6)) (at start (s7_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done))))

  (:durative-action do_step7
    :duration 300
    :condition (and (at start (step_pending step7)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done))))

  (:durative-action do_step8
    :duration 120
    :condition (and (at start (step_pending step8)) (at start (s27_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done))))

  (:durative-action do_step9
    :duration 300
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done))))

  (:durative-action do_step10
    :duration 600
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done))))

  (:durative-action do_step11
    :duration 120
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done))))

  (:durative-action do_step12
    :duration 600
    :condition (and (at start (step_pending step12)) (at start (s27_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done))))

  (:durative-action do_step13
    :duration 600
    :condition (and (at start (step_pending step13)) (at start (s6_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done))))

  (:durative-action do_step14
    :duration 900
    :condition (and (at start (step_pending step14)) (at start (s10_done)) (at start (s11_done)) (at start (s18_done)) (at start (s24_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done))))

  (:durative-action do_step15
    :duration 480
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done))))

  (:durative-action do_step16
    :duration 1500
    :condition (and (at start (step_pending step16)) (at start (s12_done)) (at start (s14_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done))))

  (:durative-action do_step17
    :duration 600
    :condition (and (at start (step_pending step17)) (at start (s27_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done))))

  (:durative-action do_step18
    :duration 1200
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done))))

  (:durative-action do_step19
    :duration 60
    :condition (and (at start (step_pending step19)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done))))

  (:durative-action do_step20
    :duration 300
    :condition (and (at start (step_pending step20)) (at start (s6_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done))))

  (:durative-action do_step21
    :duration 600
    :condition (and (at start (step_pending step21)) (at start (s3_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done))))

  (:durative-action do_step22
    :duration 120
    :condition (and (at start (step_pending step22)) (at start (s5_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done))))

  (:durative-action do_step23
    :duration 120
    :condition (and (at start (step_pending step23)) (at start (s24_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done))))

  (:durative-action do_step24
    :duration 120
    :condition (and (at start (step_pending step24)) (at start (s15_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done))))

  (:durative-action do_step25
    :duration 480
    :condition (and (at start (step_pending step25)) (at start (s2_done)) (at start (s9_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done))))

  (:durative-action do_step26
    :duration 60
    :condition (and (at start (step_pending step26)) (at start (s3_done)) (at start (s17_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done))))

  (:durative-action do_step27
    :duration 300
    :condition (and (at start (step_pending step27)) (at start (s11_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done))))

  (:durative-action do_step28
    :duration 600
    :condition (and (at start (step_pending step28)) (at start (s15_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done))))

  (:durative-action do_step29
    :duration 300
    :condition (and (at start (step_pending step29)) (at start (s13_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done))))

  (:durative-action do_step30
    :duration 180
    :condition (and (at start (step_pending step30)) (at start (s10_done)) (at start (s27_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done))))
)