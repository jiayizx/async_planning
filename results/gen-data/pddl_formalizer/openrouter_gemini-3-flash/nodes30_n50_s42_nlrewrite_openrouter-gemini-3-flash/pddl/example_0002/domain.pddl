(define (domain chocolate_purchase)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (step6_done)
    (step7_done)
    (step8_done)
    (step9_done)
    (step10_done)
    (step11_done)
    (step12_done)
    (step13_done)
    (step14_done)
    (step15_done)
    (step16_done)
    (step17_done)
    (step18_done)
    (step19_done)
    (step20_done)
    (step21_done)
    (step22_done)
    (step23_done)
    (step24_done)
    (step25_done)
    (step26_done)
    (step27_done)
    (step28_done)
    (step29_done)
    (step30_done)
  )

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step1_done)))
  )

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (step16_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step2_done)))
  )

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step3_done)))
  )

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step4_done)))
  )

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step5_done)))
  )

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step16_done)) (at start (step26_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step6_done)))
  )

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step21_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step7_done)))
  )

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step21_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step8_done)))
  )

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step21_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step9_done)))
  )

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step5_done)) (at start (step15_done)) (at start (step18_done)) (at start (step19_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step10_done)))
  )

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step6_done)) (at start (step8_done)) (at start (step16_done)) (at start (step21_done)) (at start (step26_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step11_done)))
  )

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (step19_done)) (at start (step27_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step12_done)))
  )

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step13_done)))
  )

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step5_done)) (at start (step23_done)) (at start (step1_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step14_done)))
  )

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (step19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step15_done)))
  )

  (:durative-action step16
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step16_done)))
  )

  (:durative-action step17
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step3_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step17_done)))
  )

  (:durative-action step18
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (step15_done)) (at start (step19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step18_done)))
  )

  (:durative-action step19
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step19_done)))
  )

  (:durative-action step20
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)) (at start (step15_done)) (at start (step19_done)) (at start (step27_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step20_done)))
  )

  (:durative-action step21
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step21_done)))
  )

  (:durative-action step22
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step22_done)))
  )

  (:durative-action step23
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step23_done)))
  )

  (:durative-action step24
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step16_done)) (at start (step19_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step24_done)))
  )

  (:durative-action step25
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step5_done)) (at start (step15_done)) (at start (step18_done)) (at start (step19_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step25_done)))
  )

  (:durative-action step26
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step16_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step26_done)))
  )

  (:durative-action step27
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step27_done)))
  )

  (:durative-action step28
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step28_done)))
  )

  (:durative-action step29
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step16_done)) (at start (step25_done)) (at start (step10_done)) (at start (step5_done)) (at start (step15_done)) (at start (step18_done)) (at start (step19_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step29_done)))
  )

  (:durative-action step30
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step15_done)) (at start (step19_done)) (at start (step29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step30_done)))
  )
)