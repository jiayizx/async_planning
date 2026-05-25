(define (domain go_for_walk)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done ?s - step)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step1) (done step37) (done step52)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done step1))))
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step2) (done step16)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done step2))))
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step3) (done step26)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done step3))))
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step4) (done step17) (done step21)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done step4))))
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step5) (done step12) (done step13)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done step5))))
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step6) (done step10) (done step43) (done step44) (done step48)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done step6))))
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step7) (done step9)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done step7))))
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step8) (done step35)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done step8))))
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step9) (done step17) (done step20) (done step51)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done step9))))
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done step10))))
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done step11))))
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done step12))))
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done step13))))
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done step14))))
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step15) (done step3) (done step50)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done step15))))
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step16) (done step50)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done step16))))
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step17) (done step8) (done step12) (done step14)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done step17))))
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step18) (done step5)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done step18))))
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (and (step_pending step19) (done step45) (done step50) (done step53) (done step60)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done step19))))
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step20) (done step44)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done step20))))
  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done step21))))
  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step22) (done step18) (done step35) (done step37)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done step22))))
  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step23) (done step9) (done step54)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done step23))))
  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step24) (done step31) (done step43)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done step24))))
  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step25) (done step29) (done step51)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done step25))))
  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done step26))))
  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step27) (done step3) (done step12) (done step42) (done step43) (done step44) (done step59)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done step27))))
  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step28) (done step24) (done step35) (done step59)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done step28))))
  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step29) (done step1) (done step20)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done step29))))
  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step30) (done step29)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done step30))))
  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step31) (done step37) (done step42)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done step31))))
  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step32) (done step18) (done step35) (done step53) (done step45)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done step32))))
  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step33) (done step9) (done step26) (done step29)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done step33))))
  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step34) (done step52) (done step59)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done step34))))
  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done step35))))
  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (and (step_pending step36) (done step19) (done step24) (done step53) (done step56)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done step36))))
  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done step37))))
  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step38) (done step17)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done step38))))
  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step39) (done step50)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done step39))))
  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step40) (done step33) (done step52)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done step40))))
  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step41) (done step10) (done step31) (done step37) (done step43)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done step41))))
  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step42) (done step13)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done step42))))
  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step43) (done step5)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done step43))))
  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done step44))))
  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step45) (done step3) (done step24)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done step45))))
  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step46) (done step10) (done step13) (done step29) (done step33) (done step34)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done step46))))
  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step47) (done step25) (done step40) (done step51)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done step47))))
  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done step48))))
  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done step49))))
  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done step50))))
  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step51) (done step30)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done step51))))
  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done step52))))
  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step53) (done step35)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done step53))))
  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step54) (done step11) (done step50) (done step52)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done step54))))
  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step55) (done step1) (done step12) (done step13) (done step43)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done step55))))
  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done step56))))
  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (and (step_pending step57) (done step8) (done step11) (done step34) (done step56)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done step57))))
  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step58) (done step14) (done step18) (done step39)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done step58))))
  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step59) (done step3)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done step59))))
  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step60) (done step23) (done step12) (done step13)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done step60))))
)
