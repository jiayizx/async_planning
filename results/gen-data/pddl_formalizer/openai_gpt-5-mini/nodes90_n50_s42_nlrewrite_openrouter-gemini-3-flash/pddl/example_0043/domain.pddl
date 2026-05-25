(define (domain counseling_signup)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_pred ?s - step)
  )

  (:durative-action do-step1
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step1)) (at start (done_pred step24)) (at start (done_pred step35)) (at start (done_pred step42)) (at start (done_pred step47)) (at start (done_pred step82)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done_pred step1)))
  )

  (:durative-action do-step2
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (done_pred step79)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done_pred step2)))
  )

  (:durative-action do-step3
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step3)) (at start (done_pred step4)) (at start (done_pred step55)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done_pred step3)))
  )

  (:durative-action do-step4
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (done_pred step78)) (at start (done_pred step81)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done_pred step4)))
  )

  (:durative-action do-step5
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (done_pred step7)) (at start (done_pred step90)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done_pred step5)))
  )

  (:durative-action do-step6
    :duration (= ?duration 3600)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done_pred step6)))
  )

  (:durative-action do-step7
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step7)) (at start (done_pred step53)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done_pred step7)))
  )

  (:durative-action do-step8
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (done_pred step20)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done_pred step8)))
  )

  (:durative-action do-step9
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (done_pred step23)) (at start (done_pred step37)) (at start (done_pred step53)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done_pred step9)))
  )

  (:durative-action do-step10
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (done_pred step1)) (at start (done_pred step36)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done_pred step10)))
  )

  (:durative-action do-step11
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step11)) (at start (done_pred step48)) (at start (done_pred step49)) (at start (done_pred step74)) (at start (done_pred step75)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done_pred step11)))
  )

  (:durative-action do-step12
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step12)) (at start (done_pred step1)) (at start (done_pred step6)) (at start (done_pred step38)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done_pred step12)))
  )

  (:durative-action do-step13
    :duration (= ?duration 600)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done_pred step13)))
  )

  (:durative-action do-step14
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step14)) (at start (done_pred step6)) (at start (done_pred step18)) (at start (done_pred step20)) (at start (done_pred step38)) (at start (done_pred step61)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done_pred step14)))
  )

  (:durative-action do-step15
    :duration (= ?duration 1800)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done_pred step15)))
  )

  (:durative-action do-step16
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step16)) (at start (done_pred step28)) (at start (done_pred step41)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done_pred step16)))
  )

  (:durative-action do-step17
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (done_pred step2)) (at start (done_pred step15)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done_pred step17)))
  )

  (:durative-action do-step18
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step18)) (at start (done_pred step70)) (at start (done_pred step81)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done_pred step18)))
  )

  (:durative-action do-step19
    :duration (= ?duration 1800)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done_pred step19)))
  )

  (:durative-action do-step20
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (done_pred step19)) (at start (done_pred step57)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done_pred step20)))
  )

  (:durative-action do-step21
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step21)) (at start (done_pred step20)) (at start (done_pred step32)) (at start (done_pred step53)) (at start (done_pred step75)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done_pred step21)))
  )

  (:durative-action do-step22
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step22)) (at start (done_pred step13)) (at start (done_pred step63)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done_pred step22)))
  )

  (:durative-action do-step23
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step23)) (at start (done_pred step75)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done_pred step23)))
  )

  (:durative-action do-step24
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step24)) (at start (done_pred step70)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done_pred step24)))
  )

  (:durative-action do-step25
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step25)) (at start (done_pred step8)) (at start (done_pred step13)) (at start (done_pred step82)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done_pred step25)))
  )

  (:durative-action do-step26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (done_pred step8)) (at start (done_pred step72)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done_pred step26)))
  )

  (:durative-action do-step27
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step27)) (at start (done_pred step75)) (at start (done_pred step83)) (at start (done_pred step89)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done_pred step27)))
  )

  (:durative-action do-step28
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (done_pred step90)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done_pred step28)))
  )

  (:durative-action do-step29
    :duration (= ?duration 1800)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done_pred step29)))
  )

  (:durative-action do-step30
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step30)) (at start (done_pred step33)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done_pred step30)))
  )

  (:durative-action do-step31
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step31)) (at start (done_pred step8)) (at start (done_pred step17)) (at start (done_pred step32)) (at start (done_pred step37)) (at start (done_pred step44)) (at start (done_pred step48)) (at start (done_pred step53)) (at start (done_pred step75)) (at start (done_pred step83)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done_pred step31)))
  )

  (:durative-action do-step32
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step32)) (at start (done_pred step58)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done_pred step32)))
  )

  (:durative-action do-step33
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step33)) (at start (done_pred step35)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done_pred step33)))
  )

  (:durative-action do-step34
    :duration (= ?duration 2400)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done_pred step34)))
  )

  (:durative-action do-step35
    :duration (= ?duration 3600)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done_pred step35)))
  )

  (:durative-action do-step36
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step36)) (at start (done_pred step17)) (at start (done_pred step37)) (at start (done_pred step41)) (at start (done_pred step75)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done_pred step36)))
  )

  (:durative-action do-step37
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step37)) (at start (done_pred step51)) (at start (done_pred step70)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done_pred step37)))
  )

  (:durative-action do-step38
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step38)) (at start (done_pred step13)) (at start (done_pred step73)) (at start (done_pred step82)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done_pred step38)))
  )

  (:durative-action do-step39
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step39)) (at start (done_pred step13)) (at start (done_pred step33)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done_pred step39)))
  )

  (:durative-action do-step40
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step40)) (at start (done_pred step4)) (at start (done_pred step13)) (at start (done_pred step62)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done_pred step40)))
  )

  (:durative-action do-step41
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step41)) (at start (done_pred step15)) (at start (done_pred step65)) (at start (done_pred step37)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done_pred step41)))
  )

  (:durative-action do-step42
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step42)) (at start (done_pred step13)) (at start (done_pred step15)) (at start (done_pred step55)) (at start (done_pred step48)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done_pred step42)))
  )

  (:durative-action do-step43
    :duration (= ?duration 1800)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done_pred step43)))
  )

  (:durative-action do-step44
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step44)) (at start (done_pred step4)) (at start (done_pred step57)) (at start (done_pred step77)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done_pred step44)))
  )

  (:durative-action do-step45
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step45)) (at start (done_pred step18)) (at start (done_pred step61)) (at start (done_pred step69)) (at start (done_pred step89)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done_pred step45)))
  )

  (:durative-action do-step46
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step46)) (at start (done_pred step3)) (at start (done_pred step18)) (at start (done_pred step69)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done_pred step46)))
  )

  (:durative-action do-step47
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step47)) (at start (done_pred step34)) (at start (done_pred step41)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done_pred step47)))
  )

  (:durative-action do-step48
    :duration (= ?duration 600)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done_pred step48)))
  )

  (:durative-action do-step49
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step49)) (at start (done_pred step13)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done_pred step49)))
  )

  (:durative-action do-step50
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step50)) (at start (done_pred step55)) (at start (done_pred step69)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done_pred step50)))
  )

  (:durative-action do-step51
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step51)) (at start (done_pred step23)) (at start (done_pred step81)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done_pred step51)))
  )

  (:durative-action do-step52
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step52)) (at start (done_pred step4)) (at start (done_pred step64)) (at start (done_pred step77)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done_pred step52)))
  )

  (:durative-action do-step53
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step53)) (at start (done_pred step81)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done_pred step53)))
  )

  (:durative-action do-step54
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step54)) (at start (done_pred step26)) (at start (done_pred step38)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done_pred step54)))
  )

  (:durative-action do-step55
    :duration (= ?duration 1200)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done_pred step55)))
  )

  (:durative-action do-step56
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step56)) (at start (done_pred step23)) (at start (done_pred step34)) (at start (done_pred step47)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done_pred step56)))
  )

  (:durative-action do-step57
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step57)) (at start (done_pred step13)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done_pred step57)))
  )

  (:durative-action do-step58
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step58)) (at start (done_pred step36)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done_pred step58)))
  )

  (:durative-action do-step59
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step59)) (at start (done_pred step16)) (at start (done_pred step20)) (at start (done_pred step28)) (at start (done_pred step50)) (at start (done_pred step72)) (at start (done_pred step74)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done_pred step59)))
  )

  (:durative-action do-step60
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step60)) (at start (done_pred step4)) (at start (done_pred step11)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done_pred step60)))
  )

  (:durative-action do-step61
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step61)) (at start (done_pred step11)) (at start (done_pred step22)) (at start (done_pred step23)) (at start (done_pred step83)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done_pred step61)))
  )

  (:durative-action do-step62
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step62)) (at start (done_pred step7)) (at start (done_pred step28)) (at start (done_pred step33)) (at start (done_pred step36)) (at start (done_pred step41)) (at start (done_pred step44)) (at start (done_pred step46)) (at start (done_pred step55)) (at start (done_pred step63)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done_pred step62)))
  )

  (:durative-action do-step63
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step63)) (at start (done_pred step2)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done_pred step63)))
  )

  (:durative-action do-step64
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step64)) (at start (done_pred step11)) (at start (done_pred step12)) (at start (done_pred step21)) (at start (done_pred step55)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done_pred step64)))
  )

  (:durative-action do-step65
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step65)) (at start (done_pred step35)) (at start (done_pred step78)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done_pred step65)))
  )

  (:durative-action do-step66
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step66)) (at start (done_pred step39)) (at start (done_pred step47)) (at start (done_pred step54)) (at start (done_pred step75)) (at start (done_pred step89)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done_pred step66)))
  )

  (:durative-action do-step67
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step67)) (at start (done_pred step12)) (at start (done_pred step23)) (at start (done_pred step25)) (at start (done_pred step48)) (at start (done_pred step50)) (at start (done_pred step64)) (at start (done_pred step71)) (at start (done_pred step85)) (at start (done_pred step90)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done_pred step67)))
  )

  (:durative-action do-step68
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step68)) (at start (done_pred step1)) (at start (done_pred step39)) (at start (done_pred step43)) (at start (done_pred step59)) (at start (done_pred step89)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done_pred step68)))
  )

  (:durative-action do-step69
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step69)) (at start (done_pred step20)) (at start (done_pred step28)) (at start (done_pred step48)) (at start (done_pred step57)) (at start (done_pred step74)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done_pred step69)))
  )

  (:durative-action do-step70
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step70)) (at start (done_pred step29)) (at start (done_pred step90)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done_pred step70)))
  )

  (:durative-action do-step71
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step71)) (at start (done_pred step11)) (at start (done_pred step13)) (at start (done_pred step41)) (at start (done_pred step90)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (done_pred step71)))
  )

  (:durative-action do-step72
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step72)) (at start (done_pred step13)) (at start (done_pred step29)) (at start (done_pred step38)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (done_pred step72)))
  )

  (:durative-action do-step73
    :duration (= ?duration 600)
    :condition (at start (step_pending step73))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (done_pred step73)))
  )

  (:durative-action do-step74
    :duration (= ?duration 600)
    :condition (at start (step_pending step74))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (done_pred step74)))
  )

  (:durative-action do-step75
    :duration (= ?duration 300)
    :condition (at start (step_pending step75))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (done_pred step75)))
  )

  (:durative-action do-step76
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step76)) (at start (done_pred step23)) (at start (done_pred step41)) (at start (done_pred step43)) (at start (done_pred step79)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (done_pred step76)))
  )

  (:durative-action do-step77
    :duration (= ?duration 300)
    :condition (at start (step_pending step77))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (done_pred step77)))
  )

  (:durative-action do-step78
    :duration (= ?duration 300)
    :condition (at start (step_pending step78))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (done_pred step78)))
  )

  (:durative-action do-step79
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step79)) (at start (done_pred step48)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (done_pred step79)))
  )

  (:durative-action do-step80
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step80)) (at start (done_pred step11)) (at start (done_pred step31)) (at start (done_pred step44)) (at start (done_pred step47)) (at start (done_pred step48)) (at start (done_pred step49)) (at start (done_pred step55)) (at start (done_pred step65)) (at start (done_pred step88)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (done_pred step80)))
  )

  (:durative-action do-step81
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step81)) (at start (done_pred step15)) (at start (done_pred step23)) (at start (done_pred step63)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (done_pred step81)))
  )

  (:durative-action do-step82
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step82)) (at start (done_pred step17)) (at start (done_pred step48)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (done_pred step82)))
  )

  (:durative-action do-step83
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step83)) (at start (done_pred step13)) (at start (done_pred step43)) (at start (done_pred step57)) (at start (done_pred step76)) (at start (done_pred step77)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (done_pred step83)))
  )

  (:durative-action do-step84
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step84)) (at start (done_pred step6)) (at start (done_pred step11)) (at start (done_pred step18)) (at start (done_pred step20)) (at start (done_pred step22)) (at start (done_pred step36)) (at start (done_pred step37)) (at start (done_pred step65)) (at start (done_pred step73)) (at start (done_pred step75)) (at start (done_pred step83)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (done_pred step84)))
  )

  (:durative-action do-step85
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step85)) (at start (done_pred step20)) (at start (done_pred step54)) (at start (done_pred step79)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (done_pred step85)))
  )

  (:durative-action do-step86
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step86)) (at start (done_pred step43)) (at start (done_pred step46)) (at start (done_pred step71)) (at start (done_pred step76)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (done_pred step86)))
  )

  (:durative-action do-step87
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step87)) (at start (done_pred step78)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (done_pred step87)))
  )

  (:durative-action do-step88
    :duration (= ?duration 300)
    :condition (at start (step_pending step88))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (done_pred step88)))
  )

  (:durative-action do-step89
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step89)) (at start (done_pred step20)) (at start (done_pred step31)) (at start (done_pred step51)) (at start (done_pred step55)) (at start (done_pred step74)) (at start (done_pred step79)) (at start (done_pred step84)) (at start (done_pred step88)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (done_pred step89)))
  )

  (:durative-action do-step90
    :duration (= ?duration 600)
    :condition (at start (step_pending step90))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (done_pred step90)))
  )

)
