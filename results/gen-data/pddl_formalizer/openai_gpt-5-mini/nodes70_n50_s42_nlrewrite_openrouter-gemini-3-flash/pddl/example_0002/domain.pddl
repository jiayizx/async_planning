(define (domain italian_skill_improvement)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (completed_s1)
    (completed_s2)
    (completed_s3)
    (completed_s4)
    (completed_s5)
    (completed_s6)
    (completed_s7)
    (completed_s8)
    (completed_s9)
    (completed_s10)
    (completed_s11)
    (completed_s12)
    (completed_s13)
    (completed_s14)
    (completed_s15)
    (completed_s16)
    (completed_s17)
    (completed_s18)
    (completed_s19)
    (completed_s20)
    (completed_s21)
    (completed_s22)
    (completed_s23)
    (completed_s24)
    (completed_s25)
    (completed_s26)
    (completed_s27)
    (completed_s28)
    (completed_s29)
    (completed_s30)
    (completed_s31)
    (completed_s32)
    (completed_s33)
    (completed_s34)
    (completed_s35)
    (completed_s36)
    (completed_s37)
    (completed_s38)
    (completed_s39)
    (completed_s40)
    (completed_s41)
    (completed_s42)
    (completed_s43)
    (completed_s44)
    (completed_s45)
    (completed_s46)
    (completed_s47)
    (completed_s48)
    (completed_s49)
    (completed_s50)
    (completed_s51)
    (completed_s52)
    (completed_s53)
    (completed_s54)
    (completed_s55)
    (completed_s56)
    (completed_s57)
    (completed_s58)
    (completed_s59)
    (completed_s60)
    (completed_s61)
    (completed_s62)
    (completed_s63)
    (completed_s64)
    (completed_s65)
    (completed_s66)
    (completed_s67)
    (completed_s68)
    (completed_s69)
    (completed_s70)
  )

  (:durative-action do-step1
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step1)) (at start (completed_s14)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed_s1)))
  )

  (:durative-action do-step2
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step2)) (at start (completed_s63)) (at start (completed_s64)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed_s2)))
  )

  (:durative-action do-step3
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step3)) (at start (completed_s7)) (at start (completed_s25)) (at start (completed_s40)) (at start (completed_s49)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed_s3)))
  )

  (:durative-action do-step4
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step4)) (at start (completed_s13)) (at start (completed_s63)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed_s4)))
  )

  (:durative-action do-step5
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step5)) (at start (completed_s1)) (at start (completed_s53)) (at start (completed_s69)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed_s5)))
  )

  (:durative-action do-step6
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step6)) (at start (completed_s3)) (at start (completed_s11)) (at start (completed_s40)) (at start (completed_s53)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed_s6)))
  )

  (:durative-action do-step7
    :duration (= ?duration 10800)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed_s7)))
  )

  (:durative-action do-step8
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step8)) (at start (completed_s42)) (at start (completed_s55)) (at start (completed_s63)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed_s8)))
  )

  (:durative-action do-step9
    :duration (= ?duration 7200)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed_s9)))
  )

  (:durative-action do-step10
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step10)) (at start (completed_s1)) (at start (completed_s13)) (at start (completed_s58)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed_s10)))
  )

  (:durative-action do-step11
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step11)) (at start (completed_s3)) (at start (completed_s4)) (at start (completed_s16)) (at start (completed_s22)) (at start (completed_s34)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed_s11)))
  )

  (:durative-action do-step12
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step12)) (at start (completed_s16)) (at start (completed_s23)) (at start (completed_s25)) (at start (completed_s27)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed_s12)))
  )

  (:durative-action do-step13
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step13)) (at start (completed_s18)) (at start (completed_s48)) (at start (completed_s51)) (at start (completed_s61)) (at start (completed_s64)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed_s13)))
  )

  (:durative-action do-step14
    :duration (= ?duration 604800)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed_s14)))
  )

  (:durative-action do-step15
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step15)) (at start (completed_s62)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed_s15)))
  )

  (:durative-action do-step16
    :duration (= ?duration 259200)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (completed_s16)))
  )

  (:durative-action do-step17
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (completed_s12)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (completed_s17)))
  )

  (:durative-action do-step18
    :duration (= ?duration 2700)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (completed_s18)))
  )

  (:durative-action do-step19
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step19)) (at start (completed_s3)) (at start (completed_s15)) (at start (completed_s28)) (at start (completed_s69)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (completed_s19)))
  )

  (:durative-action do-step20
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (completed_s68)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (completed_s20)))
  )

  (:durative-action do-step21
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step21)) (at start (completed_s26)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (completed_s21)))
  )

  (:durative-action do-step22
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step22)) (at start (completed_s12)) (at start (completed_s50)) (at start (completed_s55)) (at start (completed_s62)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (completed_s22)))
  )

  (:durative-action do-step23
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step23)) (at start (completed_s30)) (at start (completed_s49)) (at start (completed_s55)) (at start (completed_s69)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (completed_s23)))
  )

  (:durative-action do-step24
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (completed_s11)) (at start (completed_s28)) (at start (completed_s36)) (at start (completed_s63)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (completed_s24)))
  )

  (:durative-action do-step25
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step25)) (at start (completed_s9)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (completed_s25)))
  )

  (:durative-action do-step26
    :duration (= ?duration 3600)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (completed_s26)))
  )

  (:durative-action do-step27
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step27)) (at start (completed_s3)) (at start (completed_s20)) (at start (completed_s43)) (at start (completed_s52)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (completed_s27)))
  )

  (:durative-action do-step28
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step28)) (at start (completed_s43)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (completed_s28)))
  )

  (:durative-action do-step29
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step29)) (at start (completed_s52)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (completed_s29)))
  )

  (:durative-action do-step30
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step30)) (at start (completed_s60)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (completed_s30)))
  )

  (:durative-action do-step31
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step31)) (at start (completed_s54)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (completed_s31)))
  )

  (:durative-action do-step32
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step32)) (at start (completed_s18)) (at start (completed_s30)) (at start (completed_s59)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (completed_s32)))
  )

  (:durative-action do-step33
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step33)) (at start (completed_s19)) (at start (completed_s25)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (completed_s33)))
  )

  (:durative-action do-step34
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step34)) (at start (completed_s38)) (at start (completed_s18)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (completed_s34)))
  )

  (:durative-action do-step35
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step35)) (at start (completed_s11)) (at start (completed_s12)) (at start (completed_s20)) (at start (completed_s41)) (at start (completed_s42)) (at start (completed_s61)) (at start (completed_s62)) (at start (completed_s63)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (completed_s35)))
  )

  (:durative-action do-step36
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step36)) (at start (completed_s16)) (at start (completed_s30)) (at start (completed_s46)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (completed_s36)))
  )

  (:durative-action do-step37
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step37)) (at start (completed_s21)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (completed_s37)))
  )

  (:durative-action do-step38
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step38)) (at start (completed_s16)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (completed_s38)))
  )

  (:durative-action do-step39
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step39)) (at start (completed_s16)) (at start (completed_s38)) (at start (completed_s42)) (at start (completed_s46)) (at start (completed_s47)) (at start (completed_s56)) (at start (completed_s66)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (completed_s39)))
  )

  (:durative-action do-step40
    :duration (= ?duration 1800)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (completed_s40)))
  )

  (:durative-action do-step41
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step41)) (at start (completed_s6)) (at start (completed_s19)) (at start (completed_s24)) (at start (completed_s29)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (completed_s41)))
  )

  (:durative-action do-step42
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step42)) (at start (completed_s14)) (at start (completed_s16)) (at start (completed_s53)) (at start (completed_s68)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (completed_s42)))
  )

  (:durative-action do-step43
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step43)) (at start (completed_s7)) (at start (completed_s61)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (completed_s43)))
  )

  (:durative-action do-step44
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step44)) (at start (completed_s6)) (at start (completed_s46)) (at start (completed_s67)) (at start (completed_s68)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (completed_s44)))
  )

  (:durative-action do-step45
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step45)) (at start (completed_s1)) (at start (completed_s31)) (at start (completed_s59)) (at start (completed_s70)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (completed_s45)))
  )

  (:durative-action do-step46
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step46)) (at start (completed_s9)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (completed_s46)))
  )

  (:durative-action do-step47
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step47)) (at start (completed_s16)) (at start (completed_s40)) (at start (completed_s61)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (completed_s47)))
  )

  (:durative-action do-step48
    :duration (= ?duration 7200)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (completed_s48)))
  )

  (:durative-action do-step49
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending step49)) (at start (completed_s14)) (at start (completed_s30)) (at start (completed_s42)) (at start (completed_s46)) (at start (completed_s53)) (at start (completed_s62)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (completed_s49)))
  )

  (:durative-action do-step50
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step50)) (at start (completed_s48)) (at start (completed_s62)) (at start (completed_s65)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (completed_s50)))
  )

  (:durative-action do-step51
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step51)) (at start (completed_s1)) (at start (completed_s57)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (completed_s51)))
  )

  (:durative-action do-step52
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step52)) (at start (completed_s16)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (completed_s52)))
  )

  (:durative-action do-step53
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step53)) (at start (completed_s7)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (completed_s53)))
  )

  (:durative-action do-step54
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step54)) (at start (completed_s1)) (at start (completed_s16)) (at start (completed_s43)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (completed_s54)))
  )

  (:durative-action do-step55
    :duration (= ?duration 3600)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (completed_s55)))
  )

  (:durative-action do-step56
    :duration (= ?duration 7200)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (completed_s56)))
  )

  (:durative-action do-step57
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step57)) (at start (completed_s14)) (at start (completed_s30)) (at start (completed_s43)) (at start (completed_s52)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (completed_s57)))
  )

  (:durative-action do-step58
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step58)) (at start (completed_s11)) (at start (completed_s31)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (completed_s58)))
  )

  (:durative-action do-step59
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step59)) (at start (completed_s4)) (at start (completed_s8)) (at start (completed_s16)) (at start (completed_s36)) (at start (completed_s51)) (at start (completed_s69)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (completed_s59)))
  )

  (:durative-action do-step60
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step60)) (at start (completed_s46)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (completed_s60)))
  )

  (:durative-action do-step61
    :duration (= ?duration 14400)
    :condition (at start (step_pending step61))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (completed_s61)))
  )

  (:durative-action do-step62
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step62)) (at start (completed_s18)) (at start (completed_s26)) (at start (completed_s14)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (completed_s62)))
  )

  (:durative-action do-step63
    :duration (= ?duration 7200)
    :condition (at start (step_pending step63))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (completed_s63)))
  )

  (:durative-action do-step64
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step64)) (at start (completed_s43)) (at start (completed_s46)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (completed_s64)))
  )

  (:durative-action do-step65
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step65)) (at start (completed_s5)) (at start (completed_s25)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (completed_s65)))
  )

  (:durative-action do-step66
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step66)) (at start (completed_s42)) (at start (completed_s68)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (completed_s66)))
  )

  (:durative-action do-step67
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step67)) (at start (completed_s9)) (at start (completed_s51)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (completed_s67)))
  )

  (:durative-action do-step68
    :duration (= ?duration 7200)
    :condition (at start (step_pending step68))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (completed_s68)))
  )

  (:durative-action do-step69
    :duration (= ?duration 7200)
    :condition (at start (step_pending step69))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (completed_s69)))
  )

  (:durative-action do-step70
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step70)) (at start (completed_s3)) (at start (completed_s13)) (at start (completed_s29)) (at start (completed_s42)) (at start (completed_s48)) (at start (completed_s69)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (completed_s70)))
  )
)
