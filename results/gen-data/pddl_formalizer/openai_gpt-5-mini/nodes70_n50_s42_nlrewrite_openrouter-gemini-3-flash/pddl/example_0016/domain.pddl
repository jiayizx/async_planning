(define (domain grissini)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
    (s11_done)
    (s12_done)
    (s13_done)
    (s14_done)
    (s15_done)
    (s16_done)
    (s17_done)
    (s18_done)
    (s19_done)
    (s20_done)
    (s21_done)
    (s22_done)
    (s23_done)
    (s24_done)
    (s25_done)
    (s26_done)
    (s27_done)
    (s28_done)
    (s29_done)
    (s30_done)
    (s31_done)
    (s32_done)
    (s33_done)
    (s34_done)
    (s35_done)
    (s36_done)
    (s37_done)
    (s38_done)
    (s39_done)
    (s40_done)
    (s41_done)
    (s42_done)
    (s43_done)
    (s44_done)
    (s45_done)
    (s46_done)
    (s47_done)
    (s48_done)
    (s49_done)
    (s50_done)
    (s51_done)
    (s52_done)
    (s53_done)
    (s54_done)
    (s55_done)
    (s56_done)
    (s57_done)
    (s58_done)
    (s59_done)
    (s60_done)
    (s61_done)
    (s62_done)
    (s63_done)
    (s64_done)
    (s65_done)
    (s66_done)
    (s67_done)
    (s68_done)
    (s69_done)
    (s70_done)
  )

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done))))

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done))))

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done))))

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done))))

  (:durative-action step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done))))

  (:durative-action step6
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done))))

  (:durative-action step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done))))

  (:durative-action step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done))))

  (:durative-action step9
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done))))

  (:durative-action step10
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done))))

  (:durative-action step11
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done))))

  (:durative-action step12
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done))))

  (:durative-action step13
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done))))

  (:durative-action step14
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done))))

  (:durative-action step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done))))

  (:durative-action step16
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done))))

  (:durative-action step17
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done))))

  (:durative-action step18
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done))))

  (:durative-action step19
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done))))

  (:durative-action step20
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done))))

  (:durative-action step21
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done))))

  (:durative-action step22
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done))))

  (:durative-action step23
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done))))

  (:durative-action step24
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done))))

  (:durative-action step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done))))

  (:durative-action step26
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done))))

  (:durative-action step27
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done))))

  (:durative-action step28
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done))))

  (:durative-action step29
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done))))

  (:durative-action step30
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done))))

  (:durative-action step31
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_done))))

  (:durative-action step32
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_done))))

  (:durative-action step33
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_done))))

  (:durative-action step34
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_done))))

  (:durative-action step35
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_done))))

  (:durative-action step36
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_done))))

  (:durative-action step37
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_done))))

  (:durative-action step38
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_done))))

  (:durative-action step39
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_done))))

  (:durative-action step40
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_done))))

  (:durative-action step41
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_done))))

  (:durative-action step42
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_done))))

  (:durative-action step43
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_done))))

  (:durative-action step44
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_done))))

  (:durative-action step45
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_done))))

  (:durative-action step46
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_done))))

  (:durative-action step47
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step47))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_done))))

  (:durative-action step48
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_done))))

  (:durative-action step49
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_done))))

  (:durative-action step50
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_done))))

  (:durative-action step51
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step51))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_done))))

  (:durative-action step52
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_done))))

  (:durative-action step53
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step53))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_done))))

  (:durative-action step54
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step54))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_done))))

  (:durative-action step55
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_done))))

  (:durative-action step56
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_done))))

  (:durative-action step57
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step57))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_done))))

  (:durative-action step58
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_done))))

  (:durative-action step59
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step59))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_done))))

  (:durative-action step60
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step60))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_done))))

  (:durative-action step61
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step61))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s61_done))))

  (:durative-action step62
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s62_done))))

  (:durative-action step63
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step63))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s63_done))))

  (:durative-action step64
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step64))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s64_done))))

  (:durative-action step65
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step65))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s65_done))))

  (:durative-action step66
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step66))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s66_done))))

  (:durative-action step67
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step67))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s67_done))))

  (:durative-action step68
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step68))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s68_done))))

  (:durative-action step69
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step69))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s69_done))))

  (:durative-action step70
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step70))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (s70_done))))
)
