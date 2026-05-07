(define (domain freelance)
  (:requirements :durative-actions :typing)
  (:types step)
  (:constants
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20 - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
  )
  (:durative-action do_step1
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step1)) (at start (step_done step4)) (at start (step_done step6)) (at start (step_done step13)) (at start (step_done step16)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 10800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 7200)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step4)) (at start (step_done step13)) (at start (step_done step16)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step5)) (at start (step_done step3)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (step_done step4)) (at start (step_done step13)) (at start (step_done step16)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 3600)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step8)) (at start (step_done step3)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step9)) (at start (step_done step12)) (at start (step_done step13)) (at start (step_done step16)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step9)) (at start (step_done step4)) (at start (step_done step12)) (at start (step_done step13)) (at start (step_done step16)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step10)) (at start (step_done step1)) (at start (step_done step4)) (at start (step_done step6)) (at start (step_done step13)) (at start (step_done step16)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 604800)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step12)) (at start (step_done step4)) (at start (step_done step13)) (at start (step_done step16)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 2700)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step14)) (at start (step_done step7)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step15)) (at start (step_done step11)) (at start (step_done step19)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step16)) (at start (step_done step13)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 3600)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step18)) (at start (step_done step2)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step19)) (at start (step_done step11)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step20)) (at start (step_done step17)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)))
  )
)
