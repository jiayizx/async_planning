(define (domain ice-cream-cake)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates (pending ?s - step) (step_done ?s - step) (semantic ?s - step))

 (:durative-action do-step1
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (pending step1)) (at start (semantic step6)))
  :effect (and (at start (not (pending step1))) (at end (step_done step1)) (at end (semantic step1))))
 (:durative-action do-step2
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (pending step2)) (at start (semantic step78)))
  :effect (and (at start (not (pending step2))) (at end (step_done step2)) (at end (semantic step2))))
 (:durative-action do-step3
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step3)) (at start (semantic step40)))
  :effect (and (at start (not (pending step3))) (at end (step_done step3)) (at end (semantic step3))))
 (:durative-action do-step4
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step4)) (at start (semantic step72)))
  :effect (and (at start (not (pending step4))) (at end (step_done step4)) (at end (semantic step4))))
 (:durative-action do-step5
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step5)) (at start (semantic step19)) (at start (semantic step61)))
  :effect (and (at start (not (pending step5))) (at end (step_done step5)) (at end (semantic step5))))
 (:durative-action do-step6
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step6)) (at start (semantic step24)) (at start (semantic step31)))
  :effect (and (at start (not (pending step6))) (at end (step_done step6)) (at end (semantic step6))))
 (:durative-action do-step7
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step7)) (at start (semantic step6)) (at start (semantic step22)) (at start (semantic step37)))
  :effect (and (at start (not (pending step7))) (at end (step_done step7)) (at end (semantic step7))))
 (:durative-action do-step8
  :parameters () :duration (= ?duration 7200)
  :condition (and (at start (pending step8)) (at start (semantic step28)) (at start (semantic step62)) (at start (semantic step76)))
  :effect (and (at start (not (pending step8))) (at end (step_done step8)) (at end (semantic step8))))
 (:durative-action do-step9
  :parameters () :duration (= ?duration 1800)
  :condition (and (at start (pending step9)) (at start (semantic step50)))
  :effect (and (at start (not (pending step9))) (at end (step_done step9)) (at end (semantic step9))))
 (:durative-action do-step10
  :parameters () :duration (= ?duration 3600)
  :condition (and (at start (pending step10)) (at start (semantic step24)) (at start (semantic step44)) (at start (semantic step59)))
  :effect (and (at start (not (pending step10))) (at end (step_done step10)) (at end (semantic step10))))
 (:durative-action do-step11
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step11)) (at start (semantic step15)) (at start (semantic step24)) (at start (semantic step29)) (at start (semantic step71)) (at start (semantic step72)))
  :effect (and (at start (not (pending step11))) (at end (step_done step11)) (at end (semantic step11))))
 (:durative-action do-step12
  :parameters () :duration (= ?duration 480)
  :condition (and (at start (pending step12)) (at start (semantic step10)) (at start (semantic step37)) (at start (semantic step48)) (at start (semantic step71)))
  :effect (and (at start (not (pending step12))) (at end (step_done step12)) (at end (semantic step12))))
 (:durative-action do-step13
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step13)) (at start (semantic step31)) (at start (semantic step45)))
  :effect (and (at start (not (pending step13))) (at end (step_done step13)) (at end (semantic step13))))
 (:durative-action do-step14
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step14)) (at start (semantic step22)) (at start (semantic step28)) (at start (semantic step29)) (at start (semantic step68)) (at start (semantic step80)))
  :effect (and (at start (not (pending step14))) (at end (step_done step14)) (at end (semantic step14))))
 (:durative-action do-step15
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (pending step15)) (at start (semantic step13)))
  :effect (and (at start (not (pending step15))) (at end (step_done step15)) (at end (semantic step15))))
 (:durative-action do-step16
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step16)) (at start (semantic step7)) (at start (semantic step10)) (at start (semantic step33)) (at start (semantic step38)))
  :effect (and (at start (not (pending step16))) (at end (step_done step16)) (at end (semantic step16))))
 (:durative-action do-step17
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step17)) (at start (semantic step5)) (at start (semantic step54)))
  :effect (and (at start (not (pending step17))) (at end (step_done step17)) (at end (semantic step17))))
 (:durative-action do-step18
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step18)) (at start (semantic step17)) (at start (semantic step19)) (at start (semantic step23)) (at start (semantic step31)) (at start (semantic step40)))
  :effect (and (at start (not (pending step18))) (at end (step_done step18)) (at end (semantic step18))))
 (:durative-action do-step19
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step19)) (at start (semantic step4)) (at start (semantic step9)) (at start (semantic step24)) (at start (semantic step59)))
  :effect (and (at start (not (pending step19))) (at end (step_done step19)) (at end (semantic step19))))
 (:durative-action do-step20
  :parameters () :duration (= ?duration 600)
  :condition (at start (pending step20))
  :effect (and (at start (not (pending step20))) (at end (step_done step20)) (at end (semantic step20))))
 (:durative-action do-step21
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step21)) (at start (semantic step32)) (at start (semantic step64)) (at start (semantic step68)))
  :effect (and (at start (not (pending step21))) (at end (step_done step21)) (at end (semantic step21))))
 (:durative-action do-step22
  :parameters () :duration (= ?duration 600)
  :condition (at start (pending step22))
  :effect (and (at start (not (pending step22))) (at end (step_done step22)) (at end (semantic step22))))
 (:durative-action do-step23
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step23)) (at start (semantic step3)) (at start (semantic step40)) (at start (semantic step76)))
  :effect (and (at start (not (pending step23))) (at end (step_done step23)) (at end (semantic step23))))
 (:durative-action do-step24
  :parameters () :duration (= ?duration 900)
  :condition (at start (pending step24))
  :effect (and (at start (not (pending step24))) (at end (step_done step24)) (at end (semantic step24))))
 (:durative-action do-step25
  :parameters () :duration (= ?duration 300)
  :condition (at start (pending step25))
  :effect (and (at start (not (pending step25))) (at end (step_done step25)) (at end (semantic step25))))
 (:durative-action do-step26
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step26)) (at start (semantic step29)))
  :effect (and (at start (not (pending step26))) (at end (step_done step26)) (at end (semantic step26))))
 (:durative-action do-step27
  :parameters () :duration (= ?duration 14400)
  :condition (and (at start (pending step27)) (at start (semantic step26)) (at start (semantic step29)) (at start (semantic step36)) (at start (semantic step56)) (at start (semantic step78)))
  :effect (and (at start (not (pending step27))) (at end (step_done step27)) (at end (semantic step27))))
 (:durative-action do-step28
  :parameters () :duration (= ?duration 2700)
  :condition (at start (pending step28))
  :effect (and (at start (not (pending step28))) (at end (step_done step28)) (at end (semantic step28))))
 (:durative-action do-step29
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (pending step29)) (at start (semantic step54)))
  :effect (and (at start (not (pending step29))) (at end (step_done step29)) (at end (semantic step29))))
 (:durative-action do-step30
  :parameters () :duration (= ?duration 300)
  :condition (at start (pending step30))
  :effect (and (at start (not (pending step30))) (at end (step_done step30)) (at end (semantic step30))))
 (:durative-action do-step31
  :parameters () :duration (= ?duration 60)
  :condition (at start (pending step31))
  :effect (and (at start (not (pending step31))) (at end (step_done step31)) (at end (semantic step31))))
 (:durative-action do-step32
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step32)) (at start (semantic step19)) (at start (semantic step25)) (at start (semantic step29)) (at start (semantic step42)))
  :effect (and (at start (not (pending step32))) (at end (step_done step32)) (at end (semantic step32))))
 (:durative-action do-step33
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step33)) (at start (semantic step43)) (at start (semantic step63)))
  :effect (and (at start (not (pending step33))) (at end (step_done step33)) (at end (semantic step33))))
 (:durative-action do-step34
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step34)) (at start (semantic step59)))
  :effect (and (at start (not (pending step34))) (at end (step_done step34)) (at end (semantic step34))))
 (:durative-action do-step35
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (pending step35)) (at start (semantic step48)))
  :effect (and (at start (not (pending step35))) (at end (step_done step35)) (at end (semantic step35))))
 (:durative-action do-step36
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step36)) (at start (semantic step9)) (at start (semantic step19)) (at start (semantic step22)) (at start (semantic step29)) (at start (semantic step44)) (at start (semantic step61)) (at start (semantic step67)))
  :effect (and (at start (not (pending step36))) (at end (step_done step36)) (at end (semantic step36))))
 (:durative-action do-step37
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step37)) (at start (semantic step31)))
  :effect (and (at start (not (pending step37))) (at end (step_done step37)) (at end (semantic step37))))
 (:durative-action do-step38
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step38)) (at start (semantic step23)) (at start (semantic step47)) (at start (semantic step50)) (at start (semantic step51)) (at start (semantic step61)) (at start (semantic step69)))
  :effect (and (at start (not (pending step38))) (at end (step_done step38)) (at end (semantic step38))))
 (:durative-action do-step39
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step39)) (at start (semantic step4)) (at start (semantic step29)))
  :effect (and (at start (not (pending step39))) (at end (step_done step39)) (at end (semantic step39))))
 (:durative-action do-step40
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step40)) (at start (semantic step66)))
  :effect (and (at start (not (pending step40))) (at end (step_done step40)) (at end (semantic step40))))
 (:durative-action do-step41
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step41)) (at start (semantic step3)) (at start (semantic step42)) (at start (semantic step61)))
  :effect (and (at start (not (pending step41))) (at end (step_done step41)) (at end (semantic step41))))
 (:durative-action do-step42
  :parameters () :duration (= ?duration 480)
  :condition (and (at start (pending step42)) (at start (semantic step24)) (at start (semantic step67)))
  :effect (and (at start (not (pending step42))) (at end (step_done step42)) (at end (semantic step42))))
 (:durative-action do-step43
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step43)) (at start (semantic step24)) (at start (semantic step26)) (at start (semantic step72)))
  :effect (and (at start (not (pending step43))) (at end (step_done step43)) (at end (semantic step43))))
 (:durative-action do-step44
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step44)) (at start (semantic step77)))
  :effect (and (at start (not (pending step44))) (at end (step_done step44)) (at end (semantic step44))))
 (:durative-action do-step45
  :parameters () :duration (= ?duration 1800)
  :condition (and (at start (pending step45)) (at start (semantic step9)) (at start (semantic step20)))
  :effect (and (at start (not (pending step45))) (at end (step_done step45)) (at end (semantic step45))))
 (:durative-action do-step46
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step46)) (at start (semantic step32)) (at start (semantic step51)) (at start (semantic step54)) (at start (semantic step73)))
  :effect (and (at start (not (pending step46))) (at end (step_done step46)) (at end (semantic step46))))
 (:durative-action do-step47
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step47)) (at start (semantic step34)) (at start (semantic step37)))
  :effect (and (at start (not (pending step47))) (at end (step_done step47)) (at end (semantic step47))))
 (:durative-action do-step48
  :parameters () :duration (= ?duration 45)
  :condition (at start (pending step48))
  :effect (and (at start (not (pending step48))) (at end (step_done step48)) (at end (semantic step48))))
 (:durative-action do-step49
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (pending step49)) (at start (semantic step12)) (at start (semantic step33)) (at start (semantic step36)) (at start (semantic step42)) (at start (semantic step63)))
  :effect (and (at start (not (pending step49))) (at end (step_done step49)) (at end (semantic step49))))
 (:durative-action do-step50
  :parameters () :duration (= ?duration 600)
  :condition (at start (pending step50))
  :effect (and (at start (not (pending step50))) (at end (step_done step50)) (at end (semantic step50))))
 (:durative-action do-step51
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step51)) (at start (semantic step3)) (at start (semantic step4)) (at start (semantic step6)) (at start (semantic step24)) (at start (semantic step26)))
  :effect (and (at start (not (pending step51))) (at end (step_done step51)) (at end (semantic step51))))
 (:durative-action do-step52
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step52)) (at start (semantic step4)) (at start (semantic step13)) (at start (semantic step14)) (at start (semantic step28)) (at start (semantic step48)) (at start (semantic step69)) (at start (semantic step75)))
  :effect (and (at start (not (pending step52))) (at end (step_done step52)) (at end (semantic step52))))
 (:durative-action do-step53
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step53)) (at start (semantic step29)) (at start (semantic step30)) (at start (semantic step44)) (at start (semantic step51)))
  :effect (and (at start (not (pending step53))) (at end (step_done step53)) (at end (semantic step53))))
 (:durative-action do-step54
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step54)) (at start (semantic step9)) (at start (semantic step59)) (at start (semantic step66)))
  :effect (and (at start (not (pending step54))) (at end (step_done step54)) (at end (semantic step54))))
 (:durative-action do-step55
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step55)) (at start (semantic step1)) (at start (semantic step8)) (at start (semantic step30)) (at start (semantic step57)))
  :effect (and (at start (not (pending step55))) (at end (step_done step55)) (at end (semantic step55))))
 (:durative-action do-step56
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step56)) (at start (semantic step15)) (at start (semantic step20)))
  :effect (and (at start (not (pending step56))) (at end (step_done step56)) (at end (semantic step56))))
 (:durative-action do-step57
  :parameters () :duration (= ?duration 21600)
  :condition (and (at start (pending step57)) (at start (semantic step2)) (at start (semantic step34)) (at start (semantic step41)) (at start (semantic step51)) (at start (semantic step56)) (at start (semantic step65)) (at start (semantic step67)) (at start (semantic step79)))
  :effect (and (at start (not (pending step57))) (at end (step_done step57)) (at end (semantic step57))))
 (:durative-action do-step58
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step58)) (at start (semantic step2)) (at start (semantic step16)) (at start (semantic step32)) (at start (semantic step35)) (at start (semantic step75)) (at start (semantic step77)))
  :effect (and (at start (not (pending step58))) (at end (step_done step58)) (at end (semantic step58))))
 (:durative-action do-step59
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step59)) (at start (semantic step50)))
  :effect (and (at start (not (pending step59))) (at end (step_done step59)) (at end (semantic step59))))
 (:durative-action do-step60
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step60)) (at start (semantic step30)) (at start (semantic step47)) (at start (semantic step77)) (at start (semantic step80)))
  :effect (and (at start (not (pending step60))) (at end (step_done step60)) (at end (semantic step60))))
 (:durative-action do-step61
  :parameters () :duration (= ?duration 600)
  :condition (at start (pending step61))
  :effect (and (at start (not (pending step61))) (at end (step_done step61)) (at end (semantic step61))))
 (:durative-action do-step62
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step62)) (at start (semantic step7)) (at start (semantic step9)) (at start (semantic step19)) (at start (semantic step65)))
  :effect (and (at start (not (pending step62))) (at end (step_done step62)) (at end (semantic step62))))
 (:durative-action do-step63
  :parameters () :duration (= ?duration 720)
  :condition (and (at start (pending step63)) (at start (semantic step10)) (at start (semantic step34)) (at start (semantic step48)) (at start (semantic step61)) (at start (semantic step73)) (at start (semantic step79)))
  :effect (and (at start (not (pending step63))) (at end (step_done step63)) (at end (semantic step63))))
 (:durative-action do-step64
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (pending step64)) (at start (semantic step4)))
  :effect (and (at start (not (pending step64))) (at end (step_done step64)) (at end (semantic step64))))
 (:durative-action do-step65
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (pending step65)) (at start (semantic step12)) (at start (semantic step80)))
  :effect (and (at start (not (pending step65))) (at end (step_done step65)) (at end (semantic step65))))
 (:durative-action do-step66
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (pending step66)) (at start (semantic step50)))
  :effect (and (at start (not (pending step66))) (at end (step_done step66)) (at end (semantic step66))))
 (:durative-action do-step67
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step67)) (at start (semantic step2)))
  :effect (and (at start (not (pending step67))) (at end (step_done step67)) (at end (semantic step67))))
 (:durative-action do-step68
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step68)) (at start (semantic step1)) (at start (semantic step54)) (at start (semantic step67)))
  :effect (and (at start (not (pending step68))) (at end (step_done step68)) (at end (semantic step68))))
 (:durative-action do-step69
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step69)) (at start (semantic step30)) (at start (semantic step32)))
  :effect (and (at start (not (pending step69))) (at end (step_done step69)) (at end (semantic step69))))
 (:durative-action do-step70
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (pending step70)) (at start (semantic step8)) (at start (semantic step27)) (at start (semantic step48)) (at start (semantic step56)) (at start (semantic step63)) (at start (semantic step67)) (at start (semantic step77)))
  :effect (and (at start (not (pending step70))) (at end (step_done step70)) (at end (semantic step70))))
 (:durative-action do-step71
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (pending step71)) (at start (semantic step37)) (at start (semantic step50)) (at start (semantic step77)))
  :effect (and (at start (not (pending step71))) (at end (step_done step71)) (at end (semantic step71))))
 (:durative-action do-step72
  :parameters () :duration (= ?duration 300)
  :condition (at start (pending step72))
  :effect (and (at start (not (pending step72))) (at end (step_done step72)) (at end (semantic step72))))
 (:durative-action do-step73
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (pending step73)) (at start (semantic step20)) (at start (semantic step24)))
  :effect (and (at start (not (pending step73))) (at end (step_done step73)) (at end (semantic step73))))
 (:durative-action do-step74
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (pending step74)) (at start (semantic step43)))
  :effect (and (at start (not (pending step74))) (at end (step_done step74)) (at end (semantic step74))))
 (:durative-action do-step75
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step75)) (at start (semantic step6)) (at start (semantic step13)) (at start (semantic step29)) (at start (semantic step37)) (at start (semantic step49)) (at start (semantic step79)))
  :effect (and (at start (not (pending step75))) (at end (step_done step75)) (at end (semantic step75))))
 (:durative-action do-step76
  :parameters () :duration (= ?duration 480)
  :condition (and (at start (pending step76)) (at start (semantic step9)) (at start (semantic step22)))
  :effect (and (at start (not (pending step76))) (at end (step_done step76)) (at end (semantic step76))))
 (:durative-action do-step77
  :parameters () :duration (= ?duration 3600)
  :condition (at start (pending step77))
  :effect (and (at start (not (pending step77))) (at end (step_done step77)) (at end (semantic step77))))
 (:durative-action do-step78
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (pending step78)) (at start (semantic step39)) (at start (semantic step77)))
  :effect (and (at start (not (pending step78))) (at end (step_done step78)) (at end (semantic step78))))
 (:durative-action do-step79
  :parameters () :duration (= ?duration 600)
  :condition (at start (pending step79))
  :effect (and (at start (not (pending step79))) (at end (step_done step79)) (at end (semantic step79))))
 (:durative-action do-step80
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (pending step80)) (at start (semantic step12)) (at start (semantic step25)) (at start (semantic step40)) (at start (semantic step77)))
  :effect (and (at start (not (pending step80))) (at end (step_done step80)) (at end (semantic step80))))
)