(define (domain window_shopping)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending1) (s1_done)
    (pending2) (s2_done)
    (pending3) (s3_done)
    (pending4) (s4_done)
    (pending5) (s5_done)
    (pending6) (s6_done)
    (pending7) (s7_done)
    (pending8) (s8_done)
    (pending9) (s9_done)
    (pending10) (s10_done)
    (pending11) (s11_done)
    (pending12) (s12_done)
    (pending13) (s13_done)
    (pending14) (s14_done)
    (pending15) (s15_done)
    (pending16) (s16_done)
    (pending17) (s17_done)
    (pending18) (s18_done)
    (pending19) (s19_done)
    (pending20) (s20_done)
    (pending21) (s21_done)
    (pending22) (s22_done)
    (pending23) (s23_done)
    (pending24) (s24_done)
    (pending25) (s25_done)
    (pending26) (s26_done)
    (pending27) (s27_done)
    (pending28) (s28_done)
    (pending29) (s29_done)
    (pending30) (s30_done)
    (pending31) (s31_done)
    (pending32) (s32_done)
    (pending33) (s33_done)
    (pending34) (s34_done)
    (pending35) (s35_done)
    (pending36) (s36_done)
    (pending37) (s37_done)
    (pending38) (s38_done)
    (pending39) (s39_done)
    (pending40) (s40_done)
    (pending41) (s41_done)
    (pending42) (s42_done)
    (pending43) (s43_done)
    (pending44) (s44_done)
    (pending45) (s45_done)
    (pending46) (s46_done)
    (pending47) (s47_done)
    (pending48) (s48_done)
    (pending49) (s49_done)
    (pending50) (s50_done)
    (pending51) (s51_done)
    (pending52) (s52_done)
    (pending53) (s53_done)
    (pending54) (s54_done)
    (pending55) (s55_done)
    (pending56) (s56_done)
    (pending57) (s57_done)
    (pending58) (s58_done)
    (pending59) (s59_done)
    (pending60) (s60_done)
    (pending61) (s61_done)
    (pending62) (s62_done)
    (pending63) (s63_done)
    (pending64) (s64_done)
    (pending65) (s65_done)
    (pending66) (s66_done)
    (pending67) (s67_done)
    (pending68) (s68_done)
    (pending69) (s69_done)
    (pending70) (s70_done)
    (pending71) (s71_done)
    (pending72) (s72_done)
    (pending73) (s73_done)
    (pending74) (s74_done)
    (pending75) (s75_done)
    (pending76) (s76_done)
    (pending77) (s77_done)
    (pending78) (s78_done)
    (pending79) (s79_done)
    (pending80) (s80_done)
    (pending81) (s81_done)
    (pending82) (s82_done)
    (pending83) (s83_done)
    (pending84) (s84_done)
    (pending85) (s85_done)
    (pending86) (s86_done)
    (pending87) (s87_done)
    (pending88) (s88_done)
    (pending89) (s89_done)
    (pending90) (s90_done)
    (pending91) (s91_done)
    (pending92) (s92_done)
    (pending93) (s93_done)
    (pending94) (s94_done)
    (pending95) (s95_done)
    (pending96) (s96_done)
    (pending97) (s97_done)
    (pending98) (s98_done)
    (pending99) (s99_done)
    (pending100) (s100_done)
  )

  ; Each durative-action corresponds to one step; explicit empty parameter list added for parser compatibility

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending1))
    :effect (and (at start (not (pending1))) (at end (s1_done))) )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending2)) (at start (s11_done)) (at start (s52_done)) (at start (s65_done)))
    :effect (and (at start (not (pending2))) (at end (s2_done))) )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (pending3))
    :effect (and (at start (not (pending3))) (at end (s3_done))) )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending4)) (at start (s42_done)) (at start (s44_done)) (at start (s47_done)) (at start (s72_done)) (at start (s81_done)))
    :effect (and (at start (not (pending4))) (at end (s4_done))) )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending5)) (at start (s16_done)))
    :effect (and (at start (not (pending5))) (at end (s5_done))) )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending6)) (at start (s23_done)) (at start (s45_done)) (at start (s81_done)))
    :effect (and (at start (not (pending6))) (at end (s6_done))) )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending7)) (at start (s97_done)))
    :effect (and (at start (not (pending7))) (at end (s7_done))) )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending8)) (at start (s26_done)) (at start (s93_done)))
    :effect (and (at start (not (pending8))) (at end (s8_done))) )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending9)) (at start (s26_done)) (at start (s30_done)))
    :effect (and (at start (not (pending9))) (at end (s9_done))) )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (pending10)) (at start (s6_done)) (at start (s69_done)) (at start (s74_done)) (at start (s76_done)))
    :effect (and (at start (not (pending10))) (at end (s10_done))) )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (pending11))
    :effect (and (at start (not (pending11))) (at end (s11_done))) )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending12)) (at start (s3_done)) (at start (s14_done)) (at start (s22_done)) (at start (s26_done)) (at start (s27_done)) (at start (s58_done)) (at start (s73_done)))
    :effect (and (at start (not (pending12))) (at end (s12_done))) )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending13)) (at start (s10_done)) (at start (s24_done)) (at start (s45_done)) (at start (s51_done)) (at start (s88_done)))
    :effect (and (at start (not (pending13))) (at end (s13_done))) )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending14)) (at start (s58_done)))
    :effect (and (at start (not (pending14))) (at end (s14_done))) )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending15)) (at start (s94_done)))
    :effect (and (at start (not (pending15))) (at end (s15_done))) )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending16)) (at start (s46_done)))
    :effect (and (at start (not (pending16))) (at end (s16_done))) )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending17)) (at start (s3_done)) (at start (s21_done)))
    :effect (and (at start (not (pending17))) (at end (s17_done))) )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending18)) (at start (s19_done)) (at start (s51_done)))
    :effect (and (at start (not (pending18))) (at end (s18_done))) )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending19)) (at start (s34_done)) (at start (s44_done)) (at start (s45_done)) (at start (s64_done)) (at start (s75_done)) (at start (s85_done)))
    :effect (and (at start (not (pending19))) (at end (s19_done))) )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending20)) (at start (s16_done)) (at start (s28_done)) (at start (s46_done)) (at start (s48_done)) (at start (s94_done)))
    :effect (and (at start (not (pending20))) (at end (s20_done))) )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending21)) (at start (s52_done)) (at start (s65_done)) (at start (s74_done)) (at start (s85_done)))
    :effect (and (at start (not (pending21))) (at end (s21_done))) )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending22)) (at start (s6_done)) (at start (s21_done)) (at start (s33_done)) (at start (s44_done)) (at start (s48_done)))
    :effect (and (at start (not (pending22))) (at end (s22_done))) )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending23)) (at start (s93_done)))
    :effect (and (at start (not (pending23))) (at end (s23_done))) )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending24)) (at start (s26_done)))
    :effect (and (at start (not (pending24))) (at end (s24_done))) )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (pending25))
    :effect (and (at start (not (pending25))) (at end (s25_done))) )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending26)) (at start (s57_done)))
    :effect (and (at start (not (pending26))) (at end (s26_done))) )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (pending27))
    :effect (and (at start (not (pending27))) (at end (s27_done))) )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending28)) (at start (s8_done)) (at start (s69_done)) (at start (s97_done)))
    :effect (and (at start (not (pending28))) (at end (s28_done))) )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending29)) (at start (s57_done)) (at start (s60_done)))
    :effect (and (at start (not (pending29))) (at end (s29_done))) )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending30)) (at start (s57_done)) (at start (s58_done)) (at start (s64_done)) (at start (s80_done)))
    :effect (and (at start (not (pending30))) (at end (s30_done))) )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending31)) (at start (s19_done)) (at start (s36_done)) (at start (s77_done)))
    :effect (and (at start (not (pending31))) (at end (s31_done))) )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending32)) (at start (s27_done)) (at start (s52_done)))
    :effect (and (at start (not (pending32))) (at end (s32_done))) )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (pending33)) (at start (s44_done)) (at start (s69_done)))
    :effect (and (at start (not (pending33))) (at end (s33_done))) )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending34)) (at start (s25_done)))
    :effect (and (at start (not (pending34))) (at end (s34_done))) )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending35)) (at start (s6_done)) (at start (s10_done)) (at start (s36_done)) (at start (s37_done)))
    :effect (and (at start (not (pending35))) (at end (s35_done))) )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending36))
    :effect (and (at start (not (pending36))) (at end (s36_done))) )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (pending37)) (at start (s8_done)) (at start (s15_done)) (at start (s33_done)) (at start (s69_done)) (at start (s75_done)) (at start (s93_done)))
    :effect (and (at start (not (pending37))) (at end (s37_done))) )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending38)) (at start (s2_done)) (at start (s23_done)) (at start (s32_done)) (at start (s59_done)))
    :effect (and (at start (not (pending38))) (at end (s38_done))) )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending39)) (at start (s1_done)) (at start (s13_done)) (at start (s21_done)) (at start (s43_done)) (at start (s61_done)) (at start (s86_done)) (at start (s93_done)))
    :effect (and (at start (not (pending39))) (at end (s39_done))) )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (pending40)) (at start (s2_done)))
    :effect (and (at start (not (pending40))) (at end (s40_done))) )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending41)) (at start (s3_done)) (at start (s11_done)) (at start (s16_done)) (at start (s18_done)))
    :effect (and (at start (not (pending41))) (at end (s41_done))) )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending42)) (at start (s17_done)) (at start (s44_done)) (at start (s46_done)) (at start (s95_done)) (at start (s97_done)))
    :effect (and (at start (not (pending42))) (at end (s42_done))) )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pending43))
    :effect (and (at start (not (pending43))) (at end (s43_done))) )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending44)) (at start (s16_done)) (at start (s25_done)))
    :effect (and (at start (not (pending44))) (at end (s44_done))) )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pending45))
    :effect (and (at start (not (pending45))) (at end (s45_done))) )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (pending46))
    :effect (and (at start (not (pending46))) (at end (s46_done))) )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending47)) (at start (s71_done)))
    :effect (and (at start (not (pending47))) (at end (s47_done))) )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending48)) (at start (s25_done)))
    :effect (and (at start (not (pending48))) (at end (s48_done))) )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending49)) (at start (s4_done)) (at start (s29_done)) (at start (s94_done)))
    :effect (and (at start (not (pending49))) (at end (s49_done))) )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending50)) (at start (s30_done)) (at start (s52_done)) (at start (s80_done)) (at start (s96_done)))
    :effect (and (at start (not (pending50))) (at end (s50_done))) )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending51)) (at start (s45_done)))
    :effect (and (at start (not (pending51))) (at end (s51_done))) )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending52))
    :effect (and (at start (not (pending52))) (at end (s52_done))) )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending53)) (at start (s41_done)) (at start (s51_done)) (at start (s54_done)) (at start (s97_done)))
    :effect (and (at start (not (pending53))) (at end (s53_done))) )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending54)) (at start (s26_done)) (at start (s36_done)) (at start (s46_done)) (at start (s71_done)))
    :effect (and (at start (not (pending54))) (at end (s54_done))) )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending55)) (at start (s1_done)) (at start (s3_done)) (at start (s7_done)) (at start (s21_done)) (at start (s53_done)) (at start (s77_done)) (at start (s93_done)))
    :effect (and (at start (not (pending55))) (at end (s55_done))) )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending56)) (at start (s1_done)))
    :effect (and (at start (not (pending56))) (at end (s56_done))) )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pending57))
    :effect (and (at start (not (pending57))) (at end (s57_done))) )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pending58))
    :effect (and (at start (not (pending58))) (at end (s58_done))) )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending59)) (at start (s2_done)) (at start (s8_done)))
    :effect (and (at start (not (pending59))) (at end (s59_done))) )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pending60))
    :effect (and (at start (not (pending60))) (at end (s60_done))) )

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending61)) (at start (s38_done)) (at start (s78_done)))
    :effect (and (at start (not (pending61))) (at end (s61_done))) )

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending62)) (at start (s17_done)) (at start (s32_done)) (at start (s45_done)) (at start (s72_done)) (at start (s94_done)) (at start (s98_done)))
    :effect (and (at start (not (pending62))) (at end (s62_done))) )

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending63)) (at start (s48_done)) (at start (s50_done)) (at start (s67_done)))
    :effect (and (at start (not (pending63))) (at end (s63_done))) )

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending64)) (at start (s16_done)) (at start (s74_done)))
    :effect (and (at start (not (pending64))) (at end (s64_done))) )

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending65)) (at start (s11_done)) (at start (s36_done)) (at start (s60_done)))
    :effect (and (at start (not (pending65))) (at end (s65_done))) )

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending66)) (at start (s24_done)) (at start (s62_done)) (at start (s68_done)))
    :effect (and (at start (not (pending66))) (at end (s66_done))) )

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (pending67)) (at start (s27_done)) (at start (s52_done)))
    :effect (and (at start (not (pending67))) (at end (s67_done))) )

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending68)) (at start (s3_done)) (at start (s36_done)) (at start (s70_done)))
    :effect (and (at start (not (pending68))) (at end (s68_done))) )

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending69)) (at start (s6_done)) (at start (s76_done)) (at start (s94_done)) (at start (s97_done)) (at start (s68_done)))
    :effect (and (at start (not (pending69))) (at end (s69_done))) )

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (pending70)) (at start (s34_done)))
    :effect (and (at start (not (pending70))) (at end (s70_done))) )

  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending71)) (at start (s24_done)))
    :effect (and (at start (not (pending71))) (at end (s71_done))) )

  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending72)) (at start (s2_done)) (at start (s5_done)) (at start (s70_done)) (at start (s79_done)))
    :effect (and (at start (not (pending72))) (at end (s72_done))) )

  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending73)) (at start (s2_done)) (at start (s3_done)) (at start (s15_done)) (at start (s30_done)) (at start (s58_done)))
    :effect (and (at start (not (pending73))) (at end (s73_done))) )

  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (pending74))
    :effect (and (at start (not (pending74))) (at end (s74_done))) )

  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending75)) (at start (s27_done)) (at start (s67_done)) (at start (s71_done)) (at start (s97_done)) (at start (s100_done)))
    :effect (and (at start (not (pending75))) (at end (s75_done))) )

  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending76)) (at start (s2_done)) (at start (s59_done)) (at start (s100_done)))
    :effect (and (at start (not (pending76))) (at end (s76_done))) )

  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending77)) (at start (s6_done)) (at start (s11_done)))
    :effect (and (at start (not (pending77))) (at end (s77_done))) )

  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending78)) (at start (s31_done)) (at start (s55_done)))
    :effect (and (at start (not (pending78))) (at end (s78_done))) )

  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending79)) (at start (s8_done)) (at start (s84_done)))
    :effect (and (at start (not (pending79))) (at end (s79_done))) )

  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending80)) (at start (s8_done)) (at start (s54_done)) (at start (s74_done)) (at start (s76_done)))
    :effect (and (at start (not (pending80))) (at end (s80_done))) )

  (:durative-action do_step81
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending81))
    :effect (and (at start (not (pending81))) (at end (s81_done))) )

  (:durative-action do_step82
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending82)) (at start (s25_done)) (at start (s34_done)) (at start (s76_done)))
    :effect (and (at start (not (pending82))) (at end (s82_done))) )

  (:durative-action do_step83
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending83)) (at start (s12_done)) (at start (s17_done)) (at start (s21_done)) (at start (s23_done)) (at start (s58_done)) (at start (s66_done)))
    :effect (and (at start (not (pending83))) (at end (s83_done))) )

  (:durative-action do_step84
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending84)) (at start (s19_done)) (at start (s27_done)) (at start (s38_done)) (at start (s51_done)) (at start (s74_done)))
    :effect (and (at start (not (pending84))) (at end (s84_done))) )

  (:durative-action do_step85
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending85)) (at start (s11_done)))
    :effect (and (at start (not (pending85))) (at end (s85_done))) )

  (:durative-action do_step86
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (pending86)) (at start (s59_done)) (at start (s91_done)) (at start (s95_done)))
    :effect (and (at start (not (pending86))) (at end (s86_done))) )

  (:durative-action do_step87
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending87)) (at start (s33_done)) (at start (s62_done)) (at start (s63_done)) (at start (s76_done)))
    :effect (and (at start (not (pending87))) (at end (s87_done))) )

  (:durative-action do_step88
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending88)) (at start (s59_done)) (at start (s64_done)) (at start (s85_done)))
    :effect (and (at start (not (pending88))) (at end (s88_done))) )

  (:durative-action do_step89
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending89)) (at start (s34_done)) (at start (s52_done)) (at start (s59_done)) (at start (s65_done)) (at start (s53_done)))
    :effect (and (at start (not (pending89))) (at end (s89_done))) )

  (:durative-action do_step90
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending90)) (at start (s12_done)) (at start (s14_done)) (at start (s16_done)) (at start (s43_done)) (at start (s59_done)) (at start (s70_done)))
    :effect (and (at start (not (pending90))) (at end (s90_done))) )

  (:durative-action do_step91
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending91)) (at start (s8_done)) (at start (s12_done)) (at start (s17_done)) (at start (s29_done)) (at start (s60_done)) (at start (s65_done)) (at start (s76_done)) (at start (s79_done)))
    :effect (and (at start (not (pending91))) (at end (s91_done))) )

  (:durative-action do_step92
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending92)) (at start (s14_done)) (at start (s25_done)) (at start (s34_done)) (at start (s63_done)) (at start (s64_done)))
    :effect (and (at start (not (pending92))) (at end (s92_done))) )

  (:durative-action do_step93
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending93)) (at start (s27_done)))
    :effect (and (at start (not (pending93))) (at end (s93_done))) )

  (:durative-action do_step94
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending94)) (at start (s9_done)) (at start (s11_done)) (at start (s16_done)) (at start (s93_done)))
    :effect (and (at start (not (pending94))) (at end (s94_done))) )

  (:durative-action do_step95
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending95)) (at start (s10_done)))
    :effect (and (at start (not (pending95))) (at end (s95_done))) )

  (:durative-action do_step96
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending96)) (at start (s2_done)) (at start (s10_done)) (at start (s46_done)))
    :effect (and (at start (not (pending96))) (at end (s96_done))) )

  (:durative-action do_step97
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending97)) (at start (s8_done)) (at start (s57_done)) (at start (s60_done)) (at start (s93_done)))
    :effect (and (at start (not (pending97))) (at end (s97_done))) )

  (:durative-action do_step98
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending98)) (at start (s35_done)) (at start (s49_done)) (at start (s69_done)))
    :effect (and (at start (not (pending98))) (at end (s98_done))) )

  (:durative-action do_step99
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending99)) (at start (s23_done)) (at start (s36_done)) (at start (s68_done)) (at start (s77_done)))
    :effect (and (at start (not (pending99))) (at end (s99_done))) )

  (:durative-action do_step100
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (pending100))
    :effect (and (at start (not (pending100))) (at end (s100_done))) )
)
