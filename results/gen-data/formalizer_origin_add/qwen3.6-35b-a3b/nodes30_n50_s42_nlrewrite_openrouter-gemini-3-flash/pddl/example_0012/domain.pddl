(define (domain cg_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done))
  (:durative-action step1
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step1) (s4_done) (s14_done) (s23_done) (s29_done)))
    :effect (and (at start (not (step_pending step1))) (at end (and (step_done step1) (s1_done))))
  (:durative-action step2
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step2) (s21_done)))
    :effect (and (at start (not (step_pending step2))) (at end (and (step_done step2) (s2_done))))
  (:durative-action step3
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step3) (s15_done)))
    :effect (and (at start (not (step_pending step3))) (at end (and (step_done step3) (s3_done))))
  (:durative-action step4
    :duration (= ?duration 1800)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (and (step_done step4) (s4_done))))
  (:durative-action step5
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step5) (s20_done)))
    :effect (and (at start (not (step_pending step5))) (at end (and (step_done step5) (s5_done))))
  (:durative-action step6
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step6) (s19_done) (s20_done)))
    :effect (and (at start (not (step_pending step6))) (at end (and (step_done step6) (s6_done))))
  (:durative-action step7
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step7) (s18_done)))
    :effect (and (at start (not (step_pending step7))) (at end (and (step_done step7) (s7_done))))
  (:durative-action step8
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step8) (s30_done)))
    :effect (and (at start (not (step_pending step8))) (at end (and (step_done step8) (s8_done))))
  (:durative-action step9
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step9) (s10_done) (s15_done)))
    :effect (and (at start (not (step_pending step9))) (at end (and (step_done step9) (s9_done))))
  (:durative-action step10
    :duration (= ?duration 2400)
    :condition (at start (and (step_pending step10) (s5_done) (s16_done)))
    :effect (and (at start (not (step_pending step10))) (at end (and (step_done step10) (s10_done))))
  (:durative-action step11
    :duration (= ?duration 1500)
    :condition (at start (and (step_pending step11) (s17_done)))
    :effect (and (at start (not (step_pending step11))) (at end (and (step_done step11) (s11_done))))
  (:durative-action step12
    :duration (= ?duration 3000)
    :condition (at start (and (step_pending step12) (s18_done) (s21_done)))
    :effect (and (at start (not (step_pending step12))) (at end (and (step_done step12) (s12_done))))
  (:durative-action step13
    :duration (= ?duration 2100)
    :condition (at start (and (step_pending step13) (s23_done)))
    :effect (and (at start (not (step_pending step13))) (at end (and (step_done step13) (s13_done))))
  (:durative-action step14
    :duration (= ?duration 900)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (and (step_done step14) (s14_done))))
  (:durative-action step15
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step15) (s8_done) (s16_done)))
    :effect (and (at start (not (step_pending step15))) (at end (and (step_done step15) (s15_done))))
  (:durative-action step16
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step16) (s22_done)))
    :effect (and (at start (not (step_pending step16))) (at end (and (step_done step16) (s16_done))))
  (:durative-action step17
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step17) (s3_done)))
    :effect (and (at start (not (step_pending step17))) (at end (and (step_done step17) (s17_done))))
  (:durative-action step18
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step18) (s11_done)))
    :effect (and (at start (not (step_pending step18))) (at end (and (step_done step18) (s18_done))))
  (:durative-action step19
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step19) (s12_done)))
    :effect (and (at start (not (step_pending step19))) (at end (and (step_done step19) (s19_done))))
  (:durative-action step20
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step20) (s13_done) (s15_done)))
    :effect (and (at start (not (step_pending step20))) (at end (and (step_done step20) (s20_done))))
  (:durative-action step21
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step21) (s23_done)))
    :effect (and (at start (not (step_pending step21))) (at end (and (step_done step21) (s21_done))))
  (:durative-action step22
    :duration (= ?duration 10800)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (and (step_done step22) (s22_done))))
  (:durative-action step23
    :duration (= ?duration 600)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (and (step_done step23) (s23_done))))
  (:durative-action step24
    :duration (= ?duration 300)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (and (step_done step24) (s24_done))))
  (:durative-action step25
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step25) (s10_done) (s20_done) (s28_done)))
    :effect (and (at start (not (step_pending step25))) (at end (and (step_done step25) (s25_done))))
  (:durative-action step26
    :duration (= ?duration 1500)
    :condition (at start (and (step_pending step26) (s6_done) (s24_done)))
    :effect (and (at start (not (step_pending step26))) (at end (and (step_done step26) (s26_done))))
  (:durative-action step27
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step27) (s4_done) (s16_done)))
    :effect (and (at start (not (step_pending step27))) (at end (and (step_done step27) (s27_done))))
  (:durative-action step28
    :duration (= ?duration 120)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (and (step_done step28) (s28_done))))
  (:durative-action step29
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step29) (s10_done)))
    :effect (and (at start (not (step_pending step29))) (at end (and (step_done step29) (s29_done))))
  (:durative-action step30
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step30) (s16_done)))
    :effect (and (at start (not (step_pending step30))) (at end (and (step_done step30) (s30_done))))
)