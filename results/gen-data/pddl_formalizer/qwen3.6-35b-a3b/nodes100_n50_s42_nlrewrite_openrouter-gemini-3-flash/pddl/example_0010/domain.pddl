(define (domain beat_eggs)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done)
    (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done)
    (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
    (step31_done) (step32_done) (step33_done) (step34_done) (step35_done)
    (step36_done) (step37_done) (step38_done) (step39_done) (step40_done)
    (step41_done) (step42_done) (step43_done) (step44_done) (step45_done)
    (step46_done) (step47_done) (step48_done) (step49_done) (step50_done)
    (step51_done) (step52_done) (step53_done) (step54_done) (step55_done)
    (step56_done) (step57_done) (step58_done) (step59_done) (step60_done)
    (step61_done) (step62_done) (step63_done) (step64_done) (step65_done)
    (step66_done) (step67_done) (step68_done) (step69_done) (step70_done)
    (step71_done) (step72_done) (step73_done) (step74_done) (step75_done)
    (step76_done) (step77_done) (step78_done) (step79_done) (step80_done)
    (step81_done) (step82_done) (step83_done) (step84_done) (step85_done)
    (step86_done) (step87_done) (step88_done) (step89_done) (step90_done)
    (step91_done) (step92_done) (step93_done) (step94_done) (step95_done)
    (step96_done) (step97_done) (step98_done) (step99_done) (step100_done))
  (:durative-action step1 :duration 30
    :condition (and (at start (step_pending step1)) (at start (step9_done)) (at start (step57_done)) (at start (step85_done)) (at start (step94_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_done))))
  (:durative-action step2 :duration 10
    :condition (and (at start (step_pending step2)) (at start (step50_done)) (at start (step67_done)) (at start (step83_done)) (at start (step98_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_done))))
  (:durative-action step3 :duration 120
    :condition (and (at start (step_pending step3)) (at start (step51_done)) (at start (step60_done)) (at start (step65_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_done))))
  (:durative-action step4 :duration 60
    :condition (and (at start (step_pending step4)) (at start (step10_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_done))))
  (:durative-action step5 :duration 30
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_done))))
  (:durative-action step6 :duration 45
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_done))))
  (:durative-action step7 :duration 120
    :condition (and (at start (step_pending step7)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_done))))
  (:durative-action step8 :duration 300
    :condition (and (at start (step_pending step8)) (at start (step18_done)) (at start (step19_done)) (at start (step54_done)) (at start (step71_done)) (at start (step89_done)) (at start (step97_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_done))))
  (:durative-action step9 :duration 20
    :condition (and (at start (step_pending step9)) (at start (step5_done)) (at start (step17_done)) (at start (step56_done)) (at start (step71_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_done))))
  (:durative-action step10 :duration 180
    :condition (and (at start (step_pending step10)) (at start (step83_done)) (at start (step89_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_done))))
  (:durative-action step11 :duration 10
    :condition (and (at start (step_pending step11)) (at start (step58_done)) (at start (step76_done)) (at start (step80_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_done))))
  (:durative-action step12 :duration 60
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_done))))
  (:durative-action step13 :duration 15
    :condition (and (at start (step_pending step13)) (at start (step10_done)) (at start (step28_done)) (at start (step40_done)) (at start (step67_done)) (at start (step87_done)) (at start (step94_done)) (at start (step96_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_done))))
  (:durative-action step14 :duration 15
    :condition (and (at start (step_pending step14)) (at start (step11_done)) (at start (step41_done)) (at start (step65_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_done))))
  (:durative-action step15 :duration 40
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_done))))
  (:durative-action step16 :duration 10
    :condition (and (at start (step_pending step16)) (at start (step6_done)) (at start (step46_done)) (at start (step64_done)) (at start (step74_done)) (at start (step85_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_done))))
  (:durative-action step17 :duration 15
    :condition (and (at start (step_pending step17)) (at start (step96_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_done))))
  (:durative-action step18 :duration 60
    :condition (and (at start (step_pending step18)) (at start (step6_done)) (at start (step26_done)) (at start (step38_done)) (at start (step83_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_done))))
  (:durative-action step19 :duration 20
    :condition (and (at start (step_pending step19)) (at start (step17_done)) (at start (step47_done)) (at start (step84_done)) (at start (step94_done)) (at start (step96_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_done))))
  (:durative-action step20 :duration 120
    :condition (and (at start (step_pending step20)) (at start (step67_done)) (at start (step90_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_done))))
  (:durative-action step21 :duration 10
    :condition (and (at start (step_pending step21)) (at start (step6_done)) (at start (step57_done)) (at start (step58_done)) (at start (step65_done)) (at start (step81_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_done))))
  (:durative-action step22 :duration 15
    :condition (and (at start (step_pending step22)) (at start (step73_done)) (at start (step78_done)) (at start (step90_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_done))))
  (:durative-action step23 :duration 5
    :condition (and (at start (step_pending step23)) (at start (step2_done)) (at start (step24_done)) (at start (step51_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_done))))
  (:durative-action step24 :duration 30
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_done))))
  (:durative-action step25 :duration 20
    :condition (and (at start (step_pending step25)) (at start (step6_done)) (at start (step7_done)) (at start (step68_done)) (at start (step96_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_done))))
  (:durative-action step26 :duration 5
    :condition (and (at start (step_pending step26)) (at start (step57_done)) (at start (step66_done)) (at start (step73_done)) (at start (step88_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_done))))
  (:durative-action step27 :duration 60
    :condition (and (at start (step_pending step27)) (at start (step11_done)) (at start (step73_done)) (at start (step88_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_done))))
  (:durative-action step28 :duration 30
    :condition (and (at start (step_pending step28)) (at start (step7_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_done))))
  (:durative-action step29 :duration 15
    :condition (and (at start (step_pending step29)) (at start (step7_done)) (at start (step15_done)) (at start (step24_done)) (at start (step54_done)) (at start (step62_done)) (at start (step72_done)) (at start (step100_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_done))))
  (:durative-action step30 :duration 15
    :condition (and (at start (step_pending step30)) (at start (step84_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_done))))
  (:durative-action step31 :duration 45
    :condition (and (at start (step_pending step31)) (at start (step28_done)) (at start (step62_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_done))))
  (:durative-action step32 :duration 10
    :condition (and (at start (step_pending step32)) (at start (step29_done)) (at start (step36_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_done))))
  (:durative-action step33 :duration 5
    :condition (and (at start (step_pending step33)) (at start (step13_done)) (at start (step30_done)) (at start (step34_done)) (at start (step42_done)) (at start (step83_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_done))))
  (:durative-action step34 :duration 60
    :condition (and (at start (step_pending step34)) (at start (step47_done)) (at start (step88_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_done))))
  (:durative-action step35 :duration 1800
    :condition (and (at start (step_pending step35)) (at start (step52_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_done))))
  (:durative-action step36 :duration 15
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_done))))
  (:durative-action step37 :duration 120
    :condition (and (at start (step_pending step37)) (at start (step35_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_done))))
  (:durative-action step38 :duration 180
    :condition (and (at start (step_pending step38)) (at start (step36_done)) (at start (step39_done)) (at start (step40_done)) (at start (step51_done)) (at start (step66_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_done))))
  (:durative-action step39 :duration 15
    :condition (and (at start (step_pending step39)) (at start (step17_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_done))))
  (:durative-action step40 :duration 20
    :condition (and (at start (step_pending step40)) (at start (step17_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_done))))
  (:durative-action step41 :duration 20
    :condition (and (at start (step_pending step41)) (at start (step28_done)) (at start (step84_done)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (step41_done))))
  (:durative-action step42 :duration 5
    :condition (and (at start (step_pending step42)) (at start (step36_done)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (step42_done))))
  (:durative-action step43 :duration 10
    :condition (and (at start (step_pending step43)) (at start (step62_done)) (at start (step75_done)) (at start (step81_done)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (step43_done))))
  (:durative-action step44 :duration 60
    :condition (and (at start (step_pending step44)) (at start (step83_done)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (step44_done))))
  (:durative-action step45 :duration 15
    :condition (and (at start (step_pending step45)) (at start (step47_done)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (step45_done))))
  (:durative-action step46 :duration 30
    :condition (and (at start (step_pending step46)) (at start (step26_done)) (at start (step34_done)) (at start (step48_done)) (at start (step67_done)) (at start (step72_done)) (at start (step74_done)) (at start (step79_done)) (at start (step100_done)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (step46_done))))
  (:durative-action step47 :duration 30
    :condition (and (at start (step_pending step47)) (at start (step67_done)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (step47_done))))
  (:durative-action step48 :duration 10
    :condition (and (at start (step_pending step48)) (at start (step6_done)) (at start (step29_done)) (at start (step54_done)) (at start (step71_done)) (at start (step75_done)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (step48_done))))
  (:durative-action step49 :duration 20
    :condition (and (at start (step_pending step49)) (at start (step12_done)) (at start (step33_done)) (at start (step39_done)) (at start (step61_done)) (at start (step94_done)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (step49_done))))
  (:durative-action step50 :duration 60
    :condition (and (at start (step_pending step50)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (step50_done))))
  (:durative-action step51 :duration 20
    :condition (and (at start (step_pending step51)) (at start (step10_done)) (at start (step72_done)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (step51_done))))
  (:durative-action step52 :duration 120
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (step52_done))))
  (:durative-action step53 :duration 10
    :condition (and (at start (step_pending step53)) (at start (step29_done)) (at start (step72_done)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (step53_done))))
  (:durative-action step54 :duration 15
    :condition (at start (step_pending step54))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (step54_done))))
  (:durative-action step55 :duration 60
    :condition (and (at start (step_pending step55)) (at start (step72_done)) (at start (step79_done)) (at start (step85_done)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (step55_done))))
  (:durative-action step56 :duration 10
    :condition (and (at start (step_pending step56)) (at start (step7_done)) (at start (step28_done)) (at start (step57_done)) (at start (step67_done)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (step56_done))))
  (:durative-action step57 :duration 15
    :condition (and (at start (step_pending step57)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (step57_done))))
  (:durative-action step58 :duration 60
    :condition (and (at start (step_pending step58)) (at start (step47_done)) (at start (step90_done)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (step58_done))))
  (:durative-action step59 :duration 10
    :condition (and (at start (step_pending step59)) (at start (step12_done)) (at start (step49_done)) (at start (step76_done)) (at start (step83_done)) (at start (step87_done)) (at start (step94_done)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (step59_done))))
  (:durative-action step60 :duration 20
    :condition (and (at start (step_pending step60)) (at start (step56_done)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (step60_done))))
  (:durative-action step61 :duration 45
    :condition (and (at start (step_pending step61)) (at start (step22_done)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (step61_done))))
  (:durative-action step62 :duration 60
    :condition (and (at start (step_pending step62)) (at start (step4_done)) (at start (step58_done)) (at start (step79_done)) (at start (step95_done)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (step62_done))))
  (:durative-action step63 :duration 180
    :condition (and (at start (step_pending step63)) (at start (step55_done)) (at start (step86_done)) (at start (step93_done)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (step63_done))))
  (:durative-action step64 :duration 60
    :condition (and (at start (step_pending step64)) (at start (step18_done)) (at start (step53_done)) (at start (step60_done)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (step64_done))))
  (:durative-action step65 :duration 60
    :condition (and (at start (step_pending step65)) (at start (step15_done)) (at start (step28_done)) (at start (step54_done)) (at start (step85_done)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (step65_done))))
  (:durative-action step66 :duration 15
    :condition (and (at start (step_pending step66)) (at start (step51_done)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (step66_done))))
  (:durative-action step67 :duration 20
    :condition (and (at start (step_pending step67)) (at start (step6_done)) (at start (step7_done)) (at start (step17_done)) (at start (step54_done)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (step67_done))))
  (:durative-action step68 :duration 30
    :condition (and (at start (step_pending step68)) (at start (step1_done)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (step68_done))))
  (:durative-action step69 :duration 120
    :condition (and (at start (step_pending step69)) (at start (step6_done)) (at start (step37_done)) (at start (step47_done)) (at start (step66_done)) (at start (step87_done)) (at start (step89_done)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (step69_done))))
  (:durative-action step70 :duration 120
    :condition (and (at start (step_pending step70)) (at start (step40_done)) (at start (step57_done)) (at start (step58_done)) (at start (step80_done)) (at start (step99_done)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (step70_done))))
  (:durative-action step71 :duration 60
    :condition (at start (step_pending step71))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (step71_done))))
  (:durative-action step72 :duration 120
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (step72_done))))
  (:durative-action step73 :duration 15
    :condition (and (at start (step_pending step73)) (at start (step35_done)) (at start (step39_done)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (step73_done))))
  (:durative-action step74 :duration 240
    :condition (and (at start (step_pending step74)) (at start (step19_done)) (at start (step23_done)) (at start (step26_done)) (at start (step33_done)) (at start (step37_done)) (at start (step45_done)) (at start (step52_done)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (step74_done))))
  (:durative-action step75 :duration 30
    :condition (and (at start (step_pending step75)) (at start (step35_done)) (at start (step55_done)) (at start (step57_done)) (at start (step65_done)) (at start (step67_done)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (step75_done))))
  (:durative-action step76 :duration 60
    :condition (and (at start (step_pending step76)) (at start (step9_done)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (step76_done))))
  (:durative-action step77 :duration 120
    :condition (and (at start (step_pending step77)) (at start (step45_done)) (at start (step94_done)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (step77_done))))
  (:durative-action step78 :duration 20
    :condition (and (at start (step_pending step78)) (at start (step5_done)) (at start (step11_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (step78_done))))
  (:durative-action step79 :duration 60
    :condition (and (at start (step_pending step79)) (at start (step5_done)) (at start (step35_done)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (step79_done))))
  (:durative-action step80 :duration 45
    :condition (and (at start (step_pending step80)) (at start (step7_done)) (at start (step82_done)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (step80_done))))
  (:durative-action step81 :duration 15
    :condition (and (at start (step_pending step81)) (at start (step22_done)) (at start (step37_done)) (at start (step58_done)) (at start (step78_done)) (at start (step82_done)) (at start (step94_done)) (at start (step96_done)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (step81_done))))
  (:durative-action step82 :duration 60
    :condition (and (at start (step_pending step82)) (at start (step96_done)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (step82_done))))
  (:durative-action step83 :duration 120
    :condition (and (at start (step_pending step83)) (at start (step96_done)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (step83_done))))
  (:durative-action step84 :duration 60
    :condition (and (at start (step_pending step84)) (at start (step90_done)) (at start (step95_done)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (step84_done))))
  (:durative-action step85 :duration 20
    :condition (and (at start (step_pending step85)) (at start (step6_done)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (step85_done))))
  (:durative-action step86 :duration 10
    :condition (and (at start (step_pending step86)) (at start (step3_done)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (step86_done))))
  (:durative-action step87 :duration 20
    :condition (and (at start (step_pending step87)) (at start (step35_done)) (at start (step45_done)) (at start (step50_done)) (at start (step55_done)) (at start (step79_done)) (at start (step96_done)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (step87_done))))
  (:durative-action step88 :duration 15
    :condition (and (at start (step_pending step88)) (at start (step85_done)) (at start (step89_done)) (at start (step90_done)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (step88_done))))
  (:durative-action step89 :duration 300
    :condition (at start (step_pending step89))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (step89_done))))
  (:durative-action step90 :duration 60
    :condition (and (at start (step_pending step90)) (at start (step4_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (step90_done))))
  (:durative-action step91 :duration 120
    :condition (and (at start (step_pending step91)) (at start (step4_done)) (at start (step18_done)) (at start (step36_done)) (at start (step40_done)) (at start (step55_done)) (at start (step70_done)) (at start (step98_done)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (step91_done))))
  (:durative-action step92 :duration 60
    :condition (and (at start (step_pending step92)) (at start (step3_done)) (at start (step5_done)) (at start (step30_done)) (at start (step70_done)) (at start (step74_done)) (at start (step78_done)) (at start (step96_done)))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (step92_done))))
  (:durative-action step93 :duration 60
    :condition (at start (step_pending step93))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (step93_done))))
  (:durative-action step94 :duration 30
    :condition (and (at start (step_pending step94)) (at start (step58_done)) (at start (step62_done)))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (step94_done))))
  (:durative-action step95 :duration 20
    :condition (and (at start (step_pending step95)) (at start (step90_done)))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (step95_done))))
  (:durative-action step96 :duration 30
    :condition (and (at start (step_pending step96)) (at start (step89_done)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (step96_done))))
  (:durative-action step97 :duration 15
    :condition (and (at start (step_pending step97)) (at start (step15_done)) (at start (step22_done)) (at start (step41_done)) (at start (step53_done)) (at start (step57_done)) (at start (step68_done)) (at start (step73_done)))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (step97_done))))
  (:durative-action step98 :duration 30
    :condition (at start (step_pending step98))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (step98_done))))
  (:durative-action step99 :duration 120
    :condition (and (at start (step_pending step99)) (at start (step2_done)) (at start (step6_done)) (at start (step28_done)) (at start (step34_done)) (at start (step57_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (step99_done))))
  (:durative-action step100 :duration 30
    :condition (at start (step_pending step100))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (step100_done)))))
