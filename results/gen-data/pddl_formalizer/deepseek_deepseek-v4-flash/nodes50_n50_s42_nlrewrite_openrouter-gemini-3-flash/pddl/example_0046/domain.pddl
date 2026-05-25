(define (domain fbi_request)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (accomplished ?s - step))
  (:durative-action do_step1
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (accomplished step1))))
  (:durative-action do_step2
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (accomplished step1)) (at start (accomplished step3)) (at start (accomplished step11)) (at start (accomplished step12)) (at start (accomplished step13)) (at start (accomplished step18)) (at start (accomplished step21)) (at start (accomplished step26)) (at start (accomplished step27)) (at start (accomplished step30)) (at start (accomplished step34)) (at start (accomplished step37)) (at start (accomplished step38)) (at start (accomplished step39)) (at start (accomplished step40)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step46)) (at start (accomplished step50)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (accomplished step2))))
  (:durative-action do_step3
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step3)) (at start (accomplished step42)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (accomplished step3))))
  (:durative-action do_step4
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (accomplished step11)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (accomplished step4))))
  (:durative-action do_step5
    :duration (= ?duration 1800)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (accomplished step5))))
  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (accomplished step1)) (at start (accomplished step3)) (at start (accomplished step11)) (at start (accomplished step16)) (at start (accomplished step21)) (at start (accomplished step24)) (at start (accomplished step29)) (at start (accomplished step39)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step45)) (at start (accomplished step49)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (accomplished step6))))
  (:durative-action do_step7
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step7)) (at start (accomplished step3)) (at start (accomplished step30)) (at start (accomplished step31)) (at start (accomplished step37)) (at start (accomplished step38)) (at start (accomplished step39)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step44)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (accomplished step7))))
  (:durative-action do_step8
    :duration (= ?duration 1200)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (accomplished step8))))
  (:durative-action do_step9
    :duration (= ?duration 4838400)
    :condition (and (at start (step_pending step9)) (at start (accomplished step1)) (at start (accomplished step2)) (at start (accomplished step3)) (at start (accomplished step8)) (at start (accomplished step11)) (at start (accomplished step12)) (at start (accomplished step13)) (at start (accomplished step14)) (at start (accomplished step16)) (at start (accomplished step18)) (at start (accomplished step21)) (at start (accomplished step23)) (at start (accomplished step24)) (at start (accomplished step25)) (at start (accomplished step26)) (at start (accomplished step27)) (at start (accomplished step28)) (at start (accomplished step30)) (at start (accomplished step31)) (at start (accomplished step34)) (at start (accomplished step37)) (at start (accomplished step38)) (at start (accomplished step39)) (at start (accomplished step40)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step46)) (at start (accomplished step47)) (at start (accomplished step50)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (accomplished step9))))
  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step10)) (at start (accomplished step11)) (at start (accomplished step42)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (accomplished step10))))
  (:durative-action do_step11
    :duration (= ?duration 600)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (accomplished step11))))
  (:durative-action do_step12
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step12)) (at start (accomplished step1)) (at start (accomplished step34)) (at start (accomplished step42)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (accomplished step12))))
  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (accomplished step13))))
  (:durative-action do_step14
    :duration (= ?duration 2700)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (accomplished step14))))
  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (accomplished step1)) (at start (accomplished step3)) (at start (accomplished step5)) (at start (accomplished step6)) (at start (accomplished step8)) (at start (accomplished step11)) (at start (accomplished step14)) (at start (accomplished step16)) (at start (accomplished step17)) (at start (accomplished step21)) (at start (accomplished step24)) (at start (accomplished step29)) (at start (accomplished step30)) (at start (accomplished step38)) (at start (accomplished step39)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step45)) (at start (accomplished step49)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (accomplished step15))))
  (:durative-action do_step16
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step16)) (at start (accomplished step1)) (at start (accomplished step24)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (accomplished step16))))
  (:durative-action do_step17
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step17)) (at start (accomplished step1)) (at start (accomplished step3)) (at start (accomplished step5)) (at start (accomplished step6)) (at start (accomplished step11)) (at start (accomplished step14)) (at start (accomplished step16)) (at start (accomplished step21)) (at start (accomplished step24)) (at start (accomplished step29)) (at start (accomplished step39)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step45)) (at start (accomplished step49)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (accomplished step17))))
  (:durative-action do_step18
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step18)) (at start (accomplished step1)) (at start (accomplished step3)) (at start (accomplished step11)) (at start (accomplished step12)) (at start (accomplished step13)) (at start (accomplished step21)) (at start (accomplished step26)) (at start (accomplished step27)) (at start (accomplished step34)) (at start (accomplished step39)) (at start (accomplished step40)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step46)) (at start (accomplished step50)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (accomplished step18))))
  (:durative-action do_step19
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step19)) (at start (accomplished step1)) (at start (accomplished step3)) (at start (accomplished step11)) (at start (accomplished step16)) (at start (accomplished step21)) (at start (accomplished step24)) (at start (accomplished step29)) (at start (accomplished step39)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step45)) (at start (accomplished step49)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (accomplished step19))))
  (:durative-action do_step20
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step20)) (at start (accomplished step1)) (at start (accomplished step2)) (at start (accomplished step3)) (at start (accomplished step11)) (at start (accomplished step12)) (at start (accomplished step13)) (at start (accomplished step14)) (at start (accomplished step18)) (at start (accomplished step21)) (at start (accomplished step26)) (at start (accomplished step27)) (at start (accomplished step30)) (at start (accomplished step31)) (at start (accomplished step34)) (at start (accomplished step37)) (at start (accomplished step38)) (at start (accomplished step39)) (at start (accomplished step40)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step46)) (at start (accomplished step47)) (at start (accomplished step50)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (accomplished step20))))
  (:durative-action do_step21
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step21)) (at start (accomplished step3)) (at start (accomplished step39)) (at start (accomplished step42)) (at start (accomplished step44)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (accomplished step21))))
  (:durative-action do_step22
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step22)) (at start (accomplished step14)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (accomplished step22))))
  (:durative-action do_step23
    :duration (= ?duration 120)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (accomplished step23))))
  (:durative-action do_step24
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step24)) (at start (accomplished step1)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (accomplished step24))))
  (:durative-action do_step25
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (accomplished step1)) (at start (accomplished step13)) (at start (accomplished step16)) (at start (accomplished step23)) (at start (accomplished step24)) (at start (accomplished step30)) (at start (accomplished step31)) (at start (accomplished step38)) (at start (accomplished step41)) (at start (accomplished step46)) (at start (accomplished step50)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (accomplished step25))))
  (:durative-action do_step26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (accomplished step1)) (at start (accomplished step12)) (at start (accomplished step34)) (at start (accomplished step42)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (accomplished step26))))
  (:durative-action do_step27
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step27)) (at start (accomplished step3)) (at start (accomplished step13)) (at start (accomplished step39)) (at start (accomplished step42)) (at start (accomplished step44)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (accomplished step27))))
  (:durative-action do_step28
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (accomplished step3)) (at start (accomplished step8)) (at start (accomplished step13)) (at start (accomplished step27)) (at start (accomplished step39)) (at start (accomplished step42)) (at start (accomplished step44)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (accomplished step28))))
  (:durative-action do_step29
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step29)) (at start (accomplished step42)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (accomplished step29))))
  (:durative-action do_step30
    :duration (= ?duration 10800)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (accomplished step30))))
  (:durative-action do_step31
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step31)) (at start (accomplished step30)) (at start (accomplished step38)) (at start (accomplished step41)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (accomplished step31))))
  (:durative-action do_step32
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step32)) (at start (accomplished step1)) (at start (accomplished step3)) (at start (accomplished step5)) (at start (accomplished step6)) (at start (accomplished step11)) (at start (accomplished step14)) (at start (accomplished step16)) (at start (accomplished step17)) (at start (accomplished step21)) (at start (accomplished step24)) (at start (accomplished step29)) (at start (accomplished step39)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step43)) (at start (accomplished step44)) (at start (accomplished step45)) (at start (accomplished step49)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (accomplished step32))))
  (:durative-action do_step33
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step33)) (at start (accomplished step1)) (at start (accomplished step16)) (at start (accomplished step24)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (accomplished step33))))
  (:durative-action do_step34
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step34)) (at start (accomplished step1)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (accomplished step34))))
  (:durative-action do_step35
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step35)) (at start (accomplished step1)) (at start (accomplished step16)) (at start (accomplished step24)) (at start (accomplished step30)) (at start (accomplished step33)) (at start (accomplished step38)) (at start (accomplished step41)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (accomplished step35))))
  (:durative-action do_step36
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step36)) (at start (accomplished step41)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (accomplished step36))))
  (:durative-action do_step37
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step37)) (at start (accomplished step3)) (at start (accomplished step42)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (accomplished step37))))
  (:durative-action do_step38
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step38)) (at start (accomplished step30)) (at start (accomplished step41)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (accomplished step38))))
  (:durative-action do_step39
    :duration (= ?duration 600)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (accomplished step39))))
  (:durative-action do_step40
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step40)) (at start (accomplished step1)) (at start (accomplished step3)) (at start (accomplished step11)) (at start (accomplished step12)) (at start (accomplished step13)) (at start (accomplished step26)) (at start (accomplished step27)) (at start (accomplished step34)) (at start (accomplished step39)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step46)) (at start (accomplished step50)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (accomplished step40))))
  (:durative-action do_step41
    :duration (= ?duration 14400)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (accomplished step41))))
  (:durative-action do_step42
    :duration (= ?duration 7200)
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (accomplished step42))))
  (:durative-action do_step43
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step43)) (at start (accomplished step1)) (at start (accomplished step3)) (at start (accomplished step5)) (at start (accomplished step6)) (at start (accomplished step11)) (at start (accomplished step14)) (at start (accomplished step16)) (at start (accomplished step17)) (at start (accomplished step21)) (at start (accomplished step24)) (at start (accomplished step29)) (at start (accomplished step39)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step45)) (at start (accomplished step49)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (accomplished step43))))
  (:durative-action do_step44
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step44)) (at start (accomplished step3)) (at start (accomplished step39)) (at start (accomplished step42)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (accomplished step44))))
  (:durative-action do_step45
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step45)) (at start (accomplished step1)) (at start (accomplished step3)) (at start (accomplished step11)) (at start (accomplished step16)) (at start (accomplished step21)) (at start (accomplished step24)) (at start (accomplished step29)) (at start (accomplished step39)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step49)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (accomplished step45))))
  (:durative-action do_step46
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step46)) (at start (accomplished step13)) (at start (accomplished step41)) (at start (accomplished step50)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (accomplished step46))))
  (:durative-action do_step47
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step47)) (at start (accomplished step1)) (at start (accomplished step2)) (at start (accomplished step3)) (at start (accomplished step11)) (at start (accomplished step12)) (at start (accomplished step13)) (at start (accomplished step14)) (at start (accomplished step18)) (at start (accomplished step21)) (at start (accomplished step26)) (at start (accomplished step27)) (at start (accomplished step30)) (at start (accomplished step34)) (at start (accomplished step37)) (at start (accomplished step38)) (at start (accomplished step39)) (at start (accomplished step40)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step44)) (at start (accomplished step46)) (at start (accomplished step50)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (accomplished step47))))
  (:durative-action do_step48
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step48)) (at start (accomplished step1)) (at start (accomplished step2)) (at start (accomplished step3)) (at start (accomplished step5)) (at start (accomplished step6)) (at start (accomplished step7)) (at start (accomplished step11)) (at start (accomplished step12)) (at start (accomplished step13)) (at start (accomplished step14)) (at start (accomplished step16)) (at start (accomplished step17)) (at start (accomplished step18)) (at start (accomplished step21)) (at start (accomplished step22)) (at start (accomplished step24)) (at start (accomplished step26)) (at start (accomplished step27)) (at start (accomplished step29)) (at start (accomplished step30)) (at start (accomplished step31)) (at start (accomplished step34)) (at start (accomplished step37)) (at start (accomplished step38)) (at start (accomplished step39)) (at start (accomplished step40)) (at start (accomplished step41)) (at start (accomplished step42)) (at start (accomplished step43)) (at start (accomplished step44)) (at start (accomplished step45)) (at start (accomplished step46)) (at start (accomplished step49)) (at start (accomplished step50)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (accomplished step48))))
  (:durative-action do_step49
    :duration (= ?duration 60)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (accomplished step49))))
  (:durative-action do_step50
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step50)) (at start (accomplished step41)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (accomplished step50)))))
