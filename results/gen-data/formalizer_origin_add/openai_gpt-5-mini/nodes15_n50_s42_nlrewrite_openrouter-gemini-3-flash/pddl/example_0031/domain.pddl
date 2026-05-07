(define (domain healthy-breakfast)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (step1_complete)
    (step2_complete)
    (step3_complete)
    (step4_complete)
    (step5_complete)
    (step6_complete)
    (step7_complete)
    (step8_complete)
    (step9_complete)
    (step10_complete)
    (step11_complete)
    (step12_complete)
    (step13_complete)
    (step14_complete)
    (step15_complete)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_complete))) )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 28800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_complete))) )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (step1_complete)) (at start (step5_complete)) (at start (step14_complete)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_complete))) )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (step1_complete)) (at start (step3_complete)) (at start (step5_complete)) (at start (step14_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_complete))) )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step5)) (at start (step1_complete)) (at start (step14_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_complete))) )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step6)) (at start (step2_complete)) (at start (step8_complete)) (at start (step13_complete)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_complete))) )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step7)) (at start (step1_complete)) (at start (step3_complete)) (at start (step4_complete)) (at start (step5_complete)) (at start (step10_complete)) (at start (step14_complete)) (at start (step15_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_complete))) )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (step2_complete)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_complete))) )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (step1_complete)) (at start (step3_complete)) (at start (step4_complete)) (at start (step5_complete)) (at start (step7_complete)) (at start (step10_complete)) (at start (step14_complete)) (at start (step15_complete)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_complete))) )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step10)) (at start (step1_complete)) (at start (step3_complete)) (at start (step4_complete)) (at start (step5_complete)) (at start (step14_complete)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_complete))) )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step11)) (at start (step2_complete)) (at start (step6_complete)) (at start (step8_complete)) (at start (step13_complete)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_complete))) )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step12)) (at start (step1_complete)) (at start (step2_complete)) (at start (step5_complete)) (at start (step6_complete)) (at start (step8_complete)) (at start (step11_complete)) (at start (step13_complete)) (at start (step14_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_complete))) )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_complete))) )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step14)) (at start (step1_complete)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_complete))) )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step15)) (at start (step1_complete)) (at start (step3_complete)) (at start (step4_complete)) (at start (step5_complete)) (at start (step10_complete)) (at start (step14_complete)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_complete))) )
)
