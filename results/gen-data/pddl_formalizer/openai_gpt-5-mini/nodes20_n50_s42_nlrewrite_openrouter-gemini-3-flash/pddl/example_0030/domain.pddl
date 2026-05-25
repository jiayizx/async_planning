(define (domain study-best-club)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_completed)
    (step2_completed)
    (step3_completed)
    (step4_completed)
    (step5_completed)
    (step6_completed)
    (step7_completed)
    (step8_completed)
    (step9_completed)
    (step10_completed)
    (step11_completed)
    (step12_completed)
    (step13_completed)
    (step14_completed)
    (step15_completed)
    (step16_completed)
    (step17_completed)
    (step18_completed)
    (step19_completed)
    (step20_completed)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (step20_completed)) (at start (step5_completed)) (at start (step13_completed)) (at start (step15_completed)) (at start (step17_completed)) (at start (step16_completed)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_completed)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step2)) (at start (step9_completed)) (at start (step17_completed)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_completed)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step3)) (at start (step18_completed)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_completed)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step4)) (at start (step16_completed)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_completed)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_completed)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_completed)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_completed)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step8)) (at start (step6_completed)) (at start (step19_completed)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_completed)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_completed)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step10)) (at start (step4_completed)) (at start (step7_completed)) (at start (step16_completed)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_completed)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step11)) (at start (step1_completed)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_completed)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step12)) (at start (step13_completed)) (at start (step15_completed)) (at start (step17_completed)) (at start (step5_completed)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_completed)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step13)) (at start (step15_completed)) (at start (step17_completed)) (at start (step5_completed)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_completed)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (step8_completed)) (at start (step12_completed)) (at start (step6_completed)) (at start (step19_completed)) (at start (step13_completed)) (at start (step15_completed)) (at start (step17_completed)) (at start (step5_completed)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_completed)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step15)) (at start (step5_completed)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_completed)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_completed)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_completed)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_completed)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_completed)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step20)) (at start (step5_completed)) (at start (step13_completed)) (at start (step16_completed)) (at start (step15_completed)) (at start (step17_completed)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_completed)))
  )
)
