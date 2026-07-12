; The prior model allowed every action schema to bind to every step object.
; Thus (do-step60 step1), for example, could achieve (step_done step1).
; This created 3600 grounded actions, allowed actions to complete the wrong steps,
; and caused the large, ineffective search shown in the OPTIC output.
; This corrected model uses parameterless actions tied to domain constants.
; Each action can now complete only its corresponding step.
(define (domain caramel)
 (:requirements :typing :durative-actions)
 (:types step)
 (:constants
  step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
  step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
  step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
  step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
  step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
  step51 step52 step53 step54 step55 step56 step57 step58 step59 step60 - step)
 (:predicates
  (step_pending ?s - step)
  (step_done ?s - step)
  (outcome ?s - step))

 (:durative-action do-step1
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step1)) (at start (outcome step3)) (at start (outcome step4)) (at start (outcome step6)))
  :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (outcome step1))))
 (:durative-action do-step2
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (step_pending step2)) (at start (outcome step5)) (at start (outcome step21)) (at start (outcome step41)))
  :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (outcome step2))))
 (:durative-action do-step3
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step3)) (at start (outcome step2)) (at start (outcome step4)) (at start (outcome step17)) (at start (outcome step50)))
  :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (outcome step3))))
 (:durative-action do-step4
  :parameters () :duration (= ?duration 720)
  :condition (and (at start (step_pending step4)) (at start (outcome step47)))
  :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (outcome step4))))
 (:durative-action do-step5
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step5)) (at start (outcome step9)) (at start (outcome step29)) (at start (outcome step33)))
  :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (outcome step5))))
 (:durative-action do-step6
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (step_pending step6)) (at start (outcome step8)))
  :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (outcome step6))))
 (:durative-action do-step7
  :parameters () :duration (= ?duration 300)
  :condition (at start (step_pending step7))
  :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (outcome step7))))
 (:durative-action do-step8
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step8)) (at start (outcome step12)) (at start (outcome step29)) (at start (outcome step32)))
  :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (outcome step8))))
 (:durative-action do-step9
  :parameters () :duration (= ?duration 3600)
  :condition (at start (step_pending step9))
  :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (outcome step9))))
 (:durative-action do-step10
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step10)) (at start (outcome step6)) (at start (outcome step18)) (at start (outcome step23)) (at start (outcome step28)) (at start (outcome step29)))
  :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (outcome step10))))
 (:durative-action do-step11
  :parameters () :duration (= ?duration 1500)
  :condition (and (at start (step_pending step11)) (at start (outcome step6)) (at start (outcome step10)) (at start (outcome step57)))
  :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (outcome step11))))
 (:durative-action do-step12
  :parameters () :duration (= ?duration 120)
  :condition (at start (step_pending step12))
  :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (outcome step12))))
 (:durative-action do-step13
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step13)) (at start (outcome step23)) (at start (outcome step38)) (at start (outcome step56)))
  :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (outcome step13))))
 (:durative-action do-step14
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step14)) (at start (outcome step7)))
  :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (outcome step14))))
 (:durative-action do-step15
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step15)) (at start (outcome step10)) (at start (outcome step49)))
  :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (outcome step15))))
 (:durative-action do-step16
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step16)) (at start (outcome step8)))
  :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (outcome step16))))
 (:durative-action do-step17
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step17)) (at start (outcome step19)))
  :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (outcome step17))))
 (:durative-action do-step18
  :parameters () :duration (= ?duration 360)
  :condition (at start (step_pending step18))
  :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (outcome step18))))
 (:durative-action do-step19
  :parameters () :duration (= ?duration 120)
  :condition (at start (step_pending step19))
  :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (outcome step19))))
 (:durative-action do-step20
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step20)) (at start (outcome step44)) (at start (outcome step59)))
  :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (outcome step20))))
 (:durative-action do-step21
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step21)) (at start (outcome step14)))
  :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (outcome step21))))
 (:durative-action do-step22
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step22)) (at start (outcome step19)))
  :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (outcome step22))))
 (:durative-action do-step23
  :parameters () :duration (= ?duration 60)
  :condition (at start (step_pending step23))
  :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (outcome step23))))
 (:durative-action do-step24
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step24)) (at start (outcome step4)) (at start (outcome step6)) (at start (outcome step33)) (at start (outcome step52)))
  :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (outcome step24))))
 (:durative-action do-step25
  :parameters () :duration (= ?duration 2700)
  :condition (and (at start (step_pending step25)) (at start (outcome step28)))
  :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (outcome step25))))
 (:durative-action do-step26
  :parameters () :duration (= ?duration 60)
  :condition (at start (step_pending step26))
  :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (outcome step26))))
 (:durative-action do-step27
  :parameters () :duration (= ?duration 600)
  :condition (at start (step_pending step27))
  :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (outcome step27))))
 (:durative-action do-step28
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step28)) (at start (outcome step7)))
  :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (outcome step28))))
 (:durative-action do-step29
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step29)) (at start (outcome step12)) (at start (outcome step40)))
  :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (outcome step29))))
 (:durative-action do-step30
  :parameters () :duration (= ?duration 60)
  :condition (at start (step_pending step30))
  :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (outcome step30))))
 (:durative-action do-step31
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (step_pending step31)) (at start (outcome step30)) (at start (outcome step38)))
  :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (outcome step31))))
 (:durative-action do-step32
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step32)) (at start (outcome step38)))
  :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (outcome step32))))
 (:durative-action do-step33
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step33)) (at start (outcome step46)))
  :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (outcome step33))))
 (:durative-action do-step34
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step34)) (at start (outcome step11)))
  :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (outcome step34))))
 (:durative-action do-step35
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step35)) (at start (outcome step42)) (at start (outcome step55)))
  :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (outcome step35))))
 (:durative-action do-step36
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step36)) (at start (outcome step27)))
  :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (outcome step36))))
 (:durative-action do-step37
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step37)) (at start (outcome step20)))
  :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (outcome step37))))
 (:durative-action do-step38
  :parameters () :duration (= ?duration 600)
  :condition (at start (step_pending step38))
  :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (outcome step38))))
 (:durative-action do-step39
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step39)) (at start (outcome step21)) (at start (outcome step26)) (at start (outcome step37)))
  :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (outcome step39))))
 (:durative-action do-step40
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (step_pending step40)) (at start (outcome step14)) (at start (outcome step49)) (at start (outcome step53)))
  :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (outcome step40))))
 (:durative-action do-step41
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step41)) (at start (outcome step5)) (at start (outcome step26)))
  :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (outcome step41))))
 (:durative-action do-step42
  :parameters () :duration (= ?duration 900)
  :condition (at start (step_pending step42))
  :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (outcome step42))))
 (:durative-action do-step43
  :parameters () :duration (= ?duration 720)
  :condition (and (at start (step_pending step43)) (at start (outcome step2)) (at start (outcome step24)))
  :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (outcome step43))))
 (:durative-action do-step44
  :parameters () :duration (= ?duration 480)
  :condition (and (at start (step_pending step44)) (at start (outcome step29)) (at start (outcome step55)))
  :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (outcome step44))))
 (:durative-action do-step45
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step45)) (at start (outcome step1)))
  :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (outcome step45))))
 (:durative-action do-step46
  :parameters () :duration (= ?duration 1800)
  :condition (at start (step_pending step46))
  :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (outcome step46))))
 (:durative-action do-step47
  :parameters () :duration (= ?duration 900)
  :condition (at start (step_pending step47))
  :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (outcome step47))))
 (:durative-action do-step48
  :parameters () :duration (= ?duration 60)
  :condition (at start (step_pending step48))
  :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (outcome step48))))
 (:durative-action do-step49
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (step_pending step49)) (at start (outcome step47)))
  :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (outcome step49))))
 (:durative-action do-step50
  :parameters () :duration (= ?duration 120)
  :condition (at start (step_pending step50))
  :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (outcome step50))))
 (:durative-action do-step51
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (step_pending step51)) (at start (outcome step8)) (at start (outcome step56)))
  :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (outcome step51))))
 (:durative-action do-step52
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step52)) (at start (outcome step9)) (at start (outcome step32)) (at start (outcome step38)) (at start (outcome step48)) (at start (outcome step53)))
  :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (outcome step52))))
 (:durative-action do-step53
  :parameters () :duration (= ?duration 2700)
  :condition (at start (step_pending step53))
  :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (outcome step53))))
 (:durative-action do-step54
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step54)) (at start (outcome step5)) (at start (outcome step6)) (at start (outcome step16)))
  :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (outcome step54))))
 (:durative-action do-step55
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step55)) (at start (outcome step10)) (at start (outcome step16)) (at start (outcome step34)))
  :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (outcome step55))))
 (:durative-action do-step56
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (step_pending step56)) (at start (outcome step31)) (at start (outcome step38)))
  :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (outcome step56))))
 (:durative-action do-step57
  :parameters () :duration (= ?duration 600)
  :condition (at start (step_pending step57))
  :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (outcome step57))))
 (:durative-action do-step58
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step58)) (at start (outcome step5)) (at start (outcome step46)))
  :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (outcome step58))))
 (:durative-action do-step59
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step59)) (at start (outcome step4)) (at start (outcome step54)))
  :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (outcome step59))))
 (:durative-action do-step60
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step60)) (at start (outcome step18)))
  :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (outcome step60))))
)