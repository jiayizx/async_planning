(define (domain remember_great_lakes)
  (:requirements :durative-actions :typing)
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

  (:durative-action do_step1
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s1)) (at start (done_s32)) (at start (done_s44)) (at start (done_s49)) (at start (done_s60)))
    :effect (and (at start (not (step_pending s1))) (at end (step_done s1)) (at end (done_s1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s2)) (at start (done_s8)) (at start (done_s23)) (at start (done_s31)) (at start (done_s53)) (at start (done_s66)))
    :effect (and (at start (not (step_pending s2))) (at end (step_done s2)) (at end (done_s2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s3)) (at start (done_s13)) (at start (done_s21)) (at start (done_s33)))
    :effect (and (at start (not (step_pending s3))) (at end (step_done s3)) (at end (done_s3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s4)) (at start (done_s26)) (at start (done_s41)) (at start (done_s50)))
    :effect (and (at start (not (step_pending s4))) (at end (step_done s4)) (at end (done_s4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 5400)
    :condition (at start (step_pending s5))
    :effect (and (at start (not (step_pending s5))) (at end (step_done s5)) (at end (done_s5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s6)) (at start (done_s41)))
    :effect (and (at start (not (step_pending s6))) (at end (step_done s6)) (at end (done_s6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s7)) (at start (done_s13)) (at start (done_s32)) (at start (done_s33)) (at start (done_s55)) (at start (done_s60)))
    :effect (and (at start (not (step_pending s7))) (at end (step_done s7)) (at end (done_s7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s8)) (at start (done_s14)) (at start (done_s21)) (at start (done_s41)) (at start (done_s60)))
    :effect (and (at start (not (step_pending s8))) (at end (step_done s8)) (at end (done_s8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s9)) (at start (done_s29)))
    :effect (and (at start (not (step_pending s9))) (at end (step_done s9)) (at end (done_s9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s10)) (at start (done_s12)) (at start (done_s51)))
    :effect (and (at start (not (step_pending s10))) (at end (step_done s10)) (at end (done_s10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s11)) (at start (done_s30)) (at start (done_s43)) (at start (done_s49)))
    :effect (and (at start (not (step_pending s11))) (at end (step_done s11)) (at end (done_s11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 1200)
    :condition (at start (step_pending s12))
    :effect (and (at start (not (step_pending s12))) (at end (step_done s12)) (at end (done_s12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s13)) (at start (done_s6)) (at start (done_s10)) (at start (done_s38)))
    :effect (and (at start (not (step_pending s13))) (at end (step_done s13)) (at end (done_s13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s14)) (at start (done_s38)) (at start (done_s66)) (at start (done_s67)))
    :effect (and (at start (not (step_pending s14))) (at end (step_done s14)) (at end (done_s14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s15)) (at start (done_s2)) (at start (done_s5)) (at start (done_s55)) (at start (done_s64)))
    :effect (and (at start (not (step_pending s15))) (at end (step_done s15)) (at end (done_s15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s16)) (at start (done_s9)) (at start (done_s10)) (at start (done_s36)) (at start (done_s50)))
    :effect (and (at start (not (step_pending s16))) (at end (step_done s16)) (at end (done_s16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 1500)
    :condition (at start (step_pending s17))
    :effect (and (at start (not (step_pending s17))) (at end (step_done s17)) (at end (done_s17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 600)
    :condition (at start (step_pending s18))
    :effect (and (at start (not (step_pending s18))) (at end (step_done s18)) (at end (done_s18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s19)) (at start (done_s27)) (at start (done_s29)) (at start (done_s59)))
    :effect (and (at start (not (step_pending s19))) (at end (step_done s19)) (at end (done_s19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s20)) (at start (done_s28)) (at start (done_s50)))
    :effect (and (at start (not (step_pending s20))) (at end (step_done s20)) (at end (done_s20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s21)) (at start (done_s36)))
    :effect (and (at start (not (step_pending s21))) (at end (step_done s21)) (at end (done_s21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s22)) (at start (done_s8)) (at start (done_s10)) (at start (done_s43)))
    :effect (and (at start (not (step_pending s22))) (at end (step_done s22)) (at end (done_s22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s23)) (at start (done_s43)) (at start (done_s46)) (at start (done_s59)))
    :effect (and (at start (not (step_pending s23))) (at end (step_done s23)) (at end (done_s23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s24)) (at start (done_s6)) (at start (done_s41)))
    :effect (and (at start (not (step_pending s24))) (at end (step_done s24)) (at end (done_s24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 2700)
    :condition (at start (step_pending s25))
    :effect (and (at start (not (step_pending s25))) (at end (step_done s25)) (at end (done_s25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s26)) (at start (done_s2)) (at start (done_s8)) (at start (done_s16)) (at start (done_s30)) (at start (done_s54)))
    :effect (and (at start (not (step_pending s26))) (at end (step_done s26)) (at end (done_s26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s27)) (at start (done_s5)))
    :effect (and (at start (not (step_pending s27))) (at end (step_done s27)) (at end (done_s27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 2400)
    :condition (at start (step_pending s28))
    :effect (and (at start (not (step_pending s28))) (at end (step_done s28)) (at end (done_s28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 300)
    :condition (at start (step_pending s29))
    :effect (and (at start (not (step_pending s29))) (at end (step_done s29)) (at end (done_s29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 900)
    :condition (at start (step_pending s30))
    :effect (and (at start (not (step_pending s30))) (at end (step_done s30)) (at end (done_s30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s31)) (at start (done_s9)) (at start (done_s42)) (at start (done_s43)))
    :effect (and (at start (not (step_pending s31))) (at end (step_done s31)) (at end (done_s31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s32)) (at start (done_s36)) (at start (done_s49)))
    :effect (and (at start (not (step_pending s32))) (at end (step_done s32)) (at end (done_s32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s33)) (at start (done_s17)) (at start (done_s36)) (at start (done_s37)))
    :effect (and (at start (not (step_pending s33))) (at end (step_done s33)) (at end (done_s33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s34)) (at start (done_s19)) (at start (done_s68)))
    :effect (and (at start (not (step_pending s34))) (at end (step_done s34)) (at end (done_s34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s35)) (at start (done_s44)) (at start (done_s60)))
    :effect (and (at start (not (step_pending s35))) (at end (step_done s35)) (at end (done_s35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s36)) (at start (done_s17)))
    :effect (and (at start (not (step_pending s36))) (at end (step_done s36)) (at end (done_s36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 2100)
    :condition (at start (step_pending s37))
    :effect (and (at start (not (step_pending s37))) (at end (step_done s37)) (at end (done_s37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s38)) (at start (done_s41)) (at start (done_s56)))
    :effect (and (at start (not (step_pending s38))) (at end (step_done s38)) (at end (done_s38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s39)) (at start (done_s5)) (at start (done_s17)) (at start (done_s41)))
    :effect (and (at start (not (step_pending s39))) (at end (step_done s39)) (at end (done_s39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending s40)) (at start (done_s25)) (at start (done_s49)) (at start (done_s60)))
    :effect (and (at start (not (step_pending s40))) (at end (step_done s40)) (at end (done_s40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 600)
    :condition (at start (step_pending s41))
    :effect (and (at start (not (step_pending s41))) (at end (step_done s41)) (at end (done_s41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s42)) (at start (done_s53)))
    :effect (and (at start (not (step_pending s42))) (at end (step_done s42)) (at end (done_s42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s43)) (at start (done_s65)))
    :effect (and (at start (not (step_pending s43))) (at end (step_done s43)) (at end (done_s43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s44)) (at start (done_s30)) (at start (done_s51)) (at start (done_s56)))
    :effect (and (at start (not (step_pending s44))) (at end (step_done s44)) (at end (done_s44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s45)) (at start (done_s13)) (at start (done_s67)))
    :effect (and (at start (not (step_pending s45))) (at end (step_done s45)) (at end (done_s45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s46)) (at start (done_s36)) (at start (done_s40)) (at start (done_s29)))
    :effect (and (at start (not (step_pending s46))) (at end (step_done s46)) (at end (done_s46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s47)) (at start (done_s24)) (at start (done_s33)) (at start (done_s56)) (at start (done_s69)))
    :effect (and (at start (not (step_pending s47))) (at end (step_done s47)) (at end (done_s47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s48)) (at start (done_s5)) (at start (done_s21)) (at start (done_s28)) (at start (done_s60)))
    :effect (and (at start (not (step_pending s48))) (at end (step_done s48)) (at end (done_s48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 600)
    :condition (at start (step_pending s49))
    :effect (and (at start (not (step_pending s49))) (at end (step_done s49)) (at end (done_s49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s50)) (at start (done_s38)))
    :effect (and (at start (not (step_pending s50))) (at end (step_done s50)) (at end (done_s50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s51)) (at start (done_s12)))
    :effect (and (at start (not (step_pending s51))) (at end (step_done s51)) (at end (done_s51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s52)) (at start (done_s59)))
    :effect (and (at start (not (step_pending s52))) (at end (step_done s52)) (at end (done_s52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s53)) (at start (done_s25)) (at start (done_s41)))
    :effect (and (at start (not (step_pending s53))) (at end (step_done s53)) (at end (done_s53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s54)) (at start (done_s29)) (at start (done_s42)))
    :effect (and (at start (not (step_pending s54))) (at end (step_done s54)) (at end (done_s54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s55)) (at start (done_s51)))
    :effect (and (at start (not (step_pending s55))) (at end (step_done s55)) (at end (done_s55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 900)
    :condition (at start (step_pending s56))
    :effect (and (at start (not (step_pending s56))) (at end (step_done s56)) (at end (done_s56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s57)) (at start (done_s12)) (at start (done_s51)) (at start (done_s64)))
    :effect (and (at start (not (step_pending s57))) (at end (step_done s57)) (at end (done_s57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s58)) (at start (done_s8)))
    :effect (and (at start (not (step_pending s58))) (at end (step_done s58)) (at end (done_s58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s59)) (at start (done_s11)) (at start (done_s17)) (at start (done_s18)))
    :effect (and (at start (not (step_pending s59))) (at end (step_done s59)) (at end (done_s59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s60)) (at start (done_s5)) (at start (done_s28)) (at start (done_s49)))
    :effect (and (at start (not (step_pending s60))) (at end (step_done s60)) (at end (done_s60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s61)) (at start (done_s7)) (at start (done_s14)) (at start (done_s15)))
    :effect (and (at start (not (step_pending s61))) (at end (step_done s61)) (at end (done_s61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending s62)) (at start (done_s2)) (at start (done_s39)) (at start (done_s51)))
    :effect (and (at start (not (step_pending s62))) (at end (step_done s62)) (at end (done_s62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s63)) (at start (done_s18)) (at start (done_s28)))
    :effect (and (at start (not (step_pending s63))) (at end (step_done s63)) (at end (done_s63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 300)
    :condition (at start (step_pending s64))
    :effect (and (at start (not (step_pending s64))) (at end (step_done s64)) (at end (done_s64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s65)) (at start (done_s56)))
    :effect (and (at start (not (step_pending s65))) (at end (step_done s65)) (at end (done_s65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s66)) (at start (done_s42)) (at start (done_s43)) (at start (done_s53)))
    :effect (and (at start (not (step_pending s66))) (at end (step_done s66)) (at end (done_s66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s67)) (at start (done_s32)))
    :effect (and (at start (not (step_pending s67))) (at end (step_done s67)) (at end (done_s67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s68)) (at start (done_s4)) (at start (done_s9)) (at start (done_s17)) (at start (done_s33)) (at start (done_s36)) (at start (done_s37)))
    :effect (and (at start (not (step_pending s68))) (at end (step_done s68)) (at end (done_s68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s69)) (at start (done_s17)))
    :effect (and (at start (not (step_pending s69))) (at end (step_done s69)) (at end (done_s69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s70)) (at start (done_s6)) (at start (done_s15)))
    :effect (and (at start (not (step_pending s70))) (at end (step_done s70)) (at end (done_s70)))
  )
)
