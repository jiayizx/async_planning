(define (domain buy_chocolate)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (done ?s - step)
    (result ?s - step)
  )
  (:durative-action do_step1
    :duration (= ?duration 600)
    :condition (and (at start (pending step1)) (at start (result step10)) (at start (result step27)) (at start (result step36)))
    :effect (and (at start (not (pending step1))) (at end (done step1)) (at end (result step1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (and (at start (pending step2)) (at start (result step50)))
    :effect (and (at start (not (pending step2))) (at end (done step2)) (at end (result step2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 300)
    :condition (and (at start (pending step3)) (at start (result step45)) (at start (result step61)) (at start (result step76)))
    :effect (and (at start (not (pending step3))) (at end (done step3)) (at end (result step3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 300)
    :condition (and (at start (pending step4)) (at start (result step14)) (at start (result step20)) (at start (result step45)) (at start (result step57)) (at start (result step59)))
    :effect (and (at start (not (pending step4))) (at end (done step4)) (at end (result step4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 1200)
    :condition (at start (pending step5))
    :effect (and (at start (not (pending step5))) (at end (done step5)) (at end (result step5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (and (at start (pending step6)) (at start (result step67)))
    :effect (and (at start (not (pending step6))) (at end (done step6)) (at end (result step6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 1800)
    :condition (and (at start (pending step7)) (at start (result step71)))
    :effect (and (at start (not (pending step7))) (at end (done step7)) (at end (result step7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 900)
    :condition (at start (pending step8))
    :effect (and (at start (not (pending step8))) (at end (done step8)) (at end (result step8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 300)
    :condition (and (at start (pending step9)) (at start (result step24)) (at start (result step29)) (at start (result step38)) (at start (result step40)) (at start (result step56)) (at start (result step65)) (at start (result step67)) (at start (result step71)) (at start (result step77)))
    :effect (and (at start (not (pending step9))) (at end (done step9)) (at end (result step9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 1200)
    :condition (and (at start (pending step10)) (at start (result step17)) (at start (result step46)) (at start (result step66)))
    :effect (and (at start (not (pending step10))) (at end (done step10)) (at end (result step10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 120)
    :condition (and (at start (pending step11)) (at start (result step15)) (at start (result step66)))
    :effect (and (at start (not (pending step11))) (at end (done step11)) (at end (result step11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 600)
    :condition (and (at start (pending step12)) (at start (result step75)))
    :effect (and (at start (not (pending step12))) (at end (done step12)) (at end (result step12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 120)
    :condition (and (at start (pending step13)) (at start (result step75)))
    :effect (and (at start (not (pending step13))) (at end (done step13)) (at end (result step13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 120)
    :condition (and (at start (pending step14)) (at start (result step22)) (at start (result step36)))
    :effect (and (at start (not (pending step14))) (at end (done step14)) (at end (result step14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 300)
    :condition (and (at start (pending step15)) (at start (result step1)) (at start (result step5)) (at start (result step10)) (at start (result step48)) (at start (result step60)) (at start (result step67)))
    :effect (and (at start (not (pending step15))) (at end (done step15)) (at end (result step15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 300)
    :condition (and (at start (pending step16)) (at start (result step22)))
    :effect (and (at start (not (pending step16))) (at end (done step16)) (at end (result step16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 300)
    :condition (at start (pending step17))
    :effect (and (at start (not (pending step17))) (at end (done step17)) (at end (result step17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 600)
    :condition (and (at start (pending step18)) (at start (result step23)) (at start (result step57)))
    :effect (and (at start (not (pending step18))) (at end (done step18)) (at end (result step18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 900)
    :condition (and (at start (pending step19)) (at start (result step17)) (at start (result step27)))
    :effect (and (at start (not (pending step19))) (at end (done step19)) (at end (result step19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 300)
    :condition (and (at start (pending step20)) (at start (result step6)) (at start (result step57)))
    :effect (and (at start (not (pending step20))) (at end (done step20)) (at end (result step20)))
  )
  (:durative-action do_step21
    :duration (= ?duration 180)
    :condition (and (at start (pending step21)) (at start (result step61)) (at start (result step80)))
    :effect (and (at start (not (pending step21))) (at end (done step21)) (at end (result step21)))
  )
  (:durative-action do_step22
    :duration (= ?duration 600)
    :condition (and (at start (pending step22)) (at start (result step35)) (at start (result step36)) (at start (result step51)))
    :effect (and (at start (not (pending step22))) (at end (done step22)) (at end (result step22)))
  )
  (:durative-action do_step23
    :duration (= ?duration 3600)
    :condition (at start (pending step23))
    :effect (and (at start (not (pending step23))) (at end (done step23)) (at end (result step23)))
  )
  (:durative-action do_step24
    :duration (= ?duration 900)
    :condition (and (at start (pending step24)) (at start (result step21)) (at start (result step29)) (at start (result step57)) (at start (result step75)))
    :effect (and (at start (not (pending step24))) (at end (done step24)) (at end (result step24)))
  )
  (:durative-action do_step25
    :duration (= ?duration 1200)
    :condition (and (at start (pending step25)) (at start (result step7)) (at start (result step17)) (at start (result step20)) (at start (result step36)) (at start (result step37)) (at start (result step54)) (at start (result step63)))
    :effect (and (at start (not (pending step25))) (at end (done step25)) (at end (result step25)))
  )
  (:durative-action do_step26
    :duration (= ?duration 300)
    :condition (and (at start (pending step26)) (at start (result step8)) (at start (result step20)) (at start (result step33)) (at start (result step40)) (at start (result step57)) (at start (result step77)))
    :effect (and (at start (not (pending step26))) (at end (done step26)) (at end (result step26)))
  )
  (:durative-action do_step27
    :duration (= ?duration 1800)
    :condition (and (at start (pending step27)) (at start (result step69)))
    :effect (and (at start (not (pending step27))) (at end (done step27)) (at end (result step27)))
  )
  (:durative-action do_step28
    :duration (= ?duration 600)
    :condition (and (at start (pending step28)) (at start (result step24)) (at start (result step61)) (at start (result step72)) (at start (result step75)))
    :effect (and (at start (not (pending step28))) (at end (done step28)) (at end (result step28)))
  )
  (:durative-action do_step29
    :duration (= ?duration 2700)
    :condition (and (at start (pending step29)) (at start (result step46)) (at start (result step69)))
    :effect (and (at start (not (pending step29))) (at end (done step29)) (at end (result step29)))
  )
  (:durative-action do_step30
    :duration (= ?duration 300)
    :condition (and (at start (pending step30)) (at start (result step7)) (at start (result step44)) (at start (result step54)))
    :effect (and (at start (not (pending step30))) (at end (done step30)) (at end (result step30)))
  )
  (:durative-action do_step31
    :duration (= ?duration 300)
    :condition (and (at start (pending step31)) (at start (result step53)) (at start (result step57)))
    :effect (and (at start (not (pending step31))) (at end (done step31)) (at end (result step31)))
  )
  (:durative-action do_step32
    :duration (= ?duration 120)
    :condition (and (at start (pending step32)) (at start (result step2)) (at start (result step16)) (at start (result step49)) (at start (result step54)) (at start (result step66)) (at start (result step73)))
    :effect (and (at start (not (pending step32))) (at end (done step32)) (at end (result step32)))
  )
  (:durative-action do_step33
    :duration (= ?duration 300)
    :condition (and (at start (pending step33)) (at start (result step8)) (at start (result step23)))
    :effect (and (at start (not (pending step33))) (at end (done step33)) (at end (result step33)))
  )
  (:durative-action do_step34
    :duration (= ?duration 120)
    :condition (and (at start (pending step34)) (at start (result step21)) (at start (result step37)) (at start (result step58)) (at start (result step69)) (at start (result step80)))
    :effect (and (at start (not (pending step34))) (at end (done step34)) (at end (result step34)))
  )
  (:durative-action do_step35
    :duration (= ?duration 1500)
    :condition (at start (pending step35))
    :effect (and (at start (not (pending step35))) (at end (done step35)) (at end (result step35)))
  )
  (:durative-action do_step36
    :duration (= ?duration 120)
    :condition (and (at start (pending step36)) (at start (result step54)) (at start (result step80)))
    :effect (and (at start (not (pending step36))) (at end (done step36)) (at end (result step36)))
  )
  (:durative-action do_step37
    :duration (= ?duration 600)
    :condition (and (at start (pending step37)) (at start (result step3)) (at start (result step6)) (at start (result step45)) (at start (result step50)) (at start (result step67)))
    :effect (and (at start (not (pending step37))) (at end (done step37)) (at end (result step37)))
  )
  (:durative-action do_step38
    :duration (= ?duration 300)
    :condition (and (at start (pending step38)) (at start (result step7)) (at start (result step16)) (at start (result step40)) (at start (result step53)) (at start (result step61)))
    :effect (and (at start (not (pending step38))) (at end (done step38)) (at end (result step38)))
  )
  (:durative-action do_step39
    :duration (= ?duration 120)
    :condition (and (at start (pending step39)) (at start (result step10)) (at start (result step41)) (at start (result step59)) (at start (result step76)))
    :effect (and (at start (not (pending step39))) (at end (done step39)) (at end (result step39)))
  )
  (:durative-action do_step40
    :duration (= ?duration 180)
    :condition (and (at start (pending step40)) (at start (result step2)) (at start (result step6)) (at start (result step35)) (at start (result step42)) (at start (result step56)) (at start (result step58)))
    :effect (and (at start (not (pending step40))) (at end (done step40)) (at end (result step40)))
  )
  (:durative-action do_step41
    :duration (= ?duration 600)
    :condition (and (at start (pending step41)) (at start (result step19)) (at start (result step69)) (at start (result step75)))
    :effect (and (at start (not (pending step41))) (at end (done step41)) (at end (result step41)))
  )
  (:durative-action do_step42
    :duration (= ?duration 300)
    :condition (and (at start (pending step42)) (at start (result step31)) (at start (result step69)))
    :effect (and (at start (not (pending step42))) (at end (done step42)) (at end (result step42)))
  )
  (:durative-action do_step43
    :duration (= ?duration 120)
    :condition (and (at start (pending step43)) (at start (result step18)) (at start (result step52)) (at start (result step61)))
    :effect (and (at start (not (pending step43))) (at end (done step43)) (at end (result step43)))
  )
  (:durative-action do_step44
    :duration (= ?duration 900)
    :condition (and (at start (pending step44)) (at start (result step6)) (at start (result step20)) (at start (result step59)))
    :effect (and (at start (not (pending step44))) (at end (done step44)) (at end (result step44)))
  )
  (:durative-action do_step45
    :duration (= ?duration 172800)
    :condition (at start (pending step45))
    :effect (and (at start (not (pending step45))) (at end (done step45)) (at end (result step45)))
  )
  (:durative-action do_step46
    :duration (= ?duration 900)
    :condition (and (at start (pending step46)) (at start (result step3)))
    :effect (and (at start (not (pending step46))) (at end (done step46)) (at end (result step46)))
  )
  (:durative-action do_step47
    :duration (= ?duration 60)
    :condition (and (at start (pending step47)) (at start (result step45)) (at start (result step60)) (at start (result step68)) (at start (result step79)))
    :effect (and (at start (not (pending step47))) (at end (done step47)) (at end (result step47)))
  )
  (:durative-action do_step48
    :duration (= ?duration 900)
    :condition (and (at start (pending step48)) (at start (result step18)))
    :effect (and (at start (not (pending step48))) (at end (done step48)) (at end (result step48)))
  )
  (:durative-action do_step49
    :duration (= ?duration 300)
    :condition (and (at start (pending step49)) (at start (result step7)) (at start (result step33)))
    :effect (and (at start (not (pending step49))) (at end (done step49)) (at end (result step49)))
  )
  (:durative-action do_step50
    :duration (= ?duration 900)
    :condition (and (at start (pending step50)) (at start (result step27)) (at start (result step79)))
    :effect (and (at start (not (pending step50))) (at end (done step50)) (at end (result step50)))
  )
  (:durative-action do_step51
    :duration (= ?duration 1200)
    :condition (and (at start (pending step51)) (at start (result step71)))
    :effect (and (at start (not (pending step51))) (at end (done step51)) (at end (result step51)))
  )
  (:durative-action do_step52
    :duration (= ?duration 120)
    :condition (and (at start (pending step52)) (at start (result step41)) (at start (result step48)) (at start (result step54)) (at start (result step59)) (at start (result step65)) (at start (result step76)) (at start (result step80)))
    :effect (and (at start (not (pending step52))) (at end (done step52)) (at end (result step52)))
  )
  (:durative-action do_step53
    :duration (= ?duration 300)
    :condition (and (at start (pending step53)) (at start (result step5)) (at start (result step8)) (at start (result step18)) (at start (result step35)) (at start (result step68)))
    :effect (and (at start (not (pending step53))) (at end (done step53)) (at end (result step53)))
  )
  (:durative-action do_step54
    :duration (= ?duration 900)
    :condition (and (at start (pending step54)) (at start (result step5)) (at start (result step12)) (at start (result step56)))
    :effect (and (at start (not (pending step54))) (at end (done step54)) (at end (result step54)))
  )
  (:durative-action do_step55
    :duration (= ?duration 600)
    :condition (and (at start (pending step55)) (at start (result step8)) (at start (result step21)) (at start (result step72)))
    :effect (and (at start (not (pending step55))) (at end (done step55)) (at end (result step55)))
  )
  (:durative-action do_step56
    :duration (= ?duration 600)
    :condition (and (at start (pending step56)) (at start (result step45)) (at start (result step75)))
    :effect (and (at start (not (pending step56))) (at end (done step56)) (at end (result step56)))
  )
  (:durative-action do_step57
    :duration (= ?duration 1200)
    :condition (and (at start (pending step57)) (at start (result step10)))
    :effect (and (at start (not (pending step57))) (at end (done step57)) (at end (result step57)))
  )
  (:durative-action do_step58
    :duration (= ?duration 600)
    :condition (and (at start (pending step58)) (at start (result step76)))
    :effect (and (at start (not (pending step58))) (at end (done step58)) (at end (result step58)))
  )
  (:durative-action do_step59
    :duration (= ?duration 1800)
    :condition (at start (pending step59))
    :effect (and (at start (not (pending step59))) (at end (done step59)) (at end (result step59)))
  )
  (:durative-action do_step60
    :duration (= ?duration 60)
    :condition (and (at start (pending step60)) (at start (result step76)))
    :effect (and (at start (not (pending step60))) (at end (done step60)) (at end (result step60)))
  )
  (:durative-action do_step61
    :duration (= ?duration 300)
    :condition (and (at start (pending step61)) (at start (result step27)) (at start (result step41)) (at start (result step56)))
    :effect (and (at start (not (pending step61))) (at end (done step61)) (at end (result step61)))
  )
  (:durative-action do_step62
    :duration (= ?duration 300)
    :condition (and (at start (pending step62)) (at start (result step23)) (at start (result step69)))
    :effect (and (at start (not (pending step62))) (at end (done step62)) (at end (result step62)))
  )
  (:durative-action do_step63
    :duration (= ?duration 300)
    :condition (and (at start (pending step63)) (at start (result step8)) (at start (result step24)) (at start (result step28)) (at start (result step40)) (at start (result step42)) (at start (result step58)))
    :effect (and (at start (not (pending step63))) (at end (done step63)) (at end (result step63)))
  )
  (:durative-action do_step64
    :duration (= ?duration 300)
    :condition (and (at start (pending step64)) (at start (result step52)) (at start (result step53)) (at start (result step55)))
    :effect (and (at start (not (pending step64))) (at end (done step64)) (at end (result step64)))
  )
  (:durative-action do_step65
    :duration (= ?duration 300)
    :condition (and (at start (pending step65)) (at start (result step4)) (at start (result step35)) (at start (result step38)) (at start (result step45)))
    :effect (and (at start (not (pending step65))) (at end (done step65)) (at end (result step65)))
  )
  (:durative-action do_step66
    :duration (= ?duration 3600)
    :condition (at start (pending step66))
    :effect (and (at start (not (pending step66))) (at end (done step66)) (at end (result step66)))
  )
  (:durative-action do_step67
    :duration (= ?duration 600)
    :condition (and (at start (pending step67)) (at start (result step76)))
    :effect (and (at start (not (pending step67))) (at end (done step67)) (at end (result step67)))
  )
  (:durative-action do_step68
    :duration (= ?duration 900)
    :condition (and (at start (pending step68)) (at start (result step10)))
    :effect (and (at start (not (pending step68))) (at end (done step68)) (at end (result step68)))
  )
  (:durative-action do_step69
    :duration (= ?duration 3600)
    :condition (and (at start (pending step69)) (at start (result step71)))
    :effect (and (at start (not (pending step69))) (at end (done step69)) (at end (result step69)))
  )
  (:durative-action do_step70
    :duration (= ?duration 60)
    :condition (and (at start (pending step70)) (at start (result step36)) (at start (result step37)) (at start (result step40)) (at start (result step78)))
    :effect (and (at start (not (pending step70))) (at end (done step70)) (at end (result step70)))
  )
  (:durative-action do_step71
    :duration (= ?duration 60)
    :condition (at start (pending step71))
    :effect (and (at start (not (pending step71))) (at end (done step71)) (at end (result step71)))
  )
  (:durative-action do_step72
    :duration (= ?duration 300)
    :condition (and (at start (pending step72)) (at start (result step76)))
    :effect (and (at start (not (pending step72))) (at end (done step72)) (at end (result step72)))
  )
  (:durative-action do_step73
    :duration (= ?duration 300)
    :condition (and (at start (pending step73)) (at start (result step4)) (at start (result step72)))
    :effect (and (at start (not (pending step73))) (at end (done step73)) (at end (result step73)))
  )
  (:durative-action do_step74
    :duration (= ?duration 60)
    :condition (and (at start (pending step74)) (at start (result step22)))
    :effect (and (at start (not (pending step74))) (at end (done step74)) (at end (result step74)))
  )
  (:durative-action do_step75
    :duration (= ?duration 900)
    :condition (and (at start (pending step75)) (at start (result step27)) (at start (result step69)) (at start (result step76)))
    :effect (and (at start (not (pending step75))) (at end (done step75)) (at end (result step75)))
  )
  (:durative-action do_step76
    :duration (= ?duration 10800)
    :condition (and (at start (pending step76)) (at start (result step69)))
    :effect (and (at start (not (pending step76))) (at end (done step76)) (at end (result step76)))
  )
  (:durative-action do_step77
    :duration (= ?duration 600)
    :condition (and (at start (pending step77)) (at start (result step24)))
    :effect (and (at start (not (pending step77))) (at end (done step77)) (at end (result step77)))
  )
  (:durative-action do_step78
    :duration (= ?duration 120)
    :condition (and (at start (pending step78)) (at start (result step41)) (at start (result step71)) (at start (result step72)))
    :effect (and (at start (not (pending step78))) (at end (done step78)) (at end (result step78)))
  )
  (:durative-action do_step79
    :duration (= ?duration 300)
    :condition (and (at start (pending step79)) (at start (result step3)) (at start (result step41)))
    :effect (and (at start (not (pending step79))) (at end (done step79)) (at end (result step79)))
  )
  (:durative-action do_step80
    :duration (= ?duration 300)
    :condition (and (at start (pending step80)) (at start (result step17)) (at start (result step23)))
    :effect (and (at start (not (pending step80))) (at end (done step80)) (at end (result step80)))
  )
)