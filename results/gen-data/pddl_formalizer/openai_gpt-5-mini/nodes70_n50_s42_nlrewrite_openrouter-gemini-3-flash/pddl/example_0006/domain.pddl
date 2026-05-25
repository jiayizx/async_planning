(define (domain rubberbandball)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (finished-step1)
    (finished-step2)
    (finished-step3)
    (finished-step4)
    (finished-step5)
    (finished-step6)
    (finished-step7)
    (finished-step8)
    (finished-step9)
    (finished-step10)
    (finished-step11)
    (finished-step12)
    (finished-step13)
    (finished-step14)
    (finished-step15)
    (finished-step16)
    (finished-step17)
    (finished-step18)
    (finished-step19)
    (finished-step20)
    (finished-step21)
    (finished-step22)
    (finished-step23)
    (finished-step24)
    (finished-step25)
    (finished-step26)
    (finished-step27)
    (finished-step28)
    (finished-step29)
    (finished-step30)
    (finished-step31)
    (finished-step32)
    (finished-step33)
    (finished-step34)
    (finished-step35)
    (finished-step36)
    (finished-step37)
    (finished-step38)
    (finished-step39)
    (finished-step40)
    (finished-step41)
    (finished-step42)
    (finished-step43)
    (finished-step44)
    (finished-step45)
    (finished-step46)
    (finished-step47)
    (finished-step48)
    (finished-step49)
    (finished-step50)
    (finished-step51)
    (finished-step52)
    (finished-step53)
    (finished-step54)
    (finished-step55)
    (finished-step56)
    (finished-step57)
    (finished-step58)
    (finished-step59)
    (finished-step60)
    (finished-step61)
    (finished-step62)
    (finished-step63)
    (finished-step64)
    (finished-step65)
    (finished-step66)
    (finished-step67)
    (finished-step68)
    (finished-step69)
    (finished-step70)
  )

  (:durative-action do_step1
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1)) (at start (finished-step21)) (at start (finished-step44)) (at start (finished-step65)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (finished-step1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (finished-step4)) (at start (finished-step21)) (at start (finished-step32)) (at start (finished-step64)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (finished-step2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 120)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (finished-step3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (finished-step29)) (at start (finished-step59)) (at start (finished-step61)) (at start (finished-step48)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (finished-step4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step5)) (at start (finished-step53)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (finished-step5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step6)) (at start (finished-step17)) (at start (finished-step47)) (at start (finished-step63)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (finished-step6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (finished-step39)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (finished-step7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step8)) (at start (finished-step12)) (at start (finished-step57)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (finished-step8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (finished-step10)) (at start (finished-step26)) (at start (finished-step59)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (finished-step9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (finished-step59)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (finished-step10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 600)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (finished-step11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step12)) (at start (finished-step45)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (finished-step12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step13)) (at start (finished-step34)) (at start (finished-step35)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (finished-step13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step14)) (at start (finished-step13)) (at start (finished-step28)) (at start (finished-step58)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (finished-step14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step15)) (at start (finished-step12)) (at start (finished-step27)) (at start (finished-step55)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (finished-step15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 2700)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (finished-step16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step17)) (at start (finished-step34)) (at start (finished-step48)) (at start (finished-step49)) (at start (finished-step56)) (at start (finished-step16)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (finished-step17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (finished-step11)) (at start (finished-step62)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (finished-step18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step19)) (at start (finished-step1)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (finished-step19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step20)) (at start (finished-step22)) (at start (finished-step48)) (at start (finished-step58)) (at start (finished-step59)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (finished-step20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step21)) (at start (finished-step11)) (at start (finished-step66)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (finished-step21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step22)) (at start (finished-step6)) (at start (finished-step15)) (at start (finished-step17)) (at start (finished-step31)) (at start (finished-step34)) (at start (finished-step56)) (at start (finished-step58)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (finished-step22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step23)) (at start (finished-step58)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (finished-step23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step24)) (at start (finished-step26)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (finished-step24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step25)) (at start (finished-step24)) (at start (finished-step39)) (at start (finished-step40)) (at start (finished-step69)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (finished-step25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step26)) (at start (finished-step4)) (at start (finished-step30)) (at start (finished-step38)) (at start (finished-step23)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (finished-step26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 1200)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (finished-step27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 180)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (finished-step28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step29)) (at start (finished-step48)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (finished-step29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step30)) (at start (finished-step10)) (at start (finished-step12)) (at start (finished-step44)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (finished-step30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step31)) (at start (finished-step2)) (at start (finished-step9)) (at start (finished-step15)) (at start (finished-step39)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (finished-step31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step32)) (at start (finished-step40)) (at start (finished-step41)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (finished-step32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 540)
    :condition (and (at start (step_pending step33)) (at start (finished-step5)) (at start (finished-step27)) (at start (finished-step48)) (at start (finished-step51)) (at start (finished-step63)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (finished-step33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 1500)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (finished-step34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step35)) (at start (finished-step10)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (finished-step35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step36)) (at start (finished-step39)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (finished-step36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step37)) (at start (finished-step13)) (at start (finished-step30)) (at start (finished-step60)) (at start (finished-step63)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (finished-step37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step38)) (at start (finished-step28)) (at start (finished-step48)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (finished-step38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 1200)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (finished-step39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 60)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (finished-step40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step41)) (at start (finished-step40)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (finished-step41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step42)) (at start (finished-step28)) (at start (finished-step39)) (at start (finished-step43)) (at start (finished-step51)) (at start (finished-step61)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (finished-step42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step43)) (at start (finished-step10)) (at start (finished-step40)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (finished-step43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 1800)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (finished-step44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 300)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (finished-step45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step46)) (at start (finished-step69)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (finished-step46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step47)) (at start (finished-step16)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (finished-step47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 300)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (finished-step48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step49)) (at start (finished-step16)) (at start (finished-step55)) (at start (finished-step36)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (finished-step49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step50)) (at start (finished-step29)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (finished-step50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step51)) (at start (finished-step9)) (at start (finished-step11)) (at start (finished-step48)) (at start (finished-step59)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (finished-step51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step52)) (at start (finished-step2)) (at start (finished-step48)) (at start (finished-step60)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (finished-step52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step53)) (at start (finished-step2)) (at start (finished-step35)) (at start (finished-step50)) (at start (finished-step68)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (finished-step53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step54)) (at start (finished-step50)) (at start (finished-step56)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (finished-step54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step55)) (at start (finished-step16)) (at start (finished-step48)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (finished-step55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step56)) (at start (finished-step47)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (finished-step56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step57)) (at start (finished-step25)) (at start (finished-step34)) (at start (finished-step36)) (at start (finished-step61)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (finished-step57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step58)) (at start (finished-step44)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (finished-step58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step59)) (at start (finished-step11)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (finished-step59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step60)) (at start (finished-step7)) (at start (finished-step10)) (at start (finished-step21)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (finished-step60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step61)) (at start (finished-step10)) (at start (finished-step28)) (at start (finished-step39)) (at start (finished-step44)) (at start (finished-step45)) (at start (finished-step64)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (finished-step61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step62)) (at start (finished-step2)) (at start (finished-step32)) (at start (finished-step39)) (at start (finished-step48)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (finished-step62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step63)) (at start (finished-step16)) (at start (finished-step32)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (finished-step63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step64)) (at start (finished-step10)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (finished-step64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step65)) (at start (finished-step16)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (finished-step65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step66)) (at start (finished-step16)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (finished-step66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step67)) (at start (finished-step13)) (at start (finished-step17)) (at start (finished-step33)) (at start (finished-step43)) (at start (finished-step48)) (at start (finished-step64)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (finished-step67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step68)) (at start (finished-step35)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (finished-step68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step69)) (at start (finished-step13)) (at start (finished-step59)) (at start (finished-step40)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (finished-step69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step70)) (at start (finished-step3)) (at start (finished-step23)) (at start (finished-step61)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (finished-step70)))
  )

)
