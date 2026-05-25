(define (domain cookies)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (done ?s - step))
  
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (done step18)) (at start (done step20)))
    :effect (and (at start (not (step_pending step1))) (at end (done step1))))
  
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (done step2))))
  
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (done step22)))
    :effect (and (at start (not (step_pending step3))) (at end (done step3))))
  
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (done step44)))
    :effect (and (at start (not (step_pending step4))) (at end (done step4))))
  
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step5)) (at start (done step8)) (at start (done step34)) (at start (done step37)) (at start (done step61)))
    :effect (and (at start (not (step_pending step5))) (at end (done step5))))
  
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step6)) (at start (done step8)) (at start (done step33)) (at start (done step40)) (at start (done step43)) (at start (done step65)))
    :effect (and (at start (not (step_pending step6))) (at end (done step6))))
  
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step7)) (at start (done step2)) (at start (done step4)))
    :effect (and (at start (not (step_pending step7))) (at end (done step7))))
  
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (done step8))))
  
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step9)) (at start (done step20)))
    :effect (and (at start (not (step_pending step9))) (at end (done step9))))
  
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step10)) (at start (done step16)) (at start (done step34)) (at start (done step58)))
    :effect (and (at start (not (step_pending step10))) (at end (done step10))))
  
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step11)) (at start (done step20)) (at start (done step41)))
    :effect (and (at start (not (step_pending step11))) (at end (done step11))))
  
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step12)) (at start (done step8)) (at start (done step43)))
    :effect (and (at start (not (step_pending step12))) (at end (done step12))))
  
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step13)) (at start (done step15)))
    :effect (and (at start (not (step_pending step13))) (at end (done step13))))
  
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step14)) (at start (done step48)))
    :effect (and (at start (not (step_pending step14))) (at end (done step14))))
  
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (done step15))))
  
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (done step16))))
  
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step17)) (at start (done step4)) (at start (done step13)) (at start (done step21)) (at start (done step31)))
    :effect (and (at start (not (step_pending step17))) (at end (done step17))))
  
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step18)) (at start (done step43)))
    :effect (and (at start (not (step_pending step18))) (at end (done step18))))
  
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (done step19))))
  
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (done step20))))
  
  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step21)) (at start (done step59)))
    :effect (and (at start (not (step_pending step21))) (at end (done step21))))
  
  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step22)) (at start (done step36)) (at start (done step38)) (at start (done step48)) (at start (done step57)))
    :effect (and (at start (not (step_pending step22))) (at end (done step22))))
  
  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step23)) (at start (done step46)))
    :effect (and (at start (not (step_pending step23))) (at end (done step23))))
  
  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step24)) (at start (done step37)))
    :effect (and (at start (not (step_pending step24))) (at end (done step24))))
  
  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step25)) (at start (done step5)) (at start (done step59)))
    :effect (and (at start (not (step_pending step25))) (at end (done step25))))
  
  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step26)) (at start (done step40)) (at start (done step44)) (at start (done step45)) (at start (done step62)))
    :effect (and (at start (not (step_pending step26))) (at end (done step26))))
  
  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step27)) (at start (done step26)) (at start (done step28)) (at start (done step56)) (at start (done step57)) (at start (done step62)))
    :effect (and (at start (not (step_pending step27))) (at end (done step27))))
  
  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step28)) (at start (done step24)) (at start (done step45)))
    :effect (and (at start (not (step_pending step28))) (at end (done step28))))
  
  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (done step29))))
  
  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (done step30))))
  
  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step31)) (at start (done step20)) (at start (done step29)))
    :effect (and (at start (not (step_pending step31))) (at end (done step31))))
  
  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step32)) (at start (done step18)) (at start (done step55)))
    :effect (and (at start (not (step_pending step32))) (at end (done step32))))
  
  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step33)) (at start (done step9)) (at start (done step16)) (at start (done step57)))
    :effect (and (at start (not (step_pending step33))) (at end (done step33))))
  
  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step34)) (at start (done step31)) (at start (done step39)) (at start (done step42)) (at start (done step43)))
    :effect (and (at start (not (step_pending step34))) (at end (done step34))))
  
  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step35)) (at start (done step17)))
    :effect (and (at start (not (step_pending step35))) (at end (done step35))))
  
  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step36)) (at start (done step20)) (at start (done step44)) (at start (done step48)) (at start (done step62)))
    :effect (and (at start (not (step_pending step36))) (at end (done step36))))
  
  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step37)) (at start (done step29)))
    :effect (and (at start (not (step_pending step37))) (at end (done step37))))
  
  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step38)) (at start (done step45)))
    :effect (and (at start (not (step_pending step38))) (at end (done step38))))
  
  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step39)) (at start (done step67)))
    :effect (and (at start (not (step_pending step39))) (at end (done step39))))
  
  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step40)) (at start (done step67)))
    :effect (and (at start (not (step_pending step40))) (at end (done step40))))
  
  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step41)) (at start (done step8)) (at start (done step29)) (at start (done step43)) (at start (done step44)) (at start (done step62)))
    :effect (and (at start (not (step_pending step41))) (at end (done step41))))
  
  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step42)) (at start (done step26)) (at start (done step58)))
    :effect (and (at start (not (step_pending step42))) (at end (done step42))))
  
  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 40)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (done step43))))
  
  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step44)) (at start (done step8)) (at start (done step66)))
    :effect (and (at start (not (step_pending step44))) (at end (done step44))))
  
  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (done step45))))
  
  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step46)) (at start (done step43)) (at start (done step61)))
    :effect (and (at start (not (step_pending step46))) (at end (done step46))))
  
  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step47)) (at start (done step11)) (at start (done step27)) (at start (done step50)))
    :effect (and (at start (not (step_pending step47))) (at end (done step47))))
  
  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (done step48))))
  
  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step49)) (at start (done step15)) (at start (done step30)))
    :effect (and (at start (not (step_pending step49))) (at end (done step49))))
  
  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step50)) (at start (done step1)) (at start (done step26)) (at start (done step29)) (at start (done step54)) (at start (done step66)))
    :effect (and (at start (not (step_pending step50))) (at end (done step50))))
  
  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step51)) (at start (done step20)) (at start (done step29)) (at start (done step31)))
    :effect (and (at start (not (step_pending step51))) (at end (done step51))))
  
  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step52)) (at start (done step31)) (at start (done step51)))
    :effect (and (at start (not (step_pending step52))) (at end (done step52))))
  
  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step53)) (at start (done step48)))
    :effect (and (at start (not (step_pending step53))) (at end (done step53))))
  
  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step54)) (at start (done step41)) (at start (done step44)))
    :effect (and (at start (not (step_pending step54))) (at end (done step54))))
  
  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step55)) (at start (done step51)) (at start (done step60)))
    :effect (and (at start (not (step_pending step55))) (at end (done step55))))
  
  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step56)) (at start (done step5)) (at start (done step42)))
    :effect (and (at start (not (step_pending step56))) (at end (done step56))))
  
  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step57)) (at start (done step19)) (at start (done step41)) (at start (done step43)) (at start (done step61)))
    :effect (and (at start (not (step_pending step57))) (at end (done step57))))
  
  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step58)) (at start (done step30)) (at start (done step63)) (at start (done step66)))
    :effect (and (at start (not (step_pending step58))) (at end (done step58))))
  
  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step59))
    :effect (and (at start (not (step_pending step59))) (at end (done step59))))
  
  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step60)) (at start (done step8)) (at start (done step30)) (at start (done step42)))
    :effect (and (at start (not (step_pending step60))) (at end (done step60))))
  
  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step61)) (at start (done step51)) (at start (done step63)))
    :effect (and (at start (not (step_pending step61))) (at end (done step61))))
  
  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (done step62))))
  
  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step63))
    :effect (and (at start (not (step_pending step63))) (at end (done step63))))
  
  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step64)) (at start (done step63)))
    :effect (and (at start (not (step_pending step64))) (at end (done step64))))
  
  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step65)) (at start (done step53)) (at start (done step66)))
    :effect (and (at start (not (step_pending step65))) (at end (done step65))))
  
  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step66)) (at start (done step39)))
    :effect (and (at start (not (step_pending step66))) (at end (done step66))))
  
  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step67))
    :effect (and (at start (not (step_pending step67))) (at end (done step67))))
  
  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step68)) (at start (done step18)) (at start (done step41)))
    :effect (and (at start (not (step_pending step68))) (at end (done step68))))
  
  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step69)) (at start (done step67)))
    :effect (and (at start (not (step_pending step69))) (at end (done step69))))
  
  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step70)) (at start (done step37)))
    :effect (and (at start (not (step_pending step70))) (at end (done step70))))
)