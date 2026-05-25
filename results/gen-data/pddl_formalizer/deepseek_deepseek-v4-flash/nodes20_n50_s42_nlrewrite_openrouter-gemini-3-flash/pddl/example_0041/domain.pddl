(define (domain invite_to_party)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (result ?s - step)
  )
  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (result step16)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (result step1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step2)) (at start (result step6)) (at start (result step7)) (at start (result step17)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (result step2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step3)) (at start (result step1)) (at start (result step7)) (at start (result step8)) (at start (result step14)) (at start (result step16)) (at start (result step17)) (at start (result step20)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (result step3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (result step1)) (at start (result step16)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (result step4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 2700)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (result step5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step6)) (at start (result step7)) (at start (result step17)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (result step6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 3600)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (result step7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step8)) (at start (result step7)) (at start (result step17)) (at start (result step20)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (result step8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (result step1)) (at start (result step4)) (at start (result step16)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (result step9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step10)) (at start (result step5)) (at start (result step16)) (at start (result step19)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (result step10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step11)) (at start (result step1)) (at start (result step7)) (at start (result step16)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (result step11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step12)) (at start (result step14)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (result step12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step13)) (at start (result step1)) (at start (result step3)) (at start (result step7)) (at start (result step8)) (at start (result step14)) (at start (result step16)) (at start (result step17)) (at start (result step20)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (result step13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 10800)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (result step14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step15)) (at start (result step7)) (at start (result step17)) (at start (result step20)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (result step15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 86400)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (result step16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step17)) (at start (result step7)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (result step17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (result step1)) (at start (result step3)) (at start (result step6)) (at start (result step7)) (at start (result step8)) (at start (result step11)) (at start (result step14)) (at start (result step16)) (at start (result step17)) (at start (result step20)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (result step18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step19)) (at start (result step5)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (result step19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step20)) (at start (result step7)) (at start (result step17)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (result step20)))
  )
)