(define (domain decide-new-pet)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (done-s1) (done-s2) (done-s3) (done-s4) (done-s5) (done-s6) (done-s7) (done-s8) (done-s9) (done-s10)
    (done-s11) (done-s12) (done-s13) (done-s14) (done-s15) (done-s16) (done-s17) (done-s18) (done-s19) (done-s20)
    (done-s21) (done-s22) (done-s23) (done-s24) (done-s25) (done-s26) (done-s27) (done-s28) (done-s29) (done-s30)
    (done-s31) (done-s32) (done-s33) (done-s34) (done-s35) (done-s36) (done-s37) (done-s38) (done-s39) (done-s40)
    (done-s41) (done-s42) (done-s43) (done-s44) (done-s45) (done-s46) (done-s47) (done-s48) (done-s49) (done-s50)
    (done-s51) (done-s52) (done-s53) (done-s54) (done-s55) (done-s56) (done-s57) (done-s58) (done-s59) (done-s60)
    (done-s61) (done-s62) (done-s63) (done-s64) (done-s65) (done-s66) (done-s67) (done-s68) (done-s69) (done-s70)
    (done-s71) (done-s72) (done-s73) (done-s74) (done-s75) (done-s76) (done-s77) (done-s78) (done-s79) (done-s80)
    (done-s81) (done-s82) (done-s83) (done-s84) (done-s85) (done-s86) (done-s87) (done-s88) (done-s89) (done-s90)
    (done-s91) (done-s92) (done-s93) (done-s94) (done-s95) (done-s96) (done-s97) (done-s98) (done-s99) (done-s100)
  )

  (:durative-action do-step1
    :duration (= ?duration 14400)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done-s1)))
  )

  (:durative-action do-step2
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step2)) (at start (done-s7)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done-s2)))
  )

  (:durative-action do-step3
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step3)) (at start (done-s10)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done-s3)))
  )

  (:durative-action do-step4
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step4)) (at start (done-s32)) (at start (done-s68)) (at start (done-s71)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done-s4)))
  )

  (:durative-action do-step5
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step5)) (at start (done-s45)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done-s5)))
  )

  (:durative-action do-step6
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step6)) (at start (done-s32)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done-s6)))
  )

  (:durative-action do-step7
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step7)) (at start (done-s23)) (at start (done-s91)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done-s7)))
  )

  (:durative-action do-step8
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step8)) (at start (done-s2)) (at start (done-s12)) (at start (done-s22)) (at start (done-s24)) (at start (done-s42)) (at start (done-s43)) (at start (done-s58)) (at start (done-s87)) (at start (done-s97)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done-s8)))
  )

  (:durative-action do-step9
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step9)) (at start (done-s3)) (at start (done-s83)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done-s9)))
  )

  (:durative-action do-step10
    :duration (= ?duration 3600)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done-s10)))
  )

  (:durative-action do-step11
    :duration (= ?duration 18000)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done-s11)))
  )

  (:durative-action do-step12
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step12)) (at start (done-s17)) (at start (done-s37)) (at start (done-s51)) (at start (done-s87)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done-s12)))
  )

  (:durative-action do-step13
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step13)) (at start (done-s6)) (at start (done-s43)) (at start (done-s45)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done-s13)))
  )

  (:durative-action do-step14
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step14)) (at start (done-s10)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done-s14)))
  )

  (:durative-action do-step15
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step15)) (at start (done-s46)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done-s15)))
  )

  (:durative-action do-step16
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step16)) (at start (done-s36)) (at start (done-s47)) (at start (done-s50)) (at start (done-s72)) (at start (done-s78)) (at start (done-s85)) (at start (done-s100)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done-s16)))
  )

  (:durative-action do-step17
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step17)) (at start (done-s30)) (at start (done-s58)) (at start (done-s64)) (at start (done-s88)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done-s17)))
  )

  (:durative-action do-step18
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step18)) (at start (done-s2)) (at start (done-s10)) (at start (done-s37)) (at start (done-s47)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done-s18)))
  )

  (:durative-action do-step19
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step19)) (at start (done-s20)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done-s19)))
  )

  (:durative-action do-step20
    :duration (= ?duration 172800)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done-s20)))
  )

  (:durative-action do-step21
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step21)) (at start (done-s72)) (at start (done-s100)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done-s21)))
  )

  (:durative-action do-step22
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step22)) (at start (done-s15)) (at start (done-s91)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done-s22)))
  )

  (:durative-action do-step23
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step23)) (at start (done-s72)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done-s23)))
  )

  (:durative-action do-step24
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step24)) (at start (done-s10)) (at start (done-s46)) (at start (done-s86)) (at start (done-s91)) (at start (done-s100)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done-s24)))
  )

  (:durative-action do-step25
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step25)) (at start (done-s3)) (at start (done-s9)) (at start (done-s83)) (at start (done-s97)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done-s25)))
  )

  (:durative-action do-step26
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step26)) (at start (done-s24)) (at start (done-s48)) (at start (done-s86)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done-s26)))
  )

  (:durative-action do-step27
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step27)) (at start (done-s5)) (at start (done-s11)) (at start (done-s32)) (at start (done-s43)) (at start (done-s45)) (at start (done-s48)) (at start (done-s72)) (at start (done-s91)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done-s27)))
  )

  (:durative-action do-step28
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step28)) (at start (done-s45)) (at start (done-s80)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done-s28)))
  )

  (:durative-action do-step29
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step29)) (at start (done-s3)) (at start (done-s45)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done-s29)))
  )

  (:durative-action do-step30
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step30)) (at start (done-s16)) (at start (done-s61)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done-s30)))
  )

  (:durative-action do-step31
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step31)) (at start (done-s6)) (at start (done-s58)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done-s31)))
  )

  (:durative-action do-step32
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step32)) (at start (done-s43)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done-s32)))
  )

  (:durative-action do-step33
    :duration (= ?duration 1800)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done-s33)))
  )

  (:durative-action do-step34
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step34)) (at start (done-s9)) (at start (done-s83)) (at start (done-s98)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done-s34)))
  )

  (:durative-action do-step35
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step35)) (at start (done-s43)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done-s35)))
  )

  (:durative-action do-step36
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step36)) (at start (done-s65)) (at start (done-s49)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done-s36)))
  )

  (:durative-action do-step37
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step37)) (at start (done-s2)) (at start (done-s3)) (at start (done-s22)) (at start (done-s23)) (at start (done-s48)) (at start (done-s65)) (at start (done-s84)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done-s37)))
  )

  (:durative-action do-step38
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step38)) (at start (done-s5)) (at start (done-s71)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done-s38)))
  )

  (:durative-action do-step39
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step39)) (at start (done-s10)) (at start (done-s30)) (at start (done-s44)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done-s39)))
  )

  (:durative-action do-step40
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step40)) (at start (done-s20)) (at start (done-s91)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done-s40)))
  )

  (:durative-action do-step41
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step41)) (at start (done-s38)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done-s41)))
  )

  (:durative-action do-step42
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step42)) (at start (done-s11)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done-s42)))
  )

  (:durative-action do-step43
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step43)) (at start (done-s71)) (at start (done-s83)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done-s43)))
  )

  (:durative-action do-step44
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step44)) (at start (done-s27)) (at start (done-s98)) (at start (done-s95)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step44)) (at end (done-s44)))
  )

  (:durative-action do-step45
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending step45)) (at start (done-s72)) (at start (done-s98)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done-s45)))
  )

  (:durative-action do-step46
    :duration (= ?duration 1800)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done-s46)))
  )

  (:durative-action do-step47
    :duration (= ?duration 172800)
    :condition (at start (step_pending step47))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done-s47)))
  )

  (:durative-action do-step48
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step48)) (at start (done-s36)) (at start (done-s100)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done-s48)))
  )

  (:durative-action do-step49
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step49)) (at start (done-s2)) (at start (done-s9)) (at start (done-s83)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done-s49)))
  )

  (:durative-action do-step50
    :duration (= ?duration 3600)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done-s50)))
  )

  (:durative-action do-step51
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step51)) (at start (done-s14)) (at start (done-s29)) (at start (done-s35)) (at start (done-s72)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done-s51)))
  )

  (:durative-action do-step52
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step52)) (at start (done-s33)) (at start (done-s59)) (at start (done-s71)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done-s52)))
  )

  (:durative-action do-step53
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step53)) (at start (done-s32)) (at start (done-s46)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done-s53)))
  )

  (:durative-action do-step54
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step54)) (at start (done-s20)) (at start (done-s38)) (at start (done-s76)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done-s54)))
  )

  (:durative-action do-step55
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step55)) (at start (done-s22)) (at start (done-s24)) (at start (done-s32)) (at start (done-s36)) (at start (done-s43)) (at start (done-s47)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done-s55)))
  )

  (:durative-action do-step56
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step56)) (at start (done-s17)) (at start (done-s21)) (at start (done-s27)) (at start (done-s28)) (at start (done-s71)) (at start (done-s72)) (at start (done-s100)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done-s56)))
  )

  (:durative-action do-step57
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step57)) (at start (done-s35)) (at start (done-s84)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done-s57)))
  )

  (:durative-action do-step58
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step58)) (at start (done-s11)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done-s58)))
  )

  (:durative-action do-step59
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step59)) (at start (done-s36)) (at start (done-s65)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done-s59)))
  )

  (:durative-action do-step60
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step60)) (at start (done-s13)) (at start (done-s30)) (at start (done-s35)) (at start (done-s45)) (at start (done-s64)) (at start (done-s74)) (at start (done-s75)) (at start (done-s97)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done-s60)))
  )

  (:durative-action do-step61
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step61)) (at start (done-s19)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done-s61)))
  )

  (:durative-action do-step62
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step62)) (at start (done-s8)) (at start (done-s14)) (at start (done-s100)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done-s62)))
  )

  (:durative-action do-step63
    :duration (= ?duration 7200)
    :condition (at start (step_pending step63))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done-s63)))
  )

  (:durative-action do-step64
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step64)) (at start (done-s36)) (at start (done-s38)) (at start (done-s68)) (at start (done-s70)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done-s64)))
  )

  (:durative-action do-step65
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step65)) (at start (done-s1)) (at start (done-s71)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done-s65)))
  )

  (:durative-action do-step66
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step66)) (at start (done-s20)) (at start (done-s48)) (at start (done-s63)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done-s66)))
  )

  (:durative-action do-step67
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step67)) (at start (done-s11)) (at start (done-s68)) (at start (done-s84)) (at start (done-s92)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done-s67)))
  )

  (:durative-action do-step68
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step68)) (at start (done-s15)) (at start (done-s43)) (at start (done-s71)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done-s68)))
  )

  (:durative-action do-step69
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step69)) (at start (done-s2)) (at start (done-s14)) (at start (done-s63)) (at start (done-s86)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done-s69)))
  )

  (:durative-action do-step70
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step70)) (at start (done-s14)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done-s70)))
  )

  (:durative-action do-step71
    :duration (= ?duration 259200)
    :condition (at start (step_pending step71))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (done-s71)))
  )

  (:durative-action do-step72
    :duration (= ?duration 7200)
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (done-s72)))
  )

  (:durative-action do-step73
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step73)) (at start (done-s4)) (at start (done-s68)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (done-s73)))
  )

  (:durative-action do-step74
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step74)) (at start (done-s46)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (done-s74)))
  )

  (:durative-action do-step75
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step75)) (at start (done-s69)) (at start (done-s19)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (done-s75)))
  )

  (:durative-action do-step76
    :duration (= ?duration 172800)
    :condition (at start (step_pending step76))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (done-s76)))
  )

  (:durative-action do-step77
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step77)) (at start (done-s25)) (at start (done-s38)) (at start (done-s67)) (at start (done-s69)) (at start (done-s87)) (at start (done-s92)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (done-s77)))
  )

  (:durative-action do-step78
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step78)) (at start (done-s25)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (done-s78)))
  )

  (:durative-action do-step79
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step79)) (at start (done-s30)) (at start (done-s58)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (done-s79)))
  )

  (:durative-action do-step80
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step80)) (at start (done-s7)) (at start (done-s33)) (at start (done-s35)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (done-s80)))
  )

  (:durative-action do-step81
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step81)) (at start (done-s4)) (at start (done-s23)) (at start (done-s77)) (at start (done-s93)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (done-s81)))
  )

  (:durative-action do-step82
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step82)) (at start (done-s2)) (at start (done-s3)) (at start (done-s14)) (at start (done-s15)) (at start (done-s43)) (at start (done-s68)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (done-s82)))
  )

  (:durative-action do-step83
    :duration (= ?duration 10800)
    :condition (at start (step_pending step83))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (done-s83)))
  )

  (:durative-action do-step84
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step84)) (at start (done-s2)) (at start (done-s15)) (at start (done-s38)) (at start (done-s65)) (at start (done-s71)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (done-s84)))
  )

  (:durative-action do-step85
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step85)) (at start (done-s53)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (done-s85)))
  )

  (:durative-action do-step86
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step86)) (at start (done-s46)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (done-s86)))
  )

  (:durative-action do-step87
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step87)) (at start (done-s54)) (at start (done-s58)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (done-s87)))
  )

  (:durative-action do-step88
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step88)) (at start (done-s13)) (at start (done-s58)) (at start (done-s63)) (at start (done-s79)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (done-s88)))
  )

  (:durative-action do-step89
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step89)) (at start (done-s4)) (at start (done-s6)) (at start (done-s43)) (at start (done-s51)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (done-s89)))
  )

  (:durative-action do-step90
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step90)) (at start (done-s9)) (at start (done-s48)) (at start (done-s85)) (at start (done-s98)) (at start (done-s100)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (done-s90)))
  )

  (:durative-action do-step91
    :duration (= ?duration 172800)
    :condition (at start (step_pending step91))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (done-s91)))
  )

  (:durative-action do-step92
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step92)) (at start (done-s2)) (at start (done-s5)) (at start (done-s15)))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (done-s92)))
  )

  (:durative-action do-step93
    :duration (= ?duration 3600)
    :condition (at start (step_pending step93))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (done-s93)))
  )

  (:durative-action do-step94
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step94)) (at start (done-s7)) (at start (done-s43)) (at start (done-s46)) (at start (done-s86)) (at start (done-s98)) (at start (done-s100)))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (done-s94)))
  )

  (:durative-action do-step95
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step95)) (at start (done-s6)) (at start (done-s7)))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (done-s95)))
  )

  (:durative-action do-step96
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step96)) (at start (done-s10)) (at start (done-s16)) (at start (done-s24)) (at start (done-s36)) (at start (done-s47)) (at start (done-s80)) (at start (done-s99)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (done-s96)))
  )

  (:durative-action do-step97
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step97)) (at start (done-s63)))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (done-s97)))
  )

  (:durative-action do-step98
    :duration (= ?duration 10800)
    :condition (at start (step_pending step98))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (done-s98)))
  )

  (:durative-action do-step99
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step99)) (at start (done-s1)) (at start (done-s65)) (at start (done-s86)) (at start (done-s98)) (at start (done-s100)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (done-s99)))
  )

  (:durative-action do-step100
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step100)) (at start (done-s7)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (done-s100)))
  )
)
