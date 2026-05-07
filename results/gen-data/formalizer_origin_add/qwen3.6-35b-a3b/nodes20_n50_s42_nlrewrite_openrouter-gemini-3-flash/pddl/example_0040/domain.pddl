(define (domain calculate_joules)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done)
    (step16_done) (step17_done) (step18_done) (step19_done) (step20_done))

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1)) (at start (step6_done)))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (step1_done))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (step12_done)) (at start (step16_done)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (step2_done))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (step9_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (step3_done))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (step13_done)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (step4_done))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step5)) (at start (step11_done)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (step5_done))))

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6)))
                 (at end (step_done step6))
                 (at end (step6_done))))

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (step16_done)))
    :effect (and (at start (not (step_pending step7)))
                 (at end (step_done step7))
                 (at end (step7_done))))

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step8)) (at start (step16_done)))
    :effect (and (at start (not (step_pending step8)))
                 (at end (step_done step8))
                 (at end (step8_done))))

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 360)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9)))
                 (at end (step_done step9))
                 (at end (step9_done))))

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step10)) (at start (step8_done)))
    :effect (and (at start (not (step_pending step10)))
                 (at end (step_done step10))
                 (at end (step10_done))))

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step11)) (at start (step19_done)))
    :effect (and (at start (not (step_pending step11)))
                 (at end (step_done step11))
                 (at end (step11_done))))

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12)))
                 (at end (step_done step12))
                 (at end (step12_done))))

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13)))
                 (at end (step_done step13))
                 (at end (step13_done))))

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14)))
                 (at end (step_done step14))
                 (at end (step14_done))))

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step15)) (at start (step5_done)))
    :effect (and (at start (not (step_pending step15)))
                 (at end (step_done step15))
                 (at end (step15_done))))

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16)))
                 (at end (step_done step16))
                 (at end (step16_done))))

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step17)) (at start (step14_done)))
    :effect (and (at start (not (step_pending step17)))
                 (at end (step_done step17))
                 (at end (step17_done))))

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step18)) (at start (step6_done)))
    :effect (and (at start (not (step_pending step18)))
                 (at end (step_done step18))
                 (at end (step18_done))))

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step19)) (at start (step3_done)))
    :effect (and (at start (not (step_pending step19)))
                 (at end (step_done step19))
                 (at end (step19_done))))

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step20)) (at start (step10_done)))
    :effect (and (at start (not (step_pending step20)))
                 (at end (step_done step20))
                 (at end (step20_done))))
)