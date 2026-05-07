(define (domain shower)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (done ?s - step))
  
  (:durative-action do_step1
    :duration (= ?duration 10)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (done step1))))
  
  (:durative-action do_step2
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step2)) (at start (done step16)) (at start (done step25)) (at start (done step39)) (at start (done step47)) (at start (done step48)) (at start (done step45)) (at start (done step43)) (at start (done step31)) (at start (done step19)))
    :effect (and (at start (not (step_pending step2))) (at end (done step2))))
  
  (:durative-action do_step3
    :duration (= ?duration 15)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (done step3))))
  
  (:durative-action do_step4
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (done step2)) (at start (done step27)) (at start (done step42)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step4))) (at end (done step4))))
  
  (:durative-action do_step5
    :duration (= ?duration 5)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (done step5))))
  
  (:durative-action do_step6
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step6)) (at start (done step49)))
    :effect (and (at start (not (step_pending step6))) (at end (done step6))))
  
  (:durative-action do_step7
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step7)) (at start (done step18)) (at start (done step36)) (at start (done step6)) (at start (done step41)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step7))) (at end (done step7))))
  
  (:durative-action do_step8
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step8)) (at start (done step20)))
    :effect (and (at start (not (step_pending step8))) (at end (done step8))))
  
  (:durative-action do_step9
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step9)) (at start (done step10)) (at start (done step38)) (at start (done step20)) (at start (done step47)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step9))) (at end (done step9))))
  
  (:durative-action do_step10
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step10)) (at start (done step38)))
    :effect (and (at start (not (step_pending step10))) (at end (done step10))))
  
  (:durative-action do_step11
    :duration (= ?duration 20)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (done step11))))
  
  (:durative-action do_step12
    :duration (= ?duration 40)
    :condition (and (at start (step_pending step12)) (at start (done step6)) (at start (done step19)) (at start (done step21)) (at start (done step44)) (at start (done step41)) (at start (done step39)) (at start (done step40)))
    :effect (and (at start (not (step_pending step12))) (at end (done step12))))
  
  (:durative-action do_step13
    :duration (= ?duration 15)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (done step13))))
  
  (:durative-action do_step14
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (done step29)) (at start (done step34)) (at start (done step46)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step14))) (at end (done step14))))
  
  (:durative-action do_step15
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step15)) (at start (done step10)) (at start (done step20)) (at start (done step42)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step15))) (at end (done step15))))
  
  (:durative-action do_step16
    :duration (= ?duration 30)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (done step16))))
  
  (:durative-action do_step17
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step17)) (at start (done step31)))
    :effect (and (at start (not (step_pending step17))) (at end (done step17))))
  
  (:durative-action do_step18
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step18)) (at start (done step38)) (at start (done step20)))
    :effect (and (at start (not (step_pending step18))) (at end (done step18))))
  
  (:durative-action do_step19
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step19)) (at start (done step8)) (at start (done step23)) (at start (done step25)) (at start (done step39)) (at start (done step40)))
    :effect (and (at start (not (step_pending step19))) (at end (done step19))))
  
  (:durative-action do_step20
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step20)) (at start (done step38)))
    :effect (and (at start (not (step_pending step20))) (at end (done step20))))
  
  (:durative-action do_step21
    :duration (= ?duration 5)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (done step21))))
  
  (:durative-action do_step22
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step22)) (at start (done step5)) (at start (done step48)) (at start (done step41)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step22))) (at end (done step22))))
  
  (:durative-action do_step23
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step23)) (at start (done step43)) (at start (done step39)) (at start (done step40)))
    :effect (and (at start (not (step_pending step23))) (at end (done step23))))
  
  (:durative-action do_step24
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step24)) (at start (done step20)))
    :effect (and (at start (not (step_pending step24))) (at end (done step24))))
  
  (:durative-action do_step25
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step25)) (at start (done step1)))
    :effect (and (at start (not (step_pending step25))) (at end (done step25))))
  
  (:durative-action do_step26
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step26)) (at start (done step17)) (at start (done step21)) (at start (done step31)) (at start (done step2)) (at start (done step4)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step26))) (at end (done step26))))
  
  (:durative-action do_step27
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step27)) (at start (done step5)) (at start (done step3)))
    :effect (and (at start (not (step_pending step27))) (at end (done step27))))
  
  (:durative-action do_step28
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step28)) (at start (done step8)) (at start (done step40)) (at start (done step35)) (at start (done step2)) (at start (done step39)) (at start (done step19)))
    :effect (and (at start (not (step_pending step28))) (at end (done step28))))
  
  (:durative-action do_step29
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step29)) (at start (done step10)) (at start (done step25)) (at start (done step30)) (at start (done step2)) (at start (done step9)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step29))) (at end (done step29))))
  
  (:durative-action do_step30
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step30)) (at start (done step20)) (at start (done step38)))
    :effect (and (at start (not (step_pending step30))) (at end (done step30))))
  
  (:durative-action do_step31
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step31)) (at start (done step10)) (at start (done step20)))
    :effect (and (at start (not (step_pending step31))) (at end (done step31))))
  
  (:durative-action do_step32
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step32)) (at start (done step1)) (at start (done step40)) (at start (done step16)))
    :effect (and (at start (not (step_pending step32))) (at end (done step32))))
  
  (:durative-action do_step33
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step33)) (at start (done step6)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step33))) (at end (done step33))))
  
  (:durative-action do_step34
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step34)) (at start (done step24)) (at start (done step36)) (at start (done step37)) (at start (done step28)) (at start (done step46)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step34))) (at end (done step34))))
  
  (:durative-action do_step35
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step35)) (at start (done step11)) (at start (done step24)) (at start (done step2)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step35))) (at end (done step35))))
  
  (:durative-action do_step36
    :duration (= ?duration 40)
    :condition (and (at start (step_pending step36)) (at start (done step13)) (at start (done step2)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step36))) (at end (done step36))))
  
  (:durative-action do_step37
    :duration (= ?duration 50)
    :condition (and (at start (step_pending step37)) (at start (done step18)) (at start (done step33)) (at start (done step42)) (at start (done step47)) (at start (done step2)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step37))) (at end (done step37))))
  
  (:durative-action do_step38
    :duration (= ?duration 20)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (done step38))))
  
  (:durative-action do_step39
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step39)) (at start (done step15)) (at start (done step20)) (at start (done step1)))
    :effect (and (at start (not (step_pending step39))) (at end (done step39))))
  
  (:durative-action do_step40
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step40)) (at start (done step20)) (at start (done step39)))
    :effect (and (at start (not (step_pending step40))) (at end (done step40))))
  
  (:durative-action do_step41
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step41)) (at start (done step5)) (at start (done step15)) (at start (done step8)) (at start (done step2)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step41))) (at end (done step41))))
  
  (:durative-action do_step42
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step42)) (at start (done step3)) (at start (done step2)) (at start (done step27)))
    :effect (and (at start (not (step_pending step42))) (at end (done step42))))
  
  (:durative-action do_step43
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step43)) (at start (done step25)) (at start (done step2)))
    :effect (and (at start (not (step_pending step43))) (at end (done step43))))
  
  (:durative-action do_step44
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step44)) (at start (done step24)) (at start (done step39)) (at start (done step41)) (at start (done step2)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step44))) (at end (done step44))))
  
  (:durative-action do_step45
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step45)) (at start (done step38)) (at start (done step20)))
    :effect (and (at start (not (step_pending step45))) (at end (done step45))))
  
  (:durative-action do_step46
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step46)) (at start (done step28)) (at start (done step2)) (at start (done step39)) (at start (done step40)) (at start (done step19)))
    :effect (and (at start (not (step_pending step46))) (at end (done step46))))
  
  (:durative-action do_step47
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step47)) (at start (done step1)) (at start (done step20)) (at start (done step45)))
    :effect (and (at start (not (step_pending step47))) (at end (done step47))))
  
  (:durative-action do_step48
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step48)) (at start (done step20)))
    :effect (and (at start (not (step_pending step48))) (at end (done step48))))
  
  (:durative-action do_step49
    :duration (= ?duration 5)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (done step49))))
  
  (:durative-action do_step50
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step50)) (at start (done step9)) (at start (done step35)) (at start (done step30)) (at start (done step14)) (at start (done step29)))
    :effect (and (at start (not (step_pending step50))) (at end (done step50))))
)