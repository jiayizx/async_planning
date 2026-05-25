(define (domain learn_flowers)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (final_done)
  )
  (:durative-action do_step1
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step2)) (at start (step_done step9)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 7200)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 1200)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step5)) (at start (step_done step3)) (at start (step_done step12)) (at start (step_done step13)) (at start (step_done step8)) (at start (step_done step15)) (at start (step_done step14)) (at start (step_done step16)) (at start (step_done step18)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (final_done)))
  )
  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step7)) (at start (step_done step1)) (at start (step_done step3)) (at start (step_done step4)) (at start (step_done step20)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step8)) (at start (step_done step13)) (at start (step_done step12)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 600)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step10)) (at start (step_done step6)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step11)) (at start (step_done step2)) (at start (step_done step9)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 900)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step13)) (at start (step_done step12)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step14)) (at start (step_done step15)) (at start (step_done step8)) (at start (step_done step13)) (at start (step_done step12)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step15)) (at start (step_done step8)) (at start (step_done step13)) (at start (step_done step12)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step16)) (at start (step_done step18)) (at start (step_done step3)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step17)) (at start (step_done step19)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step18)) (at start (step_done step3)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 1800)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 300)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)))
  )
)
