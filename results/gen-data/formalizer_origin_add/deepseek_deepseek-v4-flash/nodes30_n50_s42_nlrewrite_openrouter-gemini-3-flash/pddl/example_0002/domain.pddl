(define (domain chocolate_buying)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step) (done_1) (done_2) (done_3) (done_4) (done_5) (done_6) (done_7) (done_8) (done_9) (done_10) (done_11) (done_12) (done_13) (done_14) (done_15) (done_16) (done_17) (done_18) (done_19) (done_20) (done_21) (done_22) (done_23) (done_24) (done_25) (done_26) (done_27) (done_28) (done_29) (done_30) (chocolate_bought))

  (:durative-action do_step1
    :duration (duration 1800)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done_1))))

  (:durative-action do_step2
    :duration (duration 1200)
    :condition (and (at start (step_pending step2)) (at start (done_16)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done_2))))

  (:durative-action do_step3
    :duration (duration 300)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done_3))))

  (:durative-action do_step4
    :duration (duration 600)
    :condition (and (at start (step_pending step4)) (at start (done_1)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done_4))))

  (:durative-action do_step5
    :duration (duration 2700)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done_5))))

  (:durative-action do_step6
    :duration (duration 600)
    :condition (and (at start (step_pending step6)) (at start (done_16)) (at start (done_26)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done_6))))

  (:durative-action do_step7
    :duration (duration 120)
    :condition (and (at start (step_pending step7)) (at start (done_21)) (at start (done_27)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done_7))))

  (:durative-action do_step8
    :duration (duration 300)
    :condition (and (at start (step_pending step8)) (at start (done_21)) (at start (done_27)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done_8))))

  (:durative-action do_step9
    :duration (duration 600)
    :condition (and (at start (step_pending step9)) (at start (done_21)) (at start (done_27)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done_9))))

  (:durative-action do_step10
    :duration (duration 300)
    :condition (and (at start (step_pending step10)) (at start (done_5)) (at start (done_15)) (at start (done_18)) (at start (done_19)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done_10))))

  (:durative-action do_step11
    :duration (duration 300)
    :condition (and (at start (step_pending step11)) (at start (done_6)) (at start (done_8)) (at start (done_16)) (at start (done_21)) (at start (done_26)) (at start (done_27)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done_11))))

  (:durative-action do_step12
    :duration (duration 1500)
    :condition (and (at start (step_pending step12)) (at start (done_19)) (at start (done_27)) (at start (done_28)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done_12))))

  (:durative-action do_step13
    :duration (duration 120)
    :condition (and (at start (step_pending step13)) (at start (done_22)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done_13))))

  (:durative-action do_step14
    :duration (duration 300)
    :condition (and (at start (step_pending step14)) (at start (done_1)) (at start (done_5)) (at start (done_23)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done_14))))

  (:durative-action do_step15
    :duration (duration 180)
    :condition (and (at start (step_pending step15)) (at start (done_19)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done_15))))

  (:durative-action do_step16
    :duration (duration 900)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done_16))))

  (:durative-action do_step17
    :duration (duration 600)
    :condition (and (at start (step_pending step17)) (at start (done_3)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done_17))))

  (:durative-action do_step18
    :duration (duration 1200)
    :condition (and (at start (step_pending step18)) (at start (done_15)) (at start (done_19)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done_18))))

  (:durative-action do_step19
    :duration (duration 3600)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done_19))))

  (:durative-action do_step20
    :duration (duration 240)
    :condition (and (at start (step_pending step20)) (at start (done_12)) (at start (done_15)) (at start (done_19)) (at start (done_27)) (at start (done_28)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done_20))))

  (:durative-action do_step21
    :duration (duration 300)
    :condition (and (at start (step_pending step21)) (at start (done_27)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done_21))))

  (:durative-action do_step22
    :duration (duration 60)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done_22))))

  (:durative-action do_step23
    :duration (duration 900)
    :condition (and (at start (step_pending step23)) (at start (done_1)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done_23))))

  (:durative-action do_step24
    :duration (duration 600)
    :condition (and (at start (step_pending step24)) (at start (done_2)) (at start (done_16)) (at start (done_19)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done_24))))

  (:durative-action do_step25
    :duration (duration 180)
    :condition (and (at start (step_pending step25)) (at start (done_5)) (at start (done_10)) (at start (done_15)) (at start (done_18)) (at start (done_19)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done_25))))

  (:durative-action do_step26
    :duration (duration 600)
    :condition (and (at start (step_pending step26)) (at start (done_16)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done_26))))

  (:durative-action do_step27
    :duration (duration 120)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done_27))))

  (:durative-action do_step28
    :duration (duration 600)
    :condition (and (at start (step_pending step28)) (at start (done_19)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done_28))))

  (:durative-action do_step29
    :duration (duration 480)
    :condition (and (at start (step_pending step29)) (at start (done_2)) (at start (done_5)) (at start (done_10)) (at start (done_15)) (at start (done_16)) (at start (done_18)) (at start (done_19)) (at start (done_25)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done_29))))

  (:durative-action do_step30
    :duration (duration 120)
    :condition (and (at start (step_pending step30)) (at start (done_15)) (at start (done_19)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done_30)) (at end (chocolate_bought))))
)