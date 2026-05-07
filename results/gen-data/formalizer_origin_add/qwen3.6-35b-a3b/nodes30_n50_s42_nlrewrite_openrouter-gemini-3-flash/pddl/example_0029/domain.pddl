(define (domain garden_winter_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
               (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
               (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done))
  (:durative-action step1
    :duration 10800
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done))))
  (:durative-action step2
    :duration 1800
    :condition (and (at start (step_pending step2)) (at start (s22_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done))))
  (:durative-action step3
    :duration 7200
    :condition (and (at start (step_pending step3)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done))))
  (:durative-action step4
    :duration 14400
    :condition (and (at start (step_pending step4)) (at start (s9_done)) (at start (s13_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done))))
  (:durative-action step5
    :duration 1200
    :condition (and (at start (step_pending step5)) (at start (s14_done)) (at start (s25_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done))))
  (:durative-action step6
    :duration 7200
    :condition (and (at start (step_pending step6)) (at start (s13_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done))))
  (:durative-action step7
    :duration 3600
    :condition (and (at start (step_pending step7)) (at start (s1_done)) (at start (s9_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done))))
  (:durative-action step8
    :duration 7200
    :condition (and (at start (step_pending step8)) (at start (s1_done)) (at start (s9_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done))))
  (:durative-action step9
    :duration 5400
    :condition (and (at start (step_pending step9)) (at start (s11_done)) (at start (s13_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done))))
  (:durative-action step10
    :duration 2700
    :condition (and (at start (step_pending step10)) (at start (s8_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done))))
  (:durative-action step11
    :duration 10800
    :condition (and (at start (step_pending step11)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done))))
  (:durative-action step12
    :duration 600
    :condition (and (at start (step_pending step12)) (at start (s2_done)) (at start (s20_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done))))
  (:durative-action step13
    :duration 3600
    :condition (and (at start (step_pending step13)) (at start (s11_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done))))
  (:durative-action step14
    :duration 14400
    :condition (and (at start (step_pending step14)) (at start (s1_done)) (at start (s3_done)) (at start (s6_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done))))
  (:durative-action step15
    :duration 7200
    :condition (and (at start (step_pending step15)) (at start (s6_done)) (at start (s13_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done))))
  (:durative-action step16
    :duration 300
    :condition (and (at start (step_pending step16)) (at start (s24_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done))))
  (:durative-action step17
    :duration 3600
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done))))
  (:durative-action step18
    :duration 3600
    :condition (and (at start (step_pending step18)) (at start (s3_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done))))
  (:durative-action step19
    :duration 7200
    :condition (and (at start (step_pending step19)) (at start (s21_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done))))
  (:durative-action step20
    :duration 2700
    :condition (and (at start (step_pending step20)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done))))
  (:durative-action step21
    :duration 3600
    :condition (and (at start (step_pending step21)) (at start (s27_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done))))
  (:durative-action step22
    :duration 1800
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done))))
  (:durative-action step23
    :duration 7200
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done))))
  (:durative-action step24
    :duration 1800
    :condition (and (at start (step_pending step24)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done))))
  (:durative-action step25
    :duration 2700
    :condition (and (at start (step_pending step25)) (at start (s2_done)) (at start (s17_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done))))
  (:durative-action step26
    :duration 7200
    :condition (and (at start (step_pending step26)) (at start (s1_done)) (at start (s11_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done))))
  (:durative-action step27
    :duration 7200
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done))))
  (:durative-action step28
    :duration 900
    :condition (and (at start (step_pending step28)) (at start (s2_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done))))
  (:durative-action step29
    :duration 7200
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done))))
  (:durative-action step30
    :duration 3600
    :condition (and (at start (step_pending step30)) (at start (s11_done)) (at start (s22_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done))))
)