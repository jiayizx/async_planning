(define (domain sponge-rollers)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed_S1)
    (completed_S2)
    (completed_S3)
    (completed_S4)
    (completed_S5)
    (completed_S6)
    (completed_S7)
    (completed_S8)
    (completed_S9)
    (completed_S10)
    (completed_S11)
    (completed_S12)
    (completed_S13)
    (completed_S14)
    (completed_S15)
    (completed_S16)
    (completed_S17)
    (completed_S18)
    (completed_S19)
    (completed_S20)
    (completed_S21)
    (completed_S22)
    (completed_S23)
    (completed_S24)
    (completed_S25)
    (completed_S26)
    (completed_S27)
    (completed_S28)
    (completed_S29)
    (completed_S30)
    (completed_S31)
    (completed_S32)
    (completed_S33)
    (completed_S34)
    (completed_S35)
    (completed_S36)
    (completed_S37)
    (completed_S38)
    (completed_S39)
    (completed_S40)
    (completed_S41)
    (completed_S42)
    (completed_S43)
    (completed_S44)
    (completed_S45)
    (completed_S46)
    (completed_S47)
    (completed_S48)
    (completed_S49)
    (completed_S50)
    (completed_S51)
    (completed_S52)
    (completed_S53)
    (completed_S54)
    (completed_S55)
    (completed_S56)
    (completed_S57)
    (completed_S58)
    (completed_S59)
    (completed_S60)
    (completed_S61)
    (completed_S62)
    (completed_S63)
    (completed_S64)
    (completed_S65)
    (completed_S66)
    (completed_S67)
    (completed_S68)
    (completed_S69)
    (completed_S70)
    (completed_S71)
    (completed_S72)
    (completed_S73)
    (completed_S74)
    (completed_S75)
    (completed_S76)
    (completed_S77)
    (completed_S78)
    (completed_S79)
    (completed_S80)
  )

  (:durative-action do_step1
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (completed_S35)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed_S1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step2)) (at start (completed_S11)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed_S2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (completed_S34)) (at start (completed_S49)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed_S3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step4)) (at start (completed_S19)) (at start (completed_S25)) (at start (completed_S26)) (at start (completed_S49)) (at start (completed_S64)) (at start (completed_S67)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed_S4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 120)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed_S5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (completed_S62)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed_S6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step7)) (at start (completed_S5)) (at start (completed_S11)) (at start (completed_S55)) (at start (completed_S77)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed_S7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step8)) (at start (completed_S20)) (at start (completed_S26)) (at start (completed_S51)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed_S8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (completed_S26)) (at start (completed_S36)) (at start (completed_S68)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed_S9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step10)) (at start (completed_S14)) (at start (completed_S17)) (at start (completed_S20)) (at start (completed_S25)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed_S10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step11)) (at start (completed_S63)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed_S11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step12)) (at start (completed_S45)) (at start (completed_S47)) (at start (completed_S49)) (at start (completed_S26)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed_S12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step13)) (at start (completed_S16)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed_S13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 180)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed_S14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step15)) (at start (completed_S34)) (at start (completed_S41)) (at start (completed_S58)) (at start (completed_S69)) (at start (completed_S70)) (at start (completed_S51)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed_S15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 60)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (completed_S16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step17)) (at start (completed_S45)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (completed_S17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (completed_S58)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (completed_S18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step19)) (at start (completed_S30)) (at start (completed_S43)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (completed_S19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step20)) (at start (completed_S45)) (at start (completed_S63)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (completed_S20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 60)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (completed_S21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step22)) (at start (completed_S17)) (at start (completed_S41)) (at start (completed_S77)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (completed_S22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step23)) (at start (completed_S7)) (at start (completed_S17)) (at start (completed_S75)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (completed_S23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step24)) (at start (completed_S61)) (at start (completed_S62)) (at start (completed_S79)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (completed_S24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (completed_S33)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (completed_S25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step26)) (at start (completed_S3)) (at start (completed_S20)) (at start (completed_S38)) (at start (completed_S50)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (completed_S26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step27)) (at start (completed_S14)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (completed_S27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step28)) (at start (completed_S63)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (completed_S28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step29)) (at start (completed_S17)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (completed_S29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step30)) (at start (completed_S12)) (at start (completed_S13)) (at start (completed_S24)) (at start (completed_S28)) (at start (completed_S68)) (at start (completed_S79)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (completed_S30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step31)) (at start (completed_S43)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (completed_S31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step32)) (at start (completed_S12)) (at start (completed_S33)) (at start (completed_S44)) (at start (completed_S60)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (completed_S32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step33)) (at start (completed_S16)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (completed_S33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 60)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (completed_S34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step35)) (at start (completed_S2)) (at start (completed_S48)) (at start (completed_S56)) (at start (completed_S79)) (at start (completed_S80)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (completed_S35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step36)) (at start (completed_S12)) (at start (completed_S40)) (at start (completed_S49)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (completed_S36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step37)) (at start (completed_S17)) (at start (completed_S66)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (completed_S37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 120)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (completed_S38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 180)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (completed_S39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 3600)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (completed_S40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step41)) (at start (completed_S21)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (completed_S41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step42)) (at start (completed_S19)) (at start (completed_S24)) (at start (completed_S47)) (at start (completed_S76)) (at start (completed_S77)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (completed_S42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step43)) (at start (completed_S66)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (completed_S43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step44)) (at start (completed_S16)) (at start (completed_S27)) (at start (completed_S33)) (at start (completed_S68)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (completed_S44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 300)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (completed_S45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step46)) (at start (completed_S6)) (at start (completed_S11)) (at start (completed_S44)) (at start (completed_S62)) (at start (completed_S68)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (completed_S46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step47)) (at start (completed_S14)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (completed_S47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step48)) (at start (completed_S17)) (at start (completed_S31)) (at start (completed_S78)) (at start (completed_S36)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (completed_S48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step49)) (at start (completed_S76)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (completed_S49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step50)) (at start (completed_S33)) (at start (completed_S63)) (at start (completed_S70)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (completed_S50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step51)) (at start (completed_S9)) (at start (completed_S75)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (completed_S51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step52)) (at start (completed_S24)) (at start (completed_S32)) (at start (completed_S37)) (at start (completed_S44)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (completed_S52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 120)
    :condition (at start (step_pending step53))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (completed_S53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step54)) (at start (completed_S69)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (completed_S54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step55)) (at start (completed_S9)) (at start (completed_S31)) (at start (completed_S39)) (at start (completed_S51)) (at start (completed_S74)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (completed_S55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step56)) (at start (completed_S12)) (at start (completed_S49)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (completed_S56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step57)) (at start (completed_S43)) (at start (completed_S45)) (at start (completed_S56)) (at start (completed_S68)) (at start (completed_S77)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (completed_S57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 600)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (completed_S58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step59)) (at start (completed_S15)) (at start (completed_S30)) (at start (completed_S32)) (at start (completed_S46)) (at start (completed_S73)) (at start (completed_S77)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (completed_S59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step60)) (at start (completed_S2)) (at start (completed_S12)) (at start (completed_S26)) (at start (completed_S40)) (at start (completed_S51)) (at start (completed_S63)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (completed_S60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step61)) (at start (completed_S3)) (at start (completed_S32)) (at start (completed_S37)) (at start (completed_S60)) (at start (completed_S62)) (at start (completed_S69)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (completed_S61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 900)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (completed_S62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 300)
    :condition (at start (step_pending step63))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (completed_S63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step64)) (at start (completed_S13)) (at start (completed_S26)) (at start (completed_S65)) (at start (completed_S76)) (at start (completed_S80)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (completed_S64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step65)) (at start (completed_S53)) (at start (completed_S68)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (completed_S65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 60)
    :condition (at start (step_pending step66))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (completed_S66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step67)) (at start (completed_S58)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (completed_S67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 45)
    :condition (at start (step_pending step68))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (completed_S68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step69)) (at start (completed_S17)) (at start (completed_S36)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (completed_S69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step70)) (at start (completed_S45)) (at start (completed_S76)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (completed_S70)))
  )

  (:durative-action do_step71
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step71)) (at start (completed_S1)) (at start (completed_S7)) (at start (completed_S13)) (at start (completed_S18)) (at start (completed_S35)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (completed_S71)))
  )

  (:durative-action do_step72
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step72)) (at start (completed_S5)) (at start (completed_S19)) (at start (completed_S30)) (at start (completed_S32)) (at start (completed_S41)) (at start (completed_S49)) (at start (completed_S51)) (at start (completed_S80)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (completed_S72)))
  )

  (:durative-action do_step73
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step73)) (at start (completed_S1)) (at start (completed_S13)) (at start (completed_S16)) (at start (completed_S32)) (at start (completed_S37)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (completed_S73)))
  )

  (:durative-action do_step74
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step74)) (at start (completed_S28)) (at start (completed_S58)) (at start (completed_S63)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (completed_S74)))
  )

  (:durative-action do_step75
    :duration (= ?duration 300)
    :condition (at start (step_pending step75))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (completed_S75)))
  )

  (:durative-action do_step76
    :duration (= ?duration 600)
    :condition (at start (step_pending step76))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (completed_S76)))
  )

  (:durative-action do_step77
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step77)) (at start (completed_S5)) (at start (completed_S9)) (at start (completed_S51)) (at start (completed_S75)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (completed_S77)))
  )

  (:durative-action do_step78
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step78)) (at start (completed_S27)) (at start (completed_S31)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (completed_S78)))
  )

  (:durative-action do_step79
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step79)) (at start (completed_S38)) (at start (completed_S44)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (completed_S79)))
  )

  (:durative-action do_step80
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step80)) (at start (completed_S9)) (at start (completed_S39)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (completed_S80)))
  )
)
