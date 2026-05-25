(define (domain become_more_than_friends)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step))
  (:durative-action do_step1
    :duration 172800
    :condition (and (at start (step_pending step1)) (at start (step_done step12)) (at start (step_done step14)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1))))
  (:durative-action do_step2
    :duration 10800
    :condition (and (at start (step_pending step2)) (at start (step_done step19)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2))))
  (:durative-action do_step3
    :duration 600
    :condition (and (at start (step_pending step3)) (at start (step_done step4)) (at start (step_done step6)) (at start (step_done step8)) (at start (step_done step10)) (at start (step_done step11)) (at start (step_done step12)) (at start (step_done step15)) (at start (step_done step17)) (at start (step_done step19)) (at start (step_done step20)) (at start (step_done step23)) (at start (step_done step24)) (at start (step_done step26)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step30)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3))))
  (:durative-action do_step4
    :duration 3600
    :condition (and (at start (step_pending step4)) (at start (step_done step12)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4))))
  (:durative-action do_step5
    :duration 7200
    :condition (and (at start (step_pending step5)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5))))
  (:durative-action do_step6
    :duration 1800
    :condition (and (at start (step_pending step6)) (at start (step_done step4)) (at start (step_done step12)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6))))
  (:durative-action do_step7
    :duration 3600
    :condition (and (at start (step_pending step7)) (at start (step_done step1)) (at start (step_done step9)) (at start (step_done step12)) (at start (step_done step14)) (at start (step_done step18)) (at start (step_done step21)) (at start (step_done step24)) (at start (step_done step25)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7))))
  (:durative-action do_step8
    :duration 3600
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8))))
  (:durative-action do_step9
    :duration 300
    :condition (and (at start (step_pending step9)) (at start (step_done step1)) (at start (step_done step12)) (at start (step_done step14)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9))))
  (:durative-action do_step10
    :duration 1200
    :condition (and (at start (step_pending step10)) (at start (step_done step24)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10))))
  (:durative-action do_step11
    :duration 900
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11))))
  (:durative-action do_step12
    :duration 14400
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12))))
  (:durative-action do_step13
    :duration 120
    :condition (and (at start (step_pending step13)) (at start (step_done step2)) (at start (step_done step4)) (at start (step_done step6)) (at start (step_done step12)) (at start (step_done step19)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13))))
  (:durative-action do_step14
    :duration 1800
    :condition (and (at start (step_pending step14)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14))))
  (:durative-action do_step15
    :duration 2700
    :condition (and (at start (step_pending step15)) (at start (step_done step4)) (at start (step_done step12)) (at start (step_done step30)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15))))
  (:durative-action do_step16
    :duration 900
    :condition (and (at start (step_pending step16)) (at start (step_done step10)) (at start (step_done step24)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16))))
  (:durative-action do_step17
    :duration 1200
    :condition (and (at start (step_pending step17)) (at start (step_done step8)) (at start (step_done step19)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17))))
  (:durative-action do_step18
    :duration 1800
    :condition (and (at start (step_pending step18)) (at start (step_done step24)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18))))
  (:durative-action do_step19
    :duration 3600
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19))))
  (:durative-action do_step20
    :duration 7200
    :condition (and (at start (step_pending step20)) (at start (step_done step4)) (at start (step_done step6)) (at start (step_done step8)) (at start (step_done step12)) (at start (step_done step17)) (at start (step_done step19)) (at start (step_done step28)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20))))
  (:durative-action do_step21
    :duration 2400
    :condition (and (at start (step_pending step21)) (at start (step_done step1)) (at start (step_done step9)) (at start (step_done step12)) (at start (step_done step14)) (at start (step_done step25)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21))))
  (:durative-action do_step22
    :duration 900
    :condition (and (at start (step_pending step22)) (at start (step_done step1)) (at start (step_done step8)) (at start (step_done step12)) (at start (step_done step14)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22))))
  (:durative-action do_step23
    :duration 1200
    :condition (and (at start (step_pending step23)) (at start (step_done step4)) (at start (step_done step12)) (at start (step_done step15)) (at start (step_done step30)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23))))
  (:durative-action do_step24
    :duration 3600
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24))))
  (:durative-action do_step25
    :duration 300
    :condition (and (at start (step_pending step25)) (at start (step_done step1)) (at start (step_done step9)) (at start (step_done step12)) (at start (step_done step14)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25))))
  (:durative-action do_step26
    :duration 300
    :condition (and (at start (step_pending step26)) (at start (step_done step4)) (at start (step_done step11)) (at start (step_done step12)) (at start (step_done step15)) (at start (step_done step23)) (at start (step_done step30)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26))))
  (:durative-action do_step27
    :duration 5400
    :condition (and (at start (step_pending step27)) (at start (step_done step8)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27))))
  (:durative-action do_step28
    :duration 900
    :condition (and (at start (step_pending step28)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28))))
  (:durative-action do_step29
    :duration 172800
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29))))
  (:durative-action do_step30
    :duration 1800
    :condition (and (at start (step_pending step30)) (at start (step_done step4)) (at start (step_done step12)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30))))
)