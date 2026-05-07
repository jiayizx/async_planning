(define (domain clean_boots)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done)
    (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done)
    (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
  )
  ;; Step 1
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_done))))
  ;; Step 2
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (step9_done)) (at start (step20_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_done))))
  ;; Step 3
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (step20_done)) (at start (step23_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_done))))
  ;; Step 4
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step4)) (at start (step27_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_done))))
  ;; Step 5
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_done))))
  ;; Step 6
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step6)) (at start (step7_done)) (at start (step8_done)) (at start (step17_done)) (at start (step22_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_done))))
  ;; Step 7
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_done))))
  ;; Step 8
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step8)) (at start (step7_done)) (at start (step22_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_done))))
  ;; Step 9
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step9)) (at start (step20_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_done))))
  ;; Step 10
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step10)) (at start (step1_done)) (at start (step7_done)) (at start (step22_done)) (at start (step24_done)) (at start (step29_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_done))))
  ;; Step 11
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step11)) (at start (step1_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_done))))
  ;; Step 12
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step12)) (at start (step7_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_done))))
  ;; Step 13
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step13)) (at start (step6_done)) (at start (step7_done)) (at start (step8_done)) (at start (step16_done)) (at start (step17_done)) (at start (step22_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_done))))
  ;; Step 14
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (step3_done)) (at start (step20_done)) (at start (step23_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_done))))
  ;; Step 15
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step15)) (at start (step5_done)) (at start (step7_done)) (at start (step8_done)) (at start (step9_done)) (at start (step18_done)) (at start (step20_done)) (at start (step22_done)) (at start (step25_done)) (at start (step26_done)) (at start (step28_done)) (at start (step30_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_done))))
  ;; Step 16
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step16)) (at start (step6_done)) (at start (step7_done)) (at start (step8_done)) (at start (step17_done)) (at start (step22_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_done))))
  ;; Step 17
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step17)) (at start (step27_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_done))))
  ;; Step 18
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step18)) (at start (step7_done)) (at start (step8_done)) (at start (step9_done)) (at start (step20_done)) (at start (step22_done)) (at start (step25_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_done))))
  ;; Step 19
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step19)) (at start (step1_done)) (at start (step7_done)) (at start (step24_done)) (at start (step29_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_done))))
  ;; Step 20
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_done))))
  ;; Step 21
  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step21)) (at start (step1_done)) (at start (step24_done)) (at start (step29_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_done))))
  ;; Step 22
  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step22)) (at start (step7_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_done))))
  ;; Step 23
  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step23)) (at start (step20_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_done))))
  ;; Step 24
  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step24)) (at start (step1_done)) (at start (step29_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_done))))
  ;; Step 25
  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step25)) (at start (step9_done)) (at start (step20_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_done))))
  ;; Step 26
  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step26)) (at start (step7_done)) (at start (step8_done)) (at start (step9_done)) (at start (step18_done)) (at start (step20_done)) (at start (step22_done)) (at start (step25_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_done))))
  ;; Step 27
  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_done))))
  ;; Step 28
  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step28)) (at start (step20_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_done))))
  ;; Step 29
  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step29)) (at start (step1_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_done))))
  ;; Step 30
  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step30)) (at start (step5_done)) (at start (step7_done)) (at start (step8_done)) (at start (step9_done)) (at start (step18_done)) (at start (step20_done)) (at start (step22_done)) (at start (step25_done)) (at start (step26_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_done))))
)