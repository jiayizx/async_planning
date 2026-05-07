(define (domain farina)
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
    (step76_done) (step77_done) (step78_done) (step79_done) (step80_done))
  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (step42_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_done))))
  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (step41_done)) (at start (step63_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_done))))
  (:durative-action do_step3
    :duration (= ?duration 43200)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_done))))
  (:durative-action do_step4
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (step65_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_done))))
  (:durative-action do_step5
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (step16_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_done))))
  (:durative-action do_step6
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step6)) (at start (step20_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_done))))
  (:durative-action do_step7
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step7)) (at start (step25_done)) (at start (step51_done)) (at start (step73_done)) (at start (step75_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_done))))
  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step8)) (at start (step35_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_done))))
  (:durative-action do_step9
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step9)) (at start (step23_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_done))))
  (:durative-action do_step10
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step10)) (at start (step64_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_done))))
  (:durative-action do_step11
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step11)) (at start (step20_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_done))))
  (:durative-action do_step12
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step12)) (at start (step58_done)) (at start (step71_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_done))))
  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step13)) (at start (step12_done)) (at start (step43_done)) (at start (step75_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_done))))
  (:durative-action do_step14
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step14)) (at start (step58_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_done))))
  (:durative-action do_step15
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step15)) (at start (step27_done)) (at start (step46_done)) (at start (step72_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_done))))
  (:durative-action do_step16
    :duration (= ?duration 3600)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_done))))
  (:durative-action do_step17
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step17)) (at start (step71_done)) (at start (step77_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_done))))
  (:durative-action do_step18
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step18)) (at start (step72_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_done))))
  (:durative-action do_step19
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step19)) (at start (step27_done)) (at start (step28_done)) (at start (step43_done)) (at start (step67_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_done))))
  (:durative-action do_step20
    :duration (= ?duration 2700)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_done))))
  (:durative-action do_step21
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step21)) (at start (step20_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_done))))
  (:durative-action do_step22
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step22)) (at start (step2_done)) (at start (step38_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_done))))
  (:durative-action do_step23
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step23)) (at start (step69_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_done))))
  (:durative-action do_step24
    :duration (= ?duration 600)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_done))))
  (:durative-action do_step25
    :duration (= ?duration 300)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_done))))
  (:durative-action do_step26
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step26)) (at start (step2_done)) (at start (step21_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_done))))
  (:durative-action do_step27
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step27)) (at start (step2_done)) (at start (step66_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_done))))
  (:durative-action do_step28
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step28)) (at start (step3_done)) (at start (step62_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_done))))
  (:durative-action do_step29
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step29)) (at start (step21_done)) (at start (step62_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_done))))
  (:durative-action do_step30
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step30)) (at start (step1_done)) (at start (step10_done)) (at start (step37_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_done))))
  (:durative-action do_step31
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step31)) (at start (step3_done)) (at start (step12_done)) (at start (step30_done)) (at start (step33_done)) (at start (step36_done)) (at start (step40_done)) (at start (step43_done)) (at start (step65_done)) (at start (step75_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_done))))
  (:durative-action do_step32
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step32)) (at start (step16_done)) (at start (step29_done)) (at start (step44_done)) (at start (step61_done)) (at start (step62_done)) (at start (step63_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_done))))
  (:durative-action do_step33
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step33)) (at start (step17_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_done))))
  (:durative-action do_step34
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step34)) (at start (step44_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_done))))
  (:durative-action do_step35
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step35)) (at start (step38_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_done))))
  (:durative-action do_step36
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step36)) (at start (step41_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_done))))
  (:durative-action do_step37
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step37)) (at start (step52_done)) (at start (step53_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_done))))
  (:durative-action do_step38
    :duration (= ?duration 1200)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_done))))
  (:durative-action do_step39
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step39)) (at start (step30_done)) (at start (step54_done)) (at start (step63_done)) (at start (step65_done)) (at start (step67_done)) (at start (step72_done)) (at start (step76_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_done))))
  (:durative-action do_step40
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step40)) (at start (step34_done)) (at start (step74_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_done))))
  (:durative-action do_step41
    :duration (= ?duration 1800)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (step41_done))))
  (:durative-action do_step42
    :duration (= ?duration 86400)
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (step42_done))))
  (:durative-action do_step43
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step43)) (at start (step20_done)) (at start (step42_done)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (step43_done))))
  (:durative-action do_step44
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step44)) (at start (step67_done)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (step44_done))))
  (:durative-action do_step45
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step45)) (at start (step8_done)) (at start (step67_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (step45_done))))
  (:durative-action do_step46
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step46)) (at start (step42_done)) (at start (step66_done)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (step46_done))))
  (:durative-action do_step47
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step47)) (at start (step10_done)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (step47_done))))
  (:durative-action do_step48
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step48)) (at start (step3_done)) (at start (step52_done)) (at start (step65_done)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (step48_done))))
  (:durative-action do_step49
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step49)) (at start (step14_done)) (at start (step15_done)) (at start (step18_done)) (at start (step33_done)) (at start (step37_done)) (at start (step46_done)) (at start (step67_done)) (at start (step71_done)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (step49_done))))
  (:durative-action do_step50
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step50)) (at start (step53_done)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (step50_done))))
  (:durative-action do_step51
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step51)) (at start (step58_done)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (step51_done))))
  (:durative-action do_step52
    :duration (= ?duration 3600)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (step52_done))))
  (:durative-action do_step53
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step53)) (at start (step67_done)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (step53_done))))
  (:durative-action do_step54
    :duration (= ?duration 600)
    :condition (at start (step_pending step54))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (step54_done))))
  (:durative-action do_step55
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step55)) (at start (step16_done)) (at start (step66_done)) (at start (step76_done)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (step55_done))))
  (:durative-action do_step56
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step56)) (at start (step11_done)) (at start (step53_done)) (at start (step73_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (step56_done))))
  (:durative-action do_step57
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step57)) (at start (step50_done)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (step57_done))))
  (:durative-action do_step58
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step58)) (at start (step64_done)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (step58_done))))
  (:durative-action do_step59
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step59)) (at start (step12_done)) (at start (step36_done)) (at start (step38_done)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (step59_done))))
  (:durative-action do_step60
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step60)) (at start (step30_done)) (at start (step36_done)) (at start (step56_done)) (at start (step68_done)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (step60_done))))
  (:durative-action do_step61
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step61)) (at start (step58_done)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (step61_done))))
  (:durative-action do_step62
    :duration (= ?duration 1500)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (step62_done))))
  (:durative-action do_step63
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step63)) (at start (step67_done)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (step63_done))))
  (:durative-action do_step64
    :duration (= ?duration 1200)
    :condition (at start (step_pending step64))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (step64_done))))
  (:durative-action do_step65
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step65)) (at start (step24_done)) (at start (step67_done)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (step65_done))))
  (:durative-action do_step66
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step66)) (at start (step1_done)) (at start (step5_done)) (at start (step69_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (step66_done))))
  (:durative-action do_step67
    :duration (= ?duration 900)
    :condition (at start (step_pending step67))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (step67_done))))
  (:durative-action do_step68
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step68)) (at start (step32_done)) (at start (step43_done)) (at start (step63_done)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (step68_done))))
  (:durative-action do_step69
    :duration (= ?duration 1800)
    :condition (at start (step_pending step69))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (step69_done))))
  (:durative-action do_step70
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step70)) (at start (step9_done)) (at start (step27_done)) (at start (step30_done)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (step70_done))))
  (:durative-action do_step71
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step71)) (at start (step3_done)) (at start (step29_done)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (step71_done))))
  (:durative-action do_step72
    :duration (= ?duration 300)
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (step72_done))))
  (:durative-action do_step73
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step73)) (at start (step14_done)) (at start (step64_done)) (at start (step69_done)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (step73_done))))
  (:durative-action do_step74
    :duration (= ?duration 600)
    :condition (at start (step_pending step74))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (step74_done))))
  (:durative-action do_step75
    :duration (= ?duration 3600)
    :condition (at start (step_pending step75))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (step75_done))))
  (:durative-action do_step76
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step76)) (at start (step10_done)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (step76_done))))
  (:durative-action do_step77
    :duration (= ?duration 600)
    :condition (at start (step_pending step77))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (step77_done))))
  (:durative-action do_step78
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step78)) (at start (step12_done)) (at start (step41_done)) (at start (step66_done)) (at start (step76_done)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (step78_done))))
  (:durative-action do_step79
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step79)) (at start (step69_done)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (step79_done))))
  (:durative-action do_step80
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step80)) (at start (step25_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (step80_done)))))