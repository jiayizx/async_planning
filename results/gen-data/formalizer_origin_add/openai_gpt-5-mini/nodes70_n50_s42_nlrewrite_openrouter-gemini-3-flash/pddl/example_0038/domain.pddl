(define (domain roundup-tools)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_s1) (done_s2) (done_s3) (done_s4) (done_s5) (done_s6) (done_s7) (done_s8) (done_s9) (done_s10)
    (done_s11) (done_s12) (done_s13) (done_s14) (done_s15) (done_s16) (done_s17) (done_s18) (done_s19) (done_s20)
    (done_s21) (done_s22) (done_s23) (done_s24) (done_s25) (done_s26) (done_s27) (done_s28) (done_s29) (done_s30)
    (done_s31) (done_s32) (done_s33) (done_s34) (done_s35) (done_s36) (done_s37) (done_s38) (done_s39) (done_s40)
    (done_s41) (done_s42) (done_s43) (done_s44) (done_s45) (done_s46) (done_s47) (done_s48) (done_s49) (done_s50)
    (done_s51) (done_s52) (done_s53) (done_s54) (done_s55) (done_s56) (done_s57) (done_s58) (done_s59) (done_s60)
    (done_s61) (done_s62) (done_s63) (done_s64) (done_s65) (done_s66) (done_s67) (done_s68) (done_s69) (done_s70)
  )

  ; One durative action per step. Each action produces a unique semantic predicate (done_sN) at end.

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step1)) (at start (done_s3)) (at start (done_s42)) (at start (done_s52)) (at start (done_s64)) (at start (done_s68)) (at start (done_s36)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done_s1)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step2)) (at start (done_s9)) (at start (done_s22)) (at start (done_s31)) (at start (done_s37)) (at start (done_s45)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done_s2)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done_s3)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (done_s65)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done_s4)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (done_s34)) (at start (done_s38)) (at start (done_s67)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done_s5)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (done_s30)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done_s6)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step7)) (at start (done_s6)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done_s7)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step8)) (at start (done_s14)) (at start (done_s65)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done_s8)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done_s9)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step10)) (at start (done_s13)) (at start (done_s21)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done_s10)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step11)) (at start (done_s19)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done_s11)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step12)) (at start (done_s38)) (at start (done_s58)) (at start (done_s59)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done_s12)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step13)) (at start (done_s3)) (at start (done_s65)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done_s13)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done_s14)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done_s15)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step16)) (at start (done_s43)) (at start (done_s59)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done_s16)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step17)) (at start (done_s3)) (at start (done_s37)) (at start (done_s39)) (at start (done_s46)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done_s17)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step18)) (at start (done_s3)) (at start (done_s54)) (at start (done_s65)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done_s18)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done_s19)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step20)) (at start (done_s43)) (at start (done_s51)) (at start (done_s59)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done_s20)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done_s21)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done_s22)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step23)) (at start (done_s12)) (at start (done_s22)) (at start (done_s69)) (at start (done_s59)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done_s23)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (done_s12)) (at start (done_s38)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done_s24)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (done_s21)) (at start (done_s38)) (at start (done_s69)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done_s25)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done_s26)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (done_s21)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done_s27)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step28)) (at start (done_s2)) (at start (done_s6)) (at start (done_s26)) (at start (done_s39)) (at start (done_s43)) (at start (done_s49)) (at start (done_s63)) (at start (done_s66)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done_s28)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step29)) (at start (done_s66)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done_s29)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step30)) (at start (done_s58)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done_s30)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (done_s31)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step32)) (at start (done_s19)) (at start (done_s49)) (at start (done_s58)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (done_s32)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step33)) (at start (done_s65)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (done_s33)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (done_s34)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step35)) (at start (done_s1)) (at start (done_s7)) (at start (done_s17)) (at start (done_s30)) (at start (done_s57)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (done_s35)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (done_s36)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step37)) (at start (done_s24)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (done_s37)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step38)) (at start (done_s19)) (at start (done_s66)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (done_s38)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step39)) (at start (done_s30)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (done_s39)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step40)) (at start (done_s9)) (at start (done_s13)) (at start (done_s38)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (done_s40)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (done_s41)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step42)) (at start (done_s23)) (at start (done_s26)) (at start (done_s49)) (at start (done_s66)) (at start (done_s59)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (done_s42)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step43)) (at start (done_s22)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (done_s43)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step44)) (at start (done_s56)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (done_s44)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step45)) (at start (done_s56)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (done_s45)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step46)) (at start (done_s4)) (at start (done_s21)) (at start (done_s50)) (at start (done_s57)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (done_s46)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step47))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (done_s47)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step48)) (at start (done_s53)) (at start (done_s58)) (at start (done_s63)) (at start (done_s69)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (done_s48)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step49)) (at start (done_s14)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (done_s49)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step50)) (at start (done_s33)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (done_s50)))
  )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step51)) (at start (done_s3)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (done_s51)))
  )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step52)) (at start (done_s9)) (at start (done_s70)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (done_s52)))
  )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step53)) (at start (done_s14)) (at start (done_s18)) (at start (done_s25)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (done_s53)))
  )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step54)) (at start (done_s13)) (at start (done_s26)) (at start (done_s36)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (done_s54)))
  )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step55)) (at start (done_s9)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (done_s55)))
  )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step56)) (at start (done_s9)) (at start (done_s43)) (at start (done_s47)) (at start (done_s51)) (at start (done_s54)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (done_s56)))
  )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step57)) (at start (done_s15)) (at start (done_s50)) (at start (done_s52)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (done_s57)))
  )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (done_s58)))
  )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step59)) (at start (done_s55)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (done_s59)))
  )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step60)) (at start (done_s8)) (at start (done_s16)) (at start (done_s58)) (at start (done_s55)) (at start (done_s67)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (done_s60)))
  )

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step61))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (done_s61)))
  )

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step62)) (at start (done_s26)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (done_s62)))
  )

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step63)) (at start (done_s12)) (at start (done_s19)) (at start (done_s39)) (at start (done_s66)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (done_s63)))
  )

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step64)) (at start (done_s8)) (at start (done_s12)) (at start (done_s20)) (at start (done_s38)) (at start (done_s41)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (done_s64)))
  )

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step65))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (done_s65)))
  )

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 1500)
    :condition (at start (step_pending step66))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (done_s66)))
  )

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step67)) (at start (done_s6)) (at start (done_s49)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (done_s67)))
  )

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step68)) (at start (done_s26)) (at start (done_s61)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (done_s68)))
  )

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step69)) (at start (done_s22)) (at start (done_s68)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (done_s69)))
  )

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step70)) (at start (done_s15)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (done_s70)))
  )
)
