(define (domain cite_annual_report)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done) (step2_done) (step3_done) (step4_done)
    (step5_done) (step6_done) (step7_done) (step8_done)
    (step9_done) (step10_done) (step11_done) (step12_done)
    (step13_done) (step14_done) (step15_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_done)))
  )

  (:durative-action do_step2
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step2))
                    (at start (step5_done)) (at start (step6_done))
                    (at start (step7_done)) (at start (step8_done))
                    (at start (step11_done)) (at start (step12_done))
                    (at start (step13_done)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_done)))
  )

  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (step1_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_done)))
  )

  (:durative-action do_step4
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (step2_done))
                    (at start (step5_done)) (at start (step6_done))
                    (at start (step7_done)) (at start (step8_done))
                    (at start (step11_done)) (at start (step12_done))
                    (at start (step13_done)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_done)))
  )

  (:durative-action do_step5
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step5)) (at start (step13_done)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_done)))
  )

  (:durative-action do_step6
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (step5_done)) (at start (step13_done)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_done)))
  )

  (:durative-action do_step7
    :duration (= ?duration 600)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_done)))
  )

  (:durative-action do_step8
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step8)) (at start (step5_done)) (at start (step6_done))
                    (at start (step7_done)) (at start (step12_done)) (at start (step13_done))
                    (at start (step15_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_done)))
  )

  (:durative-action do_step9
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step9)) (at start (step5_done)) (at start (step6_done))
                    (at start (step13_done)) (at start (step14_done)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_done)))
  )

  (:durative-action do_step10
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (step5_done)) (at start (step6_done))
                     (at start (step13_done)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_done)))
  )

  (:durative-action do_step11
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step11)) (at start (step5_done)) (at start (step6_done))
                     (at start (step13_done)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_done)))
  )

  (:durative-action do_step12
    :duration (= ?duration 20)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_done)))
  )

  (:durative-action do_step13
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step13)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_done)))
  )

  (:durative-action do_step14
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (step5_done)) (at start (step6_done))
                     (at start (step13_done)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_done)))
  )

  (:durative-action do_step15
    :duration (= ?duration 90)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_done)))
  )
)