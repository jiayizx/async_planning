(define (domain garden_winter_prep)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
    (step11_pending) (step11_done)
    (step12_pending) (step12_done)
    (step13_pending) (step13_done)
    (step14_pending) (step14_done)
    (step15_pending) (step15_done)
    (step16_pending) (step16_done)
    (step17_pending) (step17_done)
    (step18_pending) (step18_done)
    (step19_pending) (step19_done)
    (step20_pending) (step20_done)
    (step21_pending) (step21_done)
    (step22_pending) (step22_done)
    (step23_pending) (step23_done)
    (step24_pending) (step24_done)
    (step25_pending) (step25_done)
    (step26_pending) (step26_done)
    (step27_pending) (step27_done)
    (step28_pending) (step28_done)
    (step29_pending) (step29_done)
    (step30_pending) (step30_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step2_pending)) (at start (step22_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step3_pending)) (at start (step1_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step4_pending)) (at start (step9_done)) (at start (step13_done)) (at start (step23_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step5_pending)) (at start (step14_done)) (at start (step25_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step6_pending)) (at start (step13_done)) (at start (step23_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step7_pending)) (at start (step1_done)) (at start (step9_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step8_pending)) (at start (step1_done)) (at start (step9_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step9_pending)) (at start (step11_done)) (at start (step13_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step10_pending)) (at start (step8_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step11_pending)) (at start (step29_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step12_pending)) (at start (step2_done)) (at start (step20_done)) (at start (step26_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step13_pending)) (at start (step11_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step14_pending)) (at start (step1_done)) (at start (step3_done)) (at start (step6_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step15_pending)) (at start (step6_done)) (at start (step13_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step16_pending)) (at start (step24_done)) (at start (step30_done)))
    :effect (and (at start (not (step16_pending))) (at end (step16_done)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step17_pending))
    :effect (and (at start (not (step17_pending))) (at end (step17_done)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step18_pending)) (at start (step3_done)))
    :effect (and (at start (not (step18_pending))) (at end (step18_done)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step19_pending)) (at start (step21_done)) (at start (step28_done)))
    :effect (and (at start (not (step19_pending))) (at end (step19_done)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step20_pending)) (at start (step1_done)))
    :effect (and (at start (not (step20_pending))) (at end (step20_done)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step21_pending)) (at start (step27_done)))
    :effect (and (at start (not (step21_pending))) (at end (step21_done)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step22_pending))
    :effect (and (at start (not (step22_pending))) (at end (step22_done)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step23_pending))
    :effect (and (at start (not (step23_pending))) (at end (step23_done)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step24_pending)) (at start (step18_done)))
    :effect (and (at start (not (step24_pending))) (at end (step24_done)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step25_pending)) (at start (step2_done)) (at start (step17_done)))
    :effect (and (at start (not (step25_pending))) (at end (step25_done)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step26_pending)) (at start (step1_done)) (at start (step11_done)))
    :effect (and (at start (not (step26_pending))) (at end (step26_done)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step27_pending))
    :effect (and (at start (not (step27_pending))) (at end (step27_done)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step28_pending)) (at start (step2_done)) (at start (step23_done)))
    :effect (and (at start (not (step28_pending))) (at end (step28_done)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step29_pending)) (at start (step23_done)))
    :effect (and (at start (not (step29_pending))) (at end (step29_done)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step30_pending)) (at start (step11_done)) (at start (step28_done)) (at start (step22_done)))
    :effect (and (at start (not (step30_pending))) (at end (step30_done)))
  )
)
