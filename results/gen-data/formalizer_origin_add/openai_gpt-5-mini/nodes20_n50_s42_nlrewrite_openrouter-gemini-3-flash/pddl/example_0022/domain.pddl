(define (domain protect-windows)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (pending ?s - step)
    (done ?s - step)
    (s_done ?s - step)
    (protected_windows)
  )

  ;; One durative-action per step (do_step1 ... do_step20)

  (:durative-action do_step1
    :duration (= ?duration 1800)
    :condition (and (at start (pending step1)) (at start (s_done step6)) (at start (s_done step10)) (at start (s_done step5)) (at start (s_done step7)) (at start (s_done step8)) (at start (s_done step19)) (at start (s_done step14))))
    :effect (and (at start (not (pending step1))) (at end (done step1)) (at end (s_done step1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 1200)
    :condition (and (at start (pending step2)) (at start (s_done step16)) (at start (s_done step18))))
    :effect (and (at start (not (pending step2))) (at end (done step2)) (at end (s_done step2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 2700)
    :condition (and (at start (pending step3)) (at start (s_done step17)) (at start (s_done step12)) (at start (s_done step6)) (at start (s_done step10)) (at start (s_done step5)) (at start (s_done step7)) (at start (s_done step8)) (at start (s_done step19)) (at start (s_done step14))))
    :effect (and (at start (not (pending step3))) (at end (done step3)) (at end (s_done step3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (and (at start (pending step4)) (at start (s_done step18)) (at start (s_done step20)) (at start (s_done step13)) (at start (s_done step15)) (at start (s_done step3)) (at start (s_done step7)) (at start (s_done step9)) (at start (s_done step1)) (at start (s_done step6)) (at start (s_done step10)) (at start (s_done step5)) (at start (s_done step8)) (at start (s_done step19)) (at start (s_done step14)) (at start (s_done step17)) (at start (s_done step12))))
    :effect (and (at start (not (pending step4))) (at end (done step4)) (at end (s_done step4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 600)
    :condition (and (at start (pending step5)))
    :effect (and (at start (not (pending step5))) (at end (done step5)) (at end (s_done step5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 7200)
    :condition (and (at start (pending step6)) (at start (s_done step10)) (at start (s_done step5)) (at start (s_done step7)) (at start (s_done step8)) (at start (s_done step19)) (at start (s_done step14))))
    :effect (and (at start (not (pending step6))) (at end (done step6)) (at end (s_done step6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 10800)
    :condition (and (at start (pending step7)) (at start (s_done step19)) (at start (s_done step14))))
    :effect (and (at start (not (pending step7))) (at end (done step7)) (at end (s_done step7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (and (at start (pending step8)))
    :effect (and (at start (not (pending step8))) (at end (done step8)) (at end (s_done step8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 5400)
    :condition (and (at start (pending step9)) (at start (s_done step1)) (at start (s_done step8)) (at start (s_done step6)) (at start (s_done step10)) (at start (s_done step5)) (at start (s_done step7)) (at start (s_done step19)) (at start (s_done step14))))
    :effect (and (at start (not (pending step9))) (at end (done step9)) (at end (s_done step9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 900)
    :condition (and (at start (pending step10)) (at start (s_done step5)) (at start (s_done step7)) (at start (s_done step8)) (at start (s_done step19)) (at start (s_done step14))))
    :effect (and (at start (not (pending step10))) (at end (done step10)) (at end (s_done step10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 600)
    :condition (and (at start (pending step11)) (at start (s_done step9)) (at start (s_done step1)) (at start (s_done step8)) (at start (s_done step6)) (at start (s_done step10)) (at start (s_done step5)) (at start (s_done step7)) (at start (s_done step19)) (at start (s_done step14))))
    :effect (and (at start (not (pending step11))) (at end (done step11)) (at end (s_done step11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 2400)
    :condition (and (at start (pending step12)) (at start (s_done step6)) (at start (s_done step10)) (at start (s_done step5)) (at start (s_done step7)) (at start (s_done step8)) (at start (s_done step19)) (at start (s_done step14))))
    :effect (and (at start (not (pending step12))) (at end (done step12)) (at end (s_done step12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 7200)
    :condition (and (at start (pending step13)) (at start (s_done step15)) (at start (s_done step18)) (at start (s_done step3)) (at start (s_done step7)) (at start (s_done step9)) (at start (s_done step1)) (at start (s_done step6)) (at start (s_done step10)) (at start (s_done step5)) (at start (s_done step8)) (at start (s_done step19)) (at start (s_done step14)) (at start (s_done step17)) (at start (s_done step12))))
    :effect (and (at start (not (pending step13))) (at end (done step13)) (at end (s_done step13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 300)
    :condition (and (at start (pending step14)))
    :effect (and (at start (not (pending step14))) (at end (done step14)) (at end (s_done step14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 14400)
    :condition (and (at start (pending step15)) (at start (s_done step3)) (at start (s_done step7)) (at start (s_done step9)) (at start (s_done step17)) (at start (s_done step12)) (at start (s_done step6)) (at start (s_done step10)) (at start (s_done step5)) (at start (s_done step8)) (at start (s_done step1)) (at start (s_done step19)) (at start (s_done step14))))
    :effect (and (at start (not (pending step15))) (at end (done step15)) (at end (s_done step15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 900)
    :condition (and (at start (pending step16)) (at start (s_done step18)))
    :effect (and (at start (not (pending step16))) (at end (done step16)) (at end (s_done step16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 10800)
    :condition (and (at start (pending step17)) (at start (s_done step12)) (at start (s_done step6)) (at start (s_done step10)) (at start (s_done step5)) (at start (s_done step7)) (at start (s_done step8)) (at start (s_done step19)) (at start (s_done step14))))
    :effect (and (at start (not (pending step17))) (at end (done step17)) (at end (s_done step17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 1800)
    :condition (and (at start (pending step18)))
    :effect (and (at start (not (pending step18))) (at end (done step18)) (at end (s_done step18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 7200)
    :condition (and (at start (pending step19)) (at start (s_done step14)))
    :effect (and (at start (not (pending step19))) (at end (done step19)) (at end (s_done step19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 14400)
    :condition (and (at start (pending step20)) (at start (s_done step13)) (at start (s_done step15)) (at start (s_done step18)) (at start (s_done step3)) (at start (s_done step7)) (at start (s_done step9)) (at start (s_done step1)) (at start (s_done step6)) (at start (s_done step10)) (at start (s_done step5)) (at start (s_done step8)) (at start (s_done step19)) (at start (s_done step14)) (at start (s_done step17)) (at start (s_done step12)) (at start (s_done step20))))
    :effect (and (at start (not (pending step20))) (at end (done step20)) (at end (s_done step20)) (at end (protected_windows)))
  )
)
