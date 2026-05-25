(define (domain town_fair)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step)
               (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
               (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
               (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
               (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
               (s41_done) (s42_done) (s43_done) (s44_done) (s45_done) (s46_done) (s47_done) (s48_done) (s49_done) (s50_done)
               (s51_done) (s52_done) (s53_done) (s54_done) (s55_done) (s56_done) (s57_done) (s58_done) (s59_done) (s60_done)
               (s61_done) (s62_done) (s63_done) (s64_done) (s65_done) (s66_done) (s67_done) (s68_done) (s69_done) (s70_done)
               (s71_done) (s72_done) (s73_done) (s74_done) (s75_done) (s76_done) (s77_done) (s78_done) (s79_done) (s80_done))
  (:durative-action do_step1 :duration 600
    :condition (at start (and (step_pending step1) (s28_done) (s51_done) (s54_done) (s77_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done))))
  (:durative-action do_step2 :duration 300
    :condition (at start (and (step_pending step2) (s38_done) (s40_done) (s72_done) (s75_done) (s80_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done))))
  (:durative-action do_step3 :duration 300
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done))))
  (:durative-action do_step4 :duration 2700
    :condition (at start (and (step_pending step4) (s54_done) (s65_done) (s66_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done))))
  (:durative-action do_step5 :duration 600
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done))))
  (:durative-action do_step6 :duration 600
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done))))
  (:durative-action do_step7 :duration 1200
    :condition (at start (and (step_pending step7) (s6_done) (s51_done) (s67_done) (s75_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done))))
  (:durative-action do_step8 :duration 1800
    :condition (at start (and (step_pending step8) (s10_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done))))
  (:durative-action do_step9 :duration 3600
    :condition (at start (and (step_pending step9) (s46_done) (s48_done) (s68_done) (s76_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done))))
  (:durative-action do_step10 :duration 900
    :condition (at start (and (step_pending step10) (s32_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done))))
  (:durative-action do_step11 :duration 300
    :condition (at start (and (step_pending step11) (s37_done) (s54_done) (s77_done) (s78_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done))))
  (:durative-action do_step12 :duration 600
    :condition (at start (and (step_pending step12) (s35_done) (s43_done) (s52_done) (s53_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done))))
  (:durative-action do_step13 :duration 2700
    :condition (at start (and (step_pending step13) (s8_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done))))
  (:durative-action do_step14 :duration 900
    :condition (at start (and (step_pending step14) (s20_done) (s21_done) (s34_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done))))
  (:durative-action do_step15 :duration 2400
    :condition (at start (and (step_pending step15) (s7_done) (s19_done) (s49_done) (s56_done) (s58_done) (s60_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done))))
  (:durative-action do_step16 :duration 300
    :condition (at start (and (step_pending step16) (s72_done) (s79_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done))))
  (:durative-action do_step17 :duration 3600
    :condition (at start (and (step_pending step17) (s41_done) (s47_done) (s64_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done))))
  (:durative-action do_step18 :duration 1500
    :condition (at start (and (step_pending step18) (s26_done) (s27_done) (s68_done) (s75_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done))))
  (:durative-action do_step19 :duration 1800
    :condition (at start (and (step_pending step19) (s40_done) (s77_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done))))
  (:durative-action do_step20 :duration 300
    :condition (at start (and (step_pending step20) (s5_done) (s26_done) (s35_done) (s41_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done))))
  (:durative-action do_step21 :duration 600
    :condition (at start (and (step_pending step21) (s32_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done))))
  (:durative-action do_step22 :duration 3000
    :condition (at start (and (step_pending step22) (s3_done) (s16_done) (s26_done) (s56_done) (s79_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done))))
  (:durative-action do_step23 :duration 3600
    :condition (at start (and (step_pending step23) (s10_done) (s16_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done))))
  (:durative-action do_step24 :duration 1800
    :condition (at start (and (step_pending step24) (s62_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done))))
  (:durative-action do_step25 :duration 1500
    :condition (at start (and (step_pending step25) (s51_done) (s54_done) (s77_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done))))
  (:durative-action do_step26 :duration 1200
    :condition (at start (and (step_pending step26) (s21_done) (s40_done) (s75_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done))))
  (:durative-action do_step27 :duration 1800
    :condition (at start (and (step_pending step27) (s42_done) (s50_done) (s72_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done))))
  (:durative-action do_step28 :duration 120
    :condition (at start (and (step_pending step28) (s5_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done))))
  (:durative-action do_step29 :duration 2400
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done))))
  (:durative-action do_step30 :duration 7200
    :condition (at start (and (step_pending step30) (s23_done) (s45_done) (s47_done) (s59_done) (s73_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done))))
  (:durative-action do_step31 :duration 120
    :condition (at start (and (step_pending step31) (s22_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_done))))
  (:durative-action do_step32 :duration 600
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_done))))
  (:durative-action do_step33 :duration 600
    :condition (at start (and (step_pending step33) (s32_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_done))))
  (:durative-action do_step34 :duration 600
    :condition (at start (and (step_pending step34) (s6_done) (s23_done) (s26_done) (s58_done) (s77_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_done))))
  (:durative-action do_step35 :duration 900
    :condition (at start (and (step_pending step35) (s3_done) (s76_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_done))))
  (:durative-action do_step36 :duration 300
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_done))))
  (:durative-action do_step37 :duration 900
    :condition (at start (and (step_pending step37) (s76_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_done))))
  (:durative-action do_step38 :duration 300
    :condition (at start (and (step_pending step38) (s39_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_done))))
  (:durative-action do_step39 :duration 900
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_done))))
  (:durative-action do_step40 :duration 300
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_done))))
  (:durative-action do_step41 :duration 1200
    :condition (at start (and (step_pending step41) (s26_done) (s32_done) (s47_done) (s76_done)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_done))))
  (:durative-action do_step42 :duration 2400
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_done))))
  (:durative-action do_step43 :duration 600
    :condition (at start (and (step_pending step43) (s16_done) (s19_done) (s41_done) (s72_done)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_done))))
  (:durative-action do_step44 :duration 1200
    :condition (at start (and (step_pending step44) (s65_done) (s72_done)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_done))))
  (:durative-action do_step45 :duration 1200
    :condition (at start (and (step_pending step45) (s10_done)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_done))))
  (:durative-action do_step46 :duration 900
    :condition (at start (and (step_pending step46) (s43_done) (s47_done)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_done))))
  (:durative-action do_step47 :duration 1800
    :condition (at start (and (step_pending step47) (s61_done)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_done))))
  (:durative-action do_step48 :duration 300
    :condition (at start (and (step_pending step48) (s54_done)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_done))))
  (:durative-action do_step49 :duration 600
    :condition (at start (and (step_pending step49) (s45_done) (s51_done)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_done))))
  (:durative-action do_step50 :duration 900
    :condition (at start (and (step_pending step50) (s64_done) (s74_done) (s76_done)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_done))))
  (:durative-action do_step51 :duration 2700
    :condition (at start (and (step_pending step51) (s27_done) (s43_done)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_done))))
  (:durative-action do_step52 :duration 120
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_done))))
  (:durative-action do_step53 :duration 1200
    :condition (at start (and (step_pending step53) (s5_done) (s16_done) (s35_done) (s36_done) (s40_done) (s61_done)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_done))))
  (:durative-action do_step54 :duration 3600
    :condition (at start (and (step_pending step54) (s3_done) (s19_done) (s23_done) (s56_done)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_done))))
  (:durative-action do_step55 :duration 300
    :condition (at start (and (step_pending step55) (s22_done) (s23_done) (s24_done) (s56_done) (s72_done) (s74_done)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_done))))
  (:durative-action do_step56 :duration 300
    :condition (at start (and (step_pending step56) (s72_done)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_done))))
  (:durative-action do_step57 :duration 600
    :condition (at start (and (step_pending step57) (s3_done) (s17_done) (s23_done) (s41_done) (s79_done)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_done))))
  (:durative-action do_step58 :duration 1500
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_done))))
  (:durative-action do_step59 :duration 900
    :condition (at start (and (step_pending step59) (s32_done) (s52_done) (s65_done) (s68_done)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_done))))
  (:durative-action do_step60 :duration 1800
    :condition (at start (and (step_pending step60) (s4_done) (s25_done) (s51_done) (s52_done)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_done))))
  (:durative-action do_step61 :duration 3600
    :condition (at start (and (step_pending step61) (s10_done) (s19_done)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s61_done))))
  (:durative-action do_step62 :duration 2700
    :condition (at start (and (step_pending step62) (s72_done)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s62_done))))
  (:durative-action do_step63 :duration 600
    :condition (at start (and (step_pending step63) (s33_done) (s40_done)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s63_done))))
  (:durative-action do_step64 :duration 300
    :condition (at start (and (step_pending step64) (s5_done) (s32_done) (s40_done) (s62_done)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s64_done))))
  (:durative-action do_step65 :duration 1800
    :condition (at start (and (step_pending step65) (s13_done) (s36_done) (s42_done) (s55_done) (s62_done) (s75_done)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s65_done))))
  (:durative-action do_step66 :duration 1200
    :condition (at start (and (step_pending step66) (s21_done) (s23_done) (s57_done) (s58_done) (s77_done)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s66_done))))
  (:durative-action do_step67 :duration 900
    :condition (at start (and (step_pending step67) (s68_done)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s67_done))))
  (:durative-action do_step68 :duration 1800
    :condition (at start (and (step_pending step68) (s27_done)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s68_done))))
  (:durative-action do_step69 :duration 1200
    :condition (at start (and (step_pending step69) (s5_done) (s16_done) (s25_done) (s27_done) (s40_done) (s55_done) (s76_done)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s69_done))))
  (:durative-action do_step70 :duration 300
    :condition (at start (and (step_pending step70) (s2_done) (s15_done) (s21_done) (s22_done) (s52_done) (s57_done) (s61_done)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (s70_done))))
  (:durative-action do_step71 :duration 300
    :condition (at start (and (step_pending step71) (s47_done) (s49_done)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (s71_done))))
  (:durative-action do_step72 :duration 900
    :condition (at start (and (step_pending step72) (s29_done)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (s72_done))))
  (:durative-action do_step73 :duration 1200
    :condition (at start (and (step_pending step73) (s19_done) (s38_done) (s40_done) (s77_done)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (s73_done))))
  (:durative-action do_step74 :duration 600
    :condition (at start (and (step_pending step74) (s73_done)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (s74_done))))
  (:durative-action do_step75 :duration 300
    :condition (at start (and (step_pending step75) (s62_done)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (s75_done))))
  (:durative-action do_step76 :duration 600
    :condition (at start (step_pending step76))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (s76_done))))
  (:durative-action do_step77 :duration 300
    :condition (at start (step_pending step77))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (s77_done))))
  (:durative-action do_step78 :duration 300
    :condition (at start (and (step_pending step78) (s16_done) (s24_done)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (s78_done))))
  (:durative-action do_step79 :duration 300
    :condition (at start (and (step_pending step79) (s76_done)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (s79_done))))
  (:durative-action do_step80 :duration 120
    :condition (at start (step_pending step80))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (s80_done))))
)