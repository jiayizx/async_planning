(define (domain gokart_build)
  (:requirements :durative-actions :typing)
  (:types step)
  (:constants
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
    step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
    step61 step62 step63 step64 step65 step66 step67 step68 step69 step70
    step71 step72 step73 step74 step75 step76 step77 step78 step79 step80
    step81 step82 step83 step84 step85 step86 step87 step88 step89 step90 - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (kart_built)

    (done-step1) (done-step2) (done-step3) (done-step4) (done-step5)
    (done-step6) (done-step7) (done-step8) (done-step9) (done-step10)
    (done-step11) (done-step12) (done-step13) (done-step14) (done-step15)
    (done-step16) (done-step17) (done-step18) (done-step19) (done-step20)
    (done-step21) (done-step22) (done-step23) (done-step24) (done-step25)
    (done-step26) (done-step27) (done-step28) (done-step29) (done-step30)
    (done-step31) (done-step32) (done-step33) (done-step34) (done-step35)
    (done-step36) (done-step37) (done-step38) (done-step39) (done-step40)
    (done-step41) (done-step42) (done-step43) (done-step44) (done-step45)
    (done-step46) (done-step47) (done-step48) (done-step49) (done-step50)
    (done-step51) (done-step52) (done-step53) (done-step54) (done-step55)
    (done-step56) (done-step57) (done-step58) (done-step59) (done-step60)
    (done-step61) (done-step62) (done-step63) (done-step64) (done-step65)
    (done-step66) (done-step67) (done-step68) (done-step69) (done-step70)
    (done-step71) (done-step72) (done-step73) (done-step74) (done-step75)
    (done-step76) (done-step77) (done-step78) (done-step79) (done-step80)
    (done-step81) (done-step82) (done-step83) (done-step84) (done-step85)
    (done-step86) (done-step87) (done-step88) (done-step89) (done-step90)
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done-step1)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done-step2)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step3)) (at start (done-step71)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done-step3)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done-step4)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done-step5)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step6)) (at start (done-step11)) (at start (done-step19)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done-step6)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step7)) (at start (done-step66)) (at start (done-step55)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done-step7)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step8)) (at start (done-step1)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done-step8)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (done-step64)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done-step9)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (done-step5)) (at start (done-step30)) (at start (done-step40)) (at start (done-step55)) (at start (done-step63)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done-step10)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step11)) (at start (done-step14)) (at start (done-step48)) (at start (done-step58)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done-step11)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step12)) (at start (done-step1)) (at start (done-step10)) (at start (done-step24)) (at start (done-step32)) (at start (done-step54)) (at start (done-step70)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done-step12)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step13)) (at start (done-step37)) (at start (done-step55)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done-step13)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step14)) (at start (done-step47)) (at start (done-step48)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done-step14)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step15)) (at start (done-step2)) (at start (done-step22)) (at start (done-step65)) (at start (done-step68)) (at start (done-step83)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done-step15)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step16)) (at start (done-step33)) (at start (done-step42)) (at start (done-step71)) (at start (done-step80)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done-step16)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step17)) (at start (done-step1)) (at start (done-step70)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done-step17)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done-step18)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done-step19)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step20)) (at start (done-step66)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done-step20)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step21)) (at start (done-step17)) (at start (done-step32)) (at start (done-step43)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done-step21)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step22)) (at start (done-step78)) (at start (done-step79)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done-step22)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step23)) (at start (done-step25)) (at start (done-step30)) (at start (done-step69)) (at start (done-step88)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done-step23)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step24)) (at start (done-step26)) (at start (done-step32)) (at start (done-step50)) (at start (done-step52)) (at start (done-step90)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done-step24)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step25)) (at start (done-step16)) (at start (done-step28)) (at start (done-step36)) (at start (done-step49)) (at start (done-step68)) (at start (done-step73)) (at start (done-step82)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done-step25)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step26)) (at start (done-step18)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done-step26)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step27)) (at start (done-step80)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done-step27)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step28)) (at start (done-step6)) (at start (done-step18)) (at start (done-step76)) (at start (done-step82)) (at start (done-step87)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done-step28)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step29)) (at start (done-step2)) (at start (done-step40)) (at start (done-step65)) (at start (done-step69)) (at start (done-step77)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done-step29)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step30)) (at start (done-step3)) (at start (done-step17)) (at start (done-step32)) (at start (done-step71)) (at start (done-step76)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done-step30)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step31)) (at start (done-step20)) (at start (done-step50)) (at start (done-step74)) (at start (done-step83)) (at start (done-step89)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done-step31)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step32)) (at start (done-step66)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done-step32)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step33)) (at start (done-step7)) (at start (done-step37)) (at start (done-step42)) (at start (done-step66)) (at start (done-step78)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done-step33)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step34)) (at start (done-step58)) (at start (done-step66)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done-step34)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step35)) (at start (done-step13)) (at start (done-step85)) (at start (done-step42)) (at start (done-step65)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done-step35)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step36)) (at start (done-step5)) (at start (done-step17)) (at start (done-step40)) (at start (done-step46)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done-step36)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done-step37)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step38)) (at start (done-step20)) (at start (done-step29)) (at start (done-step35)) (at start (done-step55)) (at start (done-step69)) (at start (done-step79)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done-step38)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step39)) (at start (done-step77)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done-step39)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step40)) (at start (done-step7)) (at start (done-step13)) (at start (done-step64)) (at start (done-step86)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done-step40)))
  )

  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step41)) (at start (done-step4)) (at start (done-step28)) (at start (done-step31)) (at start (done-step38)) (at start (done-step49)) (at start (done-step50)) (at start (done-step81)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done-step41)))
  )

  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step42)) (at start (done-step47)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done-step42)))
  )

  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step43)) (at start (done-step15)) (at start (done-step58)) (at start (done-step65)) (at start (done-step90)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done-step43)))
  )

  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step44)) (at start (done-step3)) (at start (done-step42)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done-step44)))
  )

  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step45)) (at start (done-step33)) (at start (done-step74)) (at start (done-step75)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done-step45)))
  )

  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step46)) (at start (done-step67)) (at start (done-step68)) (at start (done-step90)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done-step46)))
  )

  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step47)) (at start (done-step19)) (at start (done-step80)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done-step47)))
  )

  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step48)) (at start (done-step58)) (at start (done-step66)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done-step48)))
  )

  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step49)) (at start (done-step1)) (at start (done-step30)) (at start (done-step33)) (at start (done-step35)) (at start (done-step56)) (at start (done-step75)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done-step49)))
  )

  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step50)) (at start (done-step89)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done-step50)))
  )

  (:durative-action do-step51
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step51)) (at start (done-step1)) (at start (done-step89)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done-step51)))
  )

  (:durative-action do-step52
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done-step52)))
  )

  (:durative-action do-step53
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step53)) (at start (done-step6)) (at start (done-step13)) (at start (done-step17)) (at start (done-step56)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done-step53)))
  )

  (:durative-action do-step54
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step54)) (at start (done-step5)) (at start (done-step16)) (at start (done-step74)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done-step54)))
  )

  (:durative-action do-step55
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done-step55)))
  )

  (:durative-action do-step56
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step56)) (at start (done-step11)) (at start (done-step18)) (at start (done-step32)) (at start (done-step39)) (at start (done-step54)) (at start (done-step77)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done-step56)))
  )

  (:durative-action do-step57
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step57)) (at start (done-step1)) (at start (done-step2)) (at start (done-step14)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done-step57)))
  )

  (:durative-action do-step58
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step58)) (at start (done-step88)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done-step58)))
  )

  (:durative-action do-step59
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step59)) (at start (done-step5)) (at start (done-step26)) (at start (done-step33)) (at start (done-step79)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done-step59)))
  )

  (:durative-action do-step60
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step60)) (at start (done-step55)) (at start (done-step65)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done-step60)))
  )

  (:durative-action do-step61
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step61)) (at start (done-step13)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done-step61)))
  )

  (:durative-action do-step62
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step62)) (at start (done-step14)) (at start (done-step19)) (at start (done-step31)) (at start (done-step46)) (at start (done-step70)) (at start (done-step71)) (at start (done-step84)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done-step62)))
  )

  (:durative-action do-step63
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step63)) (at start (done-step90)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done-step63)))
  )

  (:durative-action do-step64
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step64))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done-step64)))
  )

  (:durative-action do-step65
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step65))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done-step65)))
  )

  (:durative-action do-step66
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step66)) (at start (done-step2)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done-step66)))
  )

  (:durative-action do-step67
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step67)) (at start (done-step60)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done-step67)))
  )

  (:durative-action do-step68
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step68)) (at start (done-step11)) (at start (done-step89)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done-step68)))
  )

  (:durative-action do-step69
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step69)) (at start (done-step65)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done-step69)))
  )

  (:durative-action do-step70
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step70))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done-step70)))
  )

  (:durative-action do-step71
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step71)) (at start (done-step78)) (at start (done-step83)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (done-step71)))
  )

  (:durative-action do-step72
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step72)) (at start (done-step22)) (at start (done-step58)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (done-step72)))
  )

  (:durative-action do-step73
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step73)) (at start (done-step6)) (at start (done-step33)) (at start (done-step43)) (at start (done-step49)) (at start (done-step81)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (done-step73)))
  )

  (:durative-action do-step74
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step74)) (at start (done-step58)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (done-step74)))
  )

  (:durative-action do-step75
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step75)) (at start (done-step19)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (done-step75)))
  )

  (:durative-action do-step76
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step76))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (done-step76)))
  )

  (:durative-action do-step77
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step77)) (at start (done-step37)) (at start (done-step64)) (at start (done-step69)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (done-step77)))
  )

  (:durative-action do-step78
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step78))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (done-step78)))
  )

  (:durative-action do-step79
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step79)) (at start (done-step76)) (at start (done-step83)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (done-step79)))
  )

  (:durative-action do-step80
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step80))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (done-step80)))
  )

  (:durative-action do-step81
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step81)) (at start (done-step7)) (at start (done-step39)) (at start (done-step71)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (done-step81)))
  )

  (:durative-action do-step82
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step82)) (at start (done-step17)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (done-step82)))
  )

  (:durative-action do-step83
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step_pending step83))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (done-step83)))
  )

  (:durative-action do-step84
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step84)) (at start (done-step49)) (at start (done-step69)) (at start (done-step50)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (done-step84)))
  )

  (:durative-action do-step85
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step85)) (at start (done-step14)) (at start (done-step47)) (at start (done-step55)) (at start (done-step89)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (done-step85)))
  )

  (:durative-action do-step86
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step86)) (at start (done-step17)) (at start (done-step22)) (at start (done-step32)) (at start (done-step78)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (done-step86)))
  )

  (:durative-action do-step87
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step87)) (at start (done-step18)) (at start (done-step46)) (at start (done-step47)) (at start (done-step48)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (done-step87)))
  )

  (:durative-action do-step88
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step88))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (done-step88)))
  )

  (:durative-action do-step89
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step89)) (at start (done-step78)) (at start (done-step82)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (done-step89)))
  )

  (:durative-action do-step90
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step90)) (at start (done-step58)) (at start (done-step64)) (at start (done-step76)) (at start (done-step78)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (done-step90)) (at end (kart_built)))
  )

)
