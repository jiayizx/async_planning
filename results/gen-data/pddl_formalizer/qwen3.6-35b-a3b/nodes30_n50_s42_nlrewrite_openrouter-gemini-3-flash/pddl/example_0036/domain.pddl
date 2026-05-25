(define (domain clean_boots)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done))
  
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done))))
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step2) (s9_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done))))
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step3) (s23_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done))))
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step4) (s27_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done))))
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done))))
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 720)
    :condition (at start (and (step_pending step6) (s8_done) (s17_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done))))
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done))))
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step8) (s22_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done))))
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 360)
    :condition (at start (and (step_pending step9) (s28_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done))))
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (and (step_pending step10) (s22_done) (s24_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done))))
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step11) (s1_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done))))
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step12) (s7_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done))))
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step13) (s16_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done))))
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step14) (s3_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done))))
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step15) (s30_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done))))
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step16) (s6_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done))))
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 420)
    :condition (at start (and (step_pending step17) (s27_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done))))
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step18) (s8_done) (s25_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done))))
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step19) (s7_done) (s24_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done))))
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done))))
  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending step21) (s24_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done))))
  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step22) (s7_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done))))
  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step23) (s20_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done))))
  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 360)
    :condition (at start (and (step_pending step24) (s29_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done))))
  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (and (step_pending step25) (s9_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done))))
  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step26) (s18_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done))))
  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done))))
  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 720)
    :condition (at start (and (step_pending step28) (s20_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done))))
  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step29) (s1_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done))))
  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step30) (s5_done) (s26_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done))))
)