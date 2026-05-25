(define (domain firm-breasts)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step))
  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1))))
  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2))))
  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step3) (step_done step15)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3))))
  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4))))
  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending step5) (step_done step11)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5))))
  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step6) (step_done step1) (step_done step36) (step_done step38) (step_done step42)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6))))
  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step7) (step_done step16) (step_done step29)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7))))
  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step8) (step_done step7) (step_done step13) (step_done step22) (step_done step37) (step_done step56) (step_done step60)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8))))
  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (at start (and (step_pending step9) (step_done step41)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9))))
  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10))))
  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11))))
  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step12) (step_done step4)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12))))
  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13))))
  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step14) (step_done step7) (step_done step46)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14))))
  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15))))
  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16))))
  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step17) (step_done step4) (step_done step12) (step_done step15) (step_done step18) (step_done step20) (step_done step24) (step_done step25)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17))))
  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 2419200)
    :condition (at start (and (step_pending step18) (step_done step35) (step_done step57) (step_done step59)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18))))
  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step19) (step_done step2)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19))))
  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step20) (step_done step2) (step_done step16) (step_done step47)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20))))
  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21))))
  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22))))
  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 2419200)
    :condition (at start (and (step_pending step23) (step_done step14) (step_done step17) (step_done step18) (step_done step39) (step_done step56) (step_done step58)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23))))
  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step24) (step_done step1) (step_done step4) (step_done step12) (step_done step20)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24))))
  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step25) (step_done step44) (step_done step50)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25))))
  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step26) (step_done step2) (step_done step11) (step_done step18)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26))))
  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27))))
  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending step28) (step_done step11) (step_done step50) (step_done step59)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28))))
  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (and (step_pending step29) (step_done step38)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29))))
  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step30) (step_done step12)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30))))
  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step31) (step_done step16) (step_done step22) (step_done step27) (step_done step38) (step_done step47) (step_done step51)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31))))
  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step32) (step_done step36)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32))))
  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step33) (step_done step3) (step_done step20)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33))))
  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step34) (step_done step4) (step_done step12) (step_done step25) (step_done step27) (step_done step47)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34))))
  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (and (step_pending step35) (step_done step50)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35))))
  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step36) (step_done step52)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36))))
  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step37) (step_done step4) (step_done step42)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37))))
  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38))))
  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 2419200)
    :condition (at start (and (step_pending step39) (step_done step5) (step_done step7) (step_done step14) (step_done step18) (step_done step25)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39))))
  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step40) (step_done step20) (step_done step26) (step_done step48) (step_done step58)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40))))
  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step41) (step_done step6)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41))))
  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step42) (step_done step20) (step_done step32) (step_done step47)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42))))
  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step43) (step_done step11) (step_done step28) (step_done step35)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43))))
  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44))))
  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step45) (step_done step2) (step_done step10) (step_done step33)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45))))
  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step46) (step_done step15) (step_done step17) (step_done step20)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46))))
  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step47) (step_done step11) (step_done step12) (step_done step16) (step_done step22) (step_done step38)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47))))
  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step48) (step_done step7)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48))))
  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step49) (step_done step7) (step_done step9) (step_done step17) (step_done step21)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49))))
  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50))))
  (:durative-action do-step51
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step51))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51))))
  (:durative-action do-step52
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52))))
  (:durative-action do-step53
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step53) (step_done step6) (step_done step33)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53))))
  (:durative-action do-step54
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step54) (step_done step47) (step_done step48) (step_done step55)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54))))
  (:durative-action do-step55
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step55) (step_done step58)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55))))
  (:durative-action do-step56
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (and (step_pending step56) (step_done step12) (step_done step28) (step_done step29) (step_done step39) (step_done step60)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56))))
  (:durative-action do-step57
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step57) (step_done step15) (step_done step27)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57))))
  (:durative-action do-step58
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step58) (step_done step37) (step_done step44)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58))))
  (:durative-action do-step59
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (and (step_pending step59) (step_done step60)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59))))
  (:durative-action do-step60
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step60) (step_done step22)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60))))
)