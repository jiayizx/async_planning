(define (domain pico_de_gallo)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (completed ?s - step)
  )
  (:durative-action do_step1
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step1)) (at start (completed step43)) (at start (completed step47)) (at start (completed step53)) (at start (completed step58)) (at start (completed step62)))
    :effect (and (at start (not (step_pending step1))) (at end (completed step1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step2)) (at start (completed step6)) (at start (completed step20)) (at start (completed step26)) (at start (completed step27)) (at start (completed step75)))
    :effect (and (at start (not (step_pending step2))) (at end (completed step2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step3)) (at start (completed step47)) (at start (completed step55)) (at start (completed step71)))
    :effect (and (at start (not (step_pending step3))) (at end (completed step3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step4)) (at start (completed step39)) (at start (completed step51)))
    :effect (and (at start (not (step_pending step4))) (at end (completed step4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step5)) (at start (completed step69)) (at start (completed step79)))
    :effect (and (at start (not (step_pending step5))) (at end (completed step5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 120)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (completed step6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (completed step8)) (at start (completed step15)) (at start (completed step17)) (at start (completed step18)) (at start (completed step40)) (at start (completed step41)) (at start (completed step45)) (at start (completed step52)) (at start (completed step66)))
    :effect (and (at start (not (step_pending step7))) (at end (completed step7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step8)) (at start (completed step6)))
    :effect (and (at start (not (step_pending step8))) (at end (completed step8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (completed step35)) (at start (completed step45)) (at start (completed step48)) (at start (completed step79)))
    :effect (and (at start (not (step_pending step9))) (at end (completed step9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 60)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (completed step10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step11)) (at start (completed step24)) (at start (completed step60)))
    :effect (and (at start (not (step_pending step11))) (at end (completed step11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step12)) (at start (completed step41)) (at start (completed step44)) (at start (completed step49)))
    :effect (and (at start (not (step_pending step12))) (at end (completed step12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 60)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (completed step13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (completed step9)) (at start (completed step34)) (at start (completed step51)) (at start (completed step57)))
    :effect (and (at start (not (step_pending step14))) (at end (completed step14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step15)) (at start (completed step29)) (at start (completed step61)) (at start (completed step64)))
    :effect (and (at start (not (step_pending step15))) (at end (completed step15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step16)) (at start (completed step9)) (at start (completed step28)) (at start (completed step31)))
    :effect (and (at start (not (step_pending step16))) (at end (completed step16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step17)) (at start (completed step10)) (at start (completed step14)) (at start (completed step18)) (at start (completed step61)) (at start (completed step80)))
    :effect (and (at start (not (step_pending step17))) (at end (completed step17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 30)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (completed step18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 20)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (completed step19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step20)) (at start (completed step29)) (at start (completed step60)))
    :effect (and (at start (not (step_pending step20))) (at end (completed step20)))
  )
  (:durative-action do_step21
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step21)) (at start (completed step5)) (at start (completed step31)) (at start (completed step35)) (at start (completed step47)) (at start (completed step55)) (at start (completed step60)))
    :effect (and (at start (not (step_pending step21))) (at end (completed step21)))
  )
  (:durative-action do_step22
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step22)) (at start (completed step51)))
    :effect (and (at start (not (step_pending step22))) (at end (completed step22)))
  )
  (:durative-action do_step23
    :duration (= ?duration 30)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (completed step23)))
  )
  (:durative-action do_step24
    :duration (= ?duration 30)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (completed step24)))
  )
  (:durative-action do_step25
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (completed step8)) (at start (completed step30)))
    :effect (and (at start (not (step_pending step25))) (at end (completed step25)))
  )
  (:durative-action do_step26
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step26)) (at start (completed step30)) (at start (completed step44)) (at start (completed step62)) (at start (completed step67)))
    :effect (and (at start (not (step_pending step26))) (at end (completed step26)))
  )
  (:durative-action do_step27
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step27)) (at start (completed step45)) (at start (completed step66)) (at start (completed step76)))
    :effect (and (at start (not (step_pending step27))) (at end (completed step27)))
  )
  (:durative-action do_step28
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step28)) (at start (completed step14)) (at start (completed step18)) (at start (completed step60)) (at start (completed step71)))
    :effect (and (at start (not (step_pending step28))) (at end (completed step28)))
  )
  (:durative-action do_step29
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step29)) (at start (completed step45)))
    :effect (and (at start (not (step_pending step29))) (at end (completed step29)))
  )
  (:durative-action do_step30
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step30)) (at start (completed step80)))
    :effect (and (at start (not (step_pending step30))) (at end (completed step30)))
  )
  (:durative-action do_step31
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step31)) (at start (completed step35)) (at start (completed step48)) (at start (completed step57)) (at start (completed step58)) (at start (completed step81)))
    :effect (and (at start (not (step_pending step31))) (at end (completed step31)))
  )
  (:durative-action do_step32
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step32)) (at start (completed step66)))
    :effect (and (at start (not (step_pending step32))) (at end (completed step32)))
  )
  (:durative-action do_step33
    :duration (= ?duration 30)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (completed step33)))
  )
  (:durative-action do_step34
    :duration (= ?duration 120)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (completed step34)))
  )
  (:durative-action do_step35
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step35)) (at start (completed step39)) (at start (completed step51)))
    :effect (and (at start (not (step_pending step35))) (at end (completed step35)))
  )
  (:durative-action do_step36
    :duration (= ?duration 60)
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (completed step36)))
  )
  (:durative-action do_step37
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step37)) (at start (completed step2)) (at start (completed step7)) (at start (completed step9)) (at start (completed step29)) (at start (completed step34)) (at start (completed step52)) (at start (completed step54)) (at start (completed step57)) (at start (completed step75)))
    :effect (and (at start (not (step_pending step37))) (at end (completed step37)))
  )
  (:durative-action do_step38
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step38)) (at start (completed step18)) (at start (completed step51)) (at start (completed step67)))
    :effect (and (at start (not (step_pending step38))) (at end (completed step38)))
  )
  (:durative-action do_step39
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step39)) (at start (completed step13)))
    :effect (and (at start (not (step_pending step39))) (at end (completed step39)))
  )
  (:durative-action do_step40
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step40)) (at start (completed step17)) (at start (completed step20)) (at start (completed step64)))
    :effect (and (at start (not (step_pending step40))) (at end (completed step40)))
  )
  (:durative-action do_step41
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step41)) (at start (completed step67)))
    :effect (and (at start (not (step_pending step41))) (at end (completed step41)))
  )
  (:durative-action do_step42
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step42)) (at start (completed step8)) (at start (completed step10)) (at start (completed step23)) (at start (completed step44)) (at start (completed step48)) (at start (completed step55)) (at start (completed step81)))
    :effect (and (at start (not (step_pending step42))) (at end (completed step42)))
  )
  (:durative-action do_step43
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step43)) (at start (completed step13)) (at start (completed step49)))
    :effect (and (at start (not (step_pending step43))) (at end (completed step43)))
  )
  (:durative-action do_step44
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step44)) (at start (completed step30)))
    :effect (and (at start (not (step_pending step44))) (at end (completed step44)))
  )
  (:durative-action do_step45
    :duration (= ?duration 120)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (completed step45)))
  )
  (:durative-action do_step46
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step46)) (at start (completed step14)))
    :effect (and (at start (not (step_pending step46))) (at end (completed step46)))
  )
  (:durative-action do_step47
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step47)) (at start (completed step8)) (at start (completed step12)) (at start (completed step22)))
    :effect (and (at start (not (step_pending step47))) (at end (completed step47)))
  )
  (:durative-action do_step48
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step48)) (at start (completed step30)) (at start (completed step32)) (at start (completed step66)))
    :effect (and (at start (not (step_pending step48))) (at end (completed step48)))
  )
  (:durative-action do_step49
    :duration (= ?duration 120)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (completed step49)))
  )
  (:durative-action do_step50
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step50)) (at start (completed step34)) (at start (completed step71)))
    :effect (and (at start (not (step_pending step50))) (at end (completed step50)))
  )
  (:durative-action do_step51
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step51)) (at start (completed step13)) (at start (completed step81)))
    :effect (and (at start (not (step_pending step51))) (at end (completed step51)))
  )
  (:durative-action do_step52
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step52)) (at start (completed step39)) (at start (completed step46)))
    :effect (and (at start (not (step_pending step52))) (at end (completed step52)))
  )
  (:durative-action do_step53
    :duration (= ?duration 30)
    :condition (at start (step_pending step53))
    :effect (and (at start (not (step_pending step53))) (at end (completed step53)))
  )
  (:durative-action do_step54
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step54)) (at start (completed step41)))
    :effect (and (at start (not (step_pending step54))) (at end (completed step54)))
  )
  (:durative-action do_step55
    :duration (= ?duration 30)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (completed step55)))
  )
  (:durative-action do_step56
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step56)) (at start (completed step11)) (at start (completed step81)))
    :effect (and (at start (not (step_pending step56))) (at end (completed step56)))
  )
  (:durative-action do_step57
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step57)) (at start (completed step6)) (at start (completed step25)) (at start (completed step39)) (at start (completed step41)) (at start (completed step79)))
    :effect (and (at start (not (step_pending step57))) (at end (completed step57)))
  )
  (:durative-action do_step58
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step58)) (at start (completed step10)) (at start (completed step25)) (at start (completed step80)))
    :effect (and (at start (not (step_pending step58))) (at end (completed step58)))
  )
  (:durative-action do_step59
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step59)) (at start (completed step16)) (at start (completed step21)) (at start (completed step58)) (at start (completed step69)) (at start (completed step70)) (at start (completed step80)))
    :effect (and (at start (not (step_pending step59))) (at end (completed step59)))
  )
  (:durative-action do_step60
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step60)) (at start (completed step24)))
    :effect (and (at start (not (step_pending step60))) (at end (completed step60)))
  )
  (:durative-action do_step61
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step61)) (at start (completed step27)) (at start (completed step36)) (at start (completed step69)))
    :effect (and (at start (not (step_pending step61))) (at end (completed step61)))
  )
  (:durative-action do_step62
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step62)) (at start (completed step24)))
    :effect (and (at start (not (step_pending step62))) (at end (completed step62)))
  )
  (:durative-action do_step63
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step63)) (at start (completed step10)) (at start (completed step25)) (at start (completed step41)) (at start (completed step50)) (at start (completed step67)))
    :effect (and (at start (not (step_pending step63))) (at end (completed step63)))
  )
  (:durative-action do_step64
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step64)) (at start (completed step10)) (at start (completed step51)) (at start (completed step67)))
    :effect (and (at start (not (step_pending step64))) (at end (completed step64)))
  )
  (:durative-action do_step65
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step65)) (at start (completed step43)) (at start (completed step48)) (at start (completed step54)))
    :effect (and (at start (not (step_pending step65))) (at end (completed step65)))
  )
  (:durative-action do_step66
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step66)) (at start (completed step81)))
    :effect (and (at start (not (step_pending step66))) (at end (completed step66)))
  )
  (:durative-action do_step67
    :duration (= ?duration 30)
    :condition (at start (step_pending step67))
    :effect (and (at start (not (step_pending step67))) (at end (completed step67)))
  )
  (:durative-action do_step68
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step68)) (at start (completed step66)))
    :effect (and (at start (not (step_pending step68))) (at end (completed step68)))
  )
  (:durative-action do_step69
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step69)) (at start (completed step39)) (at start (completed step55)))
    :effect (and (at start (not (step_pending step69))) (at end (completed step69)))
  )
  (:durative-action do_step70
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step70)) (at start (completed step33)) (at start (completed step51)))
    :effect (and (at start (not (step_pending step70))) (at end (completed step70)))
  )
  (:durative-action do_step71
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step71)) (at start (completed step18)) (at start (completed step34)))
    :effect (and (at start (not (step_pending step71))) (at end (completed step71)))
  )
  (:durative-action do_step72
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step72)) (at start (completed step4)) (at start (completed step10)) (at start (completed step19)) (at start (completed step51)) (at start (completed step67)))
    :effect (and (at start (not (step_pending step72))) (at end (completed step72)))
  )
  (:durative-action do_step73
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step73)) (at start (completed step33)) (at start (completed step54)) (at start (completed step70)))
    :effect (and (at start (not (step_pending step73))) (at end (completed step73)))
  )
  (:durative-action do_step74
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step74)) (at start (completed step27)) (at start (completed step34)) (at start (completed step50)) (at start (completed step55)) (at start (completed step56)) (at start (completed step78)))
    :effect (and (at start (not (step_pending step74))) (at end (completed step74)))
  )
  (:durative-action do_step75
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step75)) (at start (completed step55)) (at start (completed step60)))
    :effect (and (at start (not (step_pending step75))) (at end (completed step75)))
  )
  (:durative-action do_step76
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step76)) (at start (completed step20)) (at start (completed step87)))
    :effect (and (at start (not (step_pending step76))) (at end (completed step76)))
  )
  (:durative-action do_step77
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step77)) (at start (completed step45)) (at start (completed step56)) (at start (completed step61)) (at start (completed step83)))
    :effect (and (at start (not (step_pending step77))) (at end (completed step77)))
  )
  (:durative-action do_step78
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step78)) (at start (completed step6)) (at start (completed step11)))
    :effect (and (at start (not (step_pending step78))) (at end (completed step78)))
  )
  (:durative-action do_step79
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step79)) (at start (completed step33)))
    :effect (and (at start (not (step_pending step79))) (at end (completed step79)))
  )
  (:durative-action do_step80
    :duration (= ?duration 300)
    :condition (at start (step_pending step80))
    :effect (and (at start (not (step_pending step80))) (at end (completed step80)))
  )
  (:durative-action do_step81
    :duration (= ?duration 120)
    :condition (at start (step_pending step81))
    :effect (and (at start (not (step_pending step81))) (at end (completed step81)))
  )
  (:durative-action do_step82
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step82)) (at start (completed step17)) (at start (completed step45)) (at start (completed step59)) (at start (completed step79)) (at start (completed step83)))
    :effect (and (at start (not (step_pending step82))) (at end (completed step82)))
  )
  (:durative-action do_step83
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step83)) (at start (completed step11)) (at start (completed step24)) (at start (completed step37)) (at start (completed step53)) (at start (completed step74)))
    :effect (and (at start (not (step_pending step83))) (at end (completed step83)))
  )
  (:durative-action do_step84
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step84)) (at start (completed step10)) (at start (completed step47)) (at start (completed step54)) (at start (completed step67)) (at start (completed step73)) (at start (completed step90)))
    :effect (and (at start (not (step_pending step84))) (at end (completed step84)))
  )
  (:durative-action do_step85
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step85)) (at start (completed step41)) (at start (completed step68)) (at start (completed step81)))
    :effect (and (at start (not (step_pending step85))) (at end (completed step85)))
  )
  (:durative-action do_step86
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step86)) (at start (completed step8)) (at start (completed step19)) (at start (completed step34)) (at start (completed step35)) (at start (completed step60)))
    :effect (and (at start (not (step_pending step86))) (at end (completed step86)))
  )
  (:durative-action do_step87
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step87)) (at start (completed step4)) (at start (completed step16)) (at start (completed step24)) (at start (completed step28)) (at start (completed step34)) (at start (completed step36)) (at start (completed step55)) (at start (completed step78)))
    :effect (and (at start (not (step_pending step87))) (at end (completed step87)))
  )
  (:durative-action do_step88
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step88)) (at start (completed step13)) (at start (completed step50)))
    :effect (and (at start (not (step_pending step88))) (at end (completed step88)))
  )
  (:durative-action do_step89
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step89)) (at start (completed step20)) (at start (completed step22)) (at start (completed step64)) (at start (completed step78)) (at start (completed step86)))
    :effect (and (at start (not (step_pending step89))) (at end (completed step89)))
  )
  (:durative-action do_step90
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step90)) (at start (completed step6)) (at start (completed step21)) (at start (completed step49)) (at start (completed step71)) (at start (completed step80)))
    :effect (and (at start (not (step_pending step90))) (at end (completed step90)))
  )
)