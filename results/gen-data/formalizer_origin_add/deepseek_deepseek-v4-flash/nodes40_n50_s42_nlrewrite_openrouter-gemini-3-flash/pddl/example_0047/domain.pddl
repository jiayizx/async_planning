(define (domain pot_pie)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step))
  (:durative-action do_step_1
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step1)) (at start (step_done step9)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1))))
  (:durative-action do_step_2
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step2)) (at start (step_done step1)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step13)) (at start (step_done step14)) (at start (step_done step22)) (at start (step_done step24)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step38)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2))))
  (:durative-action do_step_3
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (step_done step1)) (at start (step_done step2)) (at start (step_done step4)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step13)) (at start (step_done step14)) (at start (step_done step18)) (at start (step_done step22)) (at start (step_done step24)) (at start (step_done step25)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step33)) (at start (step_done step35)) (at start (step_done step38)) (at start (step_done step39)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3))))
  (:durative-action do_step_4
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (step_done step33)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4))))
  (:durative-action do_step_5
    :duration (= ?duration 300)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5))))
  (:durative-action do_step_6
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (step_done step1)) (at start (step_done step9)) (at start (step_done step13)) (at start (step_done step14)) (at start (step_done step22)) (at start (step_done step24)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step38)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6))))
  (:durative-action do_step_7
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (step_done step1)) (at start (step_done step6)) (at start (step_done step9)) (at start (step_done step13)) (at start (step_done step14)) (at start (step_done step22)) (at start (step_done step24)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step38)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7))))
  (:durative-action do_step_8
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step8)) (at start (step_done step1)) (at start (step_done step9)) (at start (step_done step13)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step38)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8))))
  (:durative-action do_step_9
    :duration (= ?duration 3600)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9))))
  (:durative-action do_step_10
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step10)) (at start (step_done step4)) (at start (step_done step16)) (at start (step_done step25)) (at start (step_done step29)) (at start (step_done step33)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10))))
  (:durative-action do_step_11
    :duration (= ?duration 900)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11))))
  (:durative-action do_step_12
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step12)) (at start (step_done step29)) (at start (step_done step34)) (at start (step_done step36)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12))))
  (:durative-action do_step_13
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13))))
  (:durative-action do_step_14
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (step_done step1)) (at start (step_done step9)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14))))
  (:durative-action do_step_15
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step15)) (at start (step_done step1)) (at start (step_done step4)) (at start (step_done step6)) (at start (step_done step7)) (at start (step_done step9)) (at start (step_done step12)) (at start (step_done step13)) (at start (step_done step14)) (at start (step_done step17)) (at start (step_done step18)) (at start (step_done step22)) (at start (step_done step23)) (at start (step_done step24)) (at start (step_done step25)) (at start (step_done step27)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step40)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15))))
  (:durative-action do_step_16
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step16)) (at start (step_done step25)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16))))
  (:durative-action do_step_17
    :duration (= ?duration 600)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17))))
  (:durative-action do_step_18
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step18)) (at start (step_done step4)) (at start (step_done step25)) (at start (step_done step33)) (at start (step_done step35)) (at start (step_done step39)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18))))
  (:durative-action do_step_19
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step19)) (at start (step_done step13)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19))))
  (:durative-action do_step_20
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step20)) (at start (step_done step5)) (at start (step_done step33)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20))))
  (:durative-action do_step_21
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step21)) (at start (step_done step4)) (at start (step_done step9)) (at start (step_done step13)) (at start (step_done step17)) (at start (step_done step18)) (at start (step_done step23)) (at start (step_done step24)) (at start (step_done step25)) (at start (step_done step26)) (at start (step_done step27)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step32)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step40)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21))))
  (:durative-action do_step_22
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step22)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22))))
  (:durative-action do_step_23
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step23)) (at start (step_done step33)) (at start (step_done step35)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23))))
  (:durative-action do_step_24
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step24)) (at start (step_done step13)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step38)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24))))
  (:durative-action do_step_25
    :duration (= ?duration 180)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25))))
  (:durative-action do_step_26
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step26)) (at start (step_done step4)) (at start (step_done step9)) (at start (step_done step13)) (at start (step_done step17)) (at start (step_done step18)) (at start (step_done step23)) (at start (step_done step24)) (at start (step_done step25)) (at start (step_done step27)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step32)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step40)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26))))
  (:durative-action do_step_27
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step27)) (at start (step_done step4)) (at start (step_done step9)) (at start (step_done step13)) (at start (step_done step17)) (at start (step_done step18)) (at start (step_done step23)) (at start (step_done step24)) (at start (step_done step25)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step40)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27))))
  (:durative-action do_step_28
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step28)) (at start (step_done step5)) (at start (step_done step11)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28))))
  (:durative-action do_step_29
    :duration (= ?duration 3600)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29))))
  (:durative-action do_step_30
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step30)) (at start (step_done step13)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30))))
  (:durative-action do_step_31
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step31)) (at start (step_done step5)) (at start (step_done step11)) (at start (step_done step28)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31))))
  (:durative-action do_step_32
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step32)) (at start (step_done step4)) (at start (step_done step9)) (at start (step_done step13)) (at start (step_done step17)) (at start (step_done step18)) (at start (step_done step23)) (at start (step_done step24)) (at start (step_done step25)) (at start (step_done step27)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step40)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32))))
  (:durative-action do_step_33
    :duration (= ?duration 120)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33))))
  (:durative-action do_step_34
    :duration (= ?duration 300)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34))))
  (:durative-action do_step_35
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step35)) (at start (step_done step33)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35))))
  (:durative-action do_step_36
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step36)) (at start (step_done step34)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36))))
  (:durative-action do_step_37
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step37)) (at start (step_done step1)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step9)) (at start (step_done step13)) (at start (step_done step17)) (at start (step_done step18)) (at start (step_done step20)) (at start (step_done step21)) (at start (step_done step23)) (at start (step_done step24)) (at start (step_done step25)) (at start (step_done step26)) (at start (step_done step27)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step32)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step35)) (at start (step_done step36)) (at start (step_done step38)) (at start (step_done step39)) (at start (step_done step40)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37))))
  (:durative-action do_step_38
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step38)) (at start (step_done step13)) (at start (step_done step29)) (at start (step_done step30)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38))))
  (:durative-action do_step_39
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step39)) (at start (step_done step25)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39))))
  (:durative-action do_step_40
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step40)) (at start (step_done step13)) (at start (step_done step17)) (at start (step_done step23)) (at start (step_done step24)) (at start (step_done step25)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step33)) (at start (step_done step35)) (at start (step_done step38)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40))))
)
