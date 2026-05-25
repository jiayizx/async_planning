(define (domain get_dog)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1_done)
    (p2_done)
    (p3_done)
    (p4_done)
    (p5_done)
    (p6_done)
    (p7_done)
    (p8_done)
    (p9_done)
    (p10_done)
    (p11_done)
    (p12_done)
    (p13_done)
    (p14_done)
    (p15_done)
    (p16_done)
    (p17_done)
    (p18_done)
    (p19_done)
    (p20_done)
    (p21_done)
    (p22_done)
    (p23_done)
    (p24_done)
    (p25_done)
    (p26_done)
    (p27_done)
    (p28_done)
    (p29_done)
    (p30_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 14400)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (p1_done)))
  )

  (:durative-action do_step2
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (p2_done)))
  )

  (:durative-action do_step3
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step3)) (at start (p1_done)) (at start (p28_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (p3_done)))
  )

  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (p16_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (p4_done)))
  )

  (:durative-action do_step5
    :duration (= ?duration 10800)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (p5_done)))
  )

  (:durative-action do_step6
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step6)) (at start (p9_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (p6_done)))
  )

  (:durative-action do_step7
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (p5_done)) (at start (p20_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (p7_done)))
  )

  (:durative-action do_step8
    :duration (= ?duration 2700)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (p8_done)))
  )

  (:durative-action do_step9
    :duration (= ?duration 900)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (p9_done)))
  )

  (:durative-action do_step10
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step10)) (at start (p4_done)) (at start (p17_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (p10_done)))
  )

  (:durative-action do_step11
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step11)) (at start (p22_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (p11_done)))
  )

  (:durative-action do_step12
    :duration (= ?duration 1800)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (p12_done)))
  )

  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (p13_done)))
  )

  (:durative-action do_step14
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step14)) (at start (p5_done)) (at start (p21_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (p14_done)))
  )

  (:durative-action do_step15
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step15)) (at start (p8_done)) (at start (p10_done)) (at start (p12_done)) (at start (p13_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (p15_done)))
  )

  (:durative-action do_step16
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step16)) (at start (p5_done)) (at start (p17_done)) (at start (p28_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (p16_done)))
  )

  (:durative-action do_step17
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step17)) (at start (p3_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (p17_done)))
  )

  (:durative-action do_step18
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step18)) (at start (p9_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (p18_done)))
  )

  (:durative-action do_step19
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step19)) (at start (p11_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (p19_done)))
  )

  (:durative-action do_step20
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step20)) (at start (p8_done)) (at start (p12_done)) (at start (p18_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (p20_done)))
  )

  (:durative-action do_step21
    :duration (= ?duration 3600)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (p21_done)))
  )

  (:durative-action do_step22
    :duration (= ?duration 1800)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (p22_done)))
  )

  (:durative-action do_step23
    :duration (= ?duration 7200)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (p23_done)))
  )

  (:durative-action do_step24
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (p2_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (p24_done)))
  )

  (:durative-action do_step25
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step25)) (at start (p5_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (p25_done)))
  )

  (:durative-action do_step26
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step26)) (at start (p2_done)) (at start (p12_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (p26_done)))
  )

  (:durative-action do_step27
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step27)) (at start (p19_done)) (at start (p29_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (p27_done)))
  )

  (:durative-action do_step28
    :duration (= ?duration 7200)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (p28_done)))
  )

  (:durative-action do_step29
    :duration (= ?duration 600)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (p29_done)))
  )

  (:durative-action do_step30
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step30)) (at start (p27_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (p30_done)))
  )
)
