(define (domain counseling_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_sem) (step2_sem) (step3_sem) (step4_sem) (step5_sem) (step6_sem) (step7_sem) (step8_sem) (step9_sem) (step10_sem)
    (step11_sem) (step12_sem) (step13_sem) (step14_sem) (step15_sem) (step16_sem) (step17_sem) (step18_sem) (step19_sem) (step20_sem)
    (step21_sem) (step22_sem) (step23_sem) (step24_sem) (step25_sem) (step26_sem) (step27_sem) (step28_sem) (step29_sem) (step30_sem)
    (step31_sem) (step32_sem) (step33_sem) (step34_sem) (step35_sem) (step36_sem) (step37_sem) (step38_sem) (step39_sem) (step40_sem)
    (step41_sem) (step42_sem) (step43_sem) (step44_sem) (step45_sem) (step46_sem) (step47_sem) (step48_sem) (step49_sem) (step50_sem)
    (step51_sem) (step52_sem) (step53_sem) (step54_sem) (step55_sem) (step56_sem) (step57_sem) (step58_sem) (step59_sem) (step60_sem)
    (step61_sem) (step62_sem) (step63_sem) (step64_sem) (step65_sem) (step66_sem) (step67_sem) (step68_sem) (step69_sem) (step70_sem)
    (step71_sem) (step72_sem) (step73_sem) (step74_sem) (step75_sem) (step76_sem) (step77_sem) (step78_sem) (step79_sem) (step80_sem)
    (step81_sem) (step82_sem) (step83_sem) (step84_sem) (step85_sem) (step86_sem) (step87_sem) (step88_sem) (step89_sem) (step90_sem))
  (:durative-action do_step1
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step1)) (at start (step24_sem)) (at start (step35_sem)) (at start (step42_sem)) (at start (step47_sem)) (at start (step82_sem)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_sem))))
  (:durative-action do_step2
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (step79_sem)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_sem))))
  (:durative-action do_step3
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step3)) (at start (step4_sem)) (at start (step55_sem)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_sem))))
  (:durative-action do_step4
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (step78_sem)) (at start (step81_sem)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_sem))))
  (:durative-action do_step5
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (step7_sem)) (at start (step90_sem)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_sem))))
  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_sem))))
  (:durative-action do_step7
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step7)) (at start (step53_sem)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_sem))))
  (:durative-action do_step8
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (step20_sem)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_sem))))
  (:durative-action do_step9
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (step23_sem)) (at start (step37_sem)) (at start (step53_sem)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_sem))))
  (:durative-action do_step10
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (step1_sem)) (at start (step36_sem)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_sem))))
  (:durative-action do_step11
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step11)) (at start (step48_sem)) (at start (step49_sem)) (at start (step74_sem)) (at start (step75_sem)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_sem))))
  (:durative-action do_step12
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step12)) (at start (step1_sem)) (at start (step6_sem)) (at start (step38_sem)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_sem))))
  (:durative-action do_step13
    :duration (= ?duration 600)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_sem))))
  (:durative-action do_step14
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (step6_sem)) (at start (step18_sem)) (at start (step38_sem)) (at start (step61_sem)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_sem))))
  (:durative-action do_step15
    :duration (= ?duration 1800)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_sem))))
  (:durative-action do_step16
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step16)) (at start (step28_sem)) (at start (step41_sem)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_sem))))
  (:durative-action do_step17
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (step2_sem)) (at start (step15_sem)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_sem))))
  (:durative-action do_step18
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step18)) (at start (step70_sem)) (at start (step81_sem)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_sem))))
  (:durative-action do_step19
    :duration (= ?duration 1800)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_sem))))
  (:durative-action do_step20
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (step19_sem)) (at start (step37_sem)) (at start (step57_sem)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_sem))))
  (:durative-action do_step21
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step21)) (at start (step20_sem)) (at start (step32_sem)) (at start (step53_sem)) (at start (step75_sem)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_sem))))
  (:durative-action do_step22
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step22)) (at start (step13_sem)) (at start (step63_sem)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_sem))))
  (:durative-action do_step23
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step23)) (at start (step75_sem)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_sem))))
  (:durative-action do_step24
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step24)) (at start (step70_sem)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_sem))))
  (:durative-action do_step25
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step25)) (at start (step8_sem)) (at start (step13_sem)) (at start (step82_sem)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_sem))))
  (:durative-action do_step26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (step8_sem)) (at start (step72_sem)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_sem))))
  (:durative-action do_step27
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step27)) (at start (step75_sem)) (at start (step79_sem)) (at start (step83_sem)) (at start (step89_sem)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_sem))))
  (:durative-action do_step28
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (step90_sem)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_sem))))
  (:durative-action do_step29
    :duration (= ?duration 600)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_sem))))
  (:durative-action do_step30
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step30)) (at start (step33_sem)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_sem))))
  (:durative-action do_step31
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step31)) (at start (step8_sem)) (at start (step17_sem)) (at start (step32_sem)) (at start (step37_sem)) (at start (step44_sem)) (at start (step48_sem)) (at start (step53_sem)) (at start (step83_sem)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_sem))))
  (:durative-action do_step32
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step32)) (at start (step58_sem)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_sem))))
  (:durative-action do_step33
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step33)) (at start (step35_sem)) (at start (step37_sem)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_sem))))
  (:durative-action do_step34
    :duration (= ?duration 2400)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_sem))))
  (:durative-action do_step35
    :duration (= ?duration 1200)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_sem))))
  (:durative-action do_step36
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step36)) (at start (step17_sem)) (at start (step37_sem)) (at start (step41_sem)) (at start (step75_sem)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_sem))))
  (:durative-action do_step37
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step37)) (at start (step51_sem)) (at start (step70_sem)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_sem))))
  (:durative-action do_step38
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step38)) (at start (step13_sem)) (at start (step20_sem)) (at start (step73_sem)) (at start (step82_sem)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_sem))))
  (:durative-action do_step39
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step39)) (at start (step13_sem)) (at start (step33_sem)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_sem))))
  (:durative-action do_step40
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step40)) (at start (step4_sem)) (at start (step13_sem)) (at start (step62_sem)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_sem))))
  (:durative-action do_step41
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step41)) (at start (step15_sem)) (at start (step37_sem)) (at start (step65_sem)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (step41_sem))))
  (:durative-action do_step42
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step42)) (at start (step13_sem)) (at start (step15_sem)) (at start (step48_sem)) (at start (step55_sem)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (step42_sem))))
  (:durative-action do_step43
    :duration (= ?duration 1800)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (step43_sem))))
  (:durative-action do_step44
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step44)) (at start (step4_sem)) (at start (step57_sem)) (at start (step77_sem)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (step44_sem))))
  (:durative-action do_step45
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step45)) (at start (step4_sem)) (at start (step18_sem)) (at start (step61_sem)) (at start (step69_sem)) (at start (step89_sem)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (step45_sem))))
  (:durative-action do_step46
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step46)) (at start (step3_sem)) (at start (step18_sem)) (at start (step69_sem)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (step46_sem))))
  (:durative-action do_step47
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step47)) (at start (step34_sem)) (at start (step41_sem)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (step47_sem))))
  (:durative-action do_step48
    :duration (= ?duration 600)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (step48_sem))))
  (:durative-action do_step49
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step49)) (at start (step13_sem)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (step49_sem))))
  (:durative-action do_step50
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step50)) (at start (step55_sem)) (at start (step69_sem)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (step50_sem))))
  (:durative-action do_step51
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step51)) (at start (step23_sem)) (at start (step81_sem)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (step51_sem))))
  (:durative-action do_step52
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step52)) (at start (step4_sem)) (at start (step64_sem)) (at start (step77_sem)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (step52_sem))))
  (:durative-action do_step53
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step53)) (at start (step81_sem)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (step53_sem))))
  (:durative-action do_step54
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step54)) (at start (step26_sem)) (at start (step38_sem)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (step54_sem))))
  (:durative-action do_step55
    :duration (= ?duration 1200)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (step55_sem))))
  (:durative-action do_step56
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step56)) (at start (step23_sem)) (at start (step24_sem)) (at start (step34_sem)) (at start (step47_sem)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (step56_sem))))
  (:durative-action do_step57
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step57)) (at start (step13_sem)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (step57_sem))))
  (:durative-action do_step58
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step58)) (at start (step36_sem)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (step58_sem))))
  (:durative-action do_step59
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step59)) (at start (step16_sem)) (at start (step20_sem)) (at start (step28_sem)) (at start (step50_sem)) (at start (step72_sem)) (at start (step74_sem)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (step59_sem))))
  (:durative-action do_step60
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step60)) (at start (step4_sem)) (at start (step11_sem)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (step60_sem))))
  (:durative-action do_step61
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step61)) (at start (step11_sem)) (at start (step22_sem)) (at start (step23_sem)) (at start (step83_sem)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (step61_sem))))
  (:durative-action do_step62
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step62)) (at start (step7_sem)) (at start (step28_sem)) (at start (step33_sem)) (at start (step36_sem)) (at start (step44_sem)) (at start (step46_sem)) (at start (step55_sem)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (step62_sem))))
  (:durative-action do_step63
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step63)) (at start (step2_sem)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (step63_sem))))
  (:durative-action do_step64
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step64)) (at start (step11_sem)) (at start (step12_sem)) (at start (step21_sem)) (at start (step55_sem)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (step64_sem))))
  (:durative-action do_step65
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step65)) (at start (step35_sem)) (at start (step78_sem)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (step65_sem))))
  (:durative-action do_step66
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step66)) (at start (step39_sem)) (at start (step47_sem)) (at start (step54_sem)) (at start (step75_sem)) (at start (step89_sem)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (step66_sem))))
  (:durative-action do_step67
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step67)) (at start (step12_sem)) (at start (step23_sem)) (at start (step25_sem)) (at start (step48_sem)) (at start (step50_sem)) (at start (step64_sem)) (at start (step71_sem)) (at start (step85_sem)) (at start (step90_sem)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (step67_sem))))
  (:durative-action do_step68
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step68)) (at start (step1_sem)) (at start (step39_sem)) (at start (step43_sem)) (at start (step59_sem)) (at start (step89_sem)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (step68_sem))))
  (:durative-action do_step69
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step69)) (at start (step20_sem)) (at start (step28_sem)) (at start (step74_sem)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (step69_sem))))
  (:durative-action do_step70
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step70)) (at start (step29_sem)) (at start (step90_sem)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (step70_sem))))
  (:durative-action do_step71
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step71)) (at start (step11_sem)) (at start (step25_sem)) (at start (step41_sem)) (at start (step90_sem)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (step71_sem))))
  (:durative-action do_step72
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step72)) (at start (step33_sem)) (at start (step38_sem)) (at start (step42_sem)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (step72_sem))))
  (:durative-action do_step73
    :duration (= ?duration 600)
    :condition (at start (step_pending step73))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (step73_sem))))
  (:durative-action do_step74
    :duration (= ?duration 120)
    :condition (at start (step_pending step74))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (step74_sem))))
  (:durative-action do_step75
    :duration (= ?duration 900)
    :condition (at start (step_pending step75))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (step75_sem))))
  (:durative-action do_step76
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step76)) (at start (step23_sem)) (at start (step29_sem)) (at start (step41_sem)) (at start (step43_sem)) (at start (step79_sem)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (step76_sem))))
  (:durative-action do_step77
    :duration (= ?duration 300)
    :condition (at start (step_pending step77))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (step77_sem))))
  (:durative-action do_step78
    :duration (= ?duration 1800)
    :condition (at start (step_pending step78))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (step78_sem))))
  (:durative-action do_step79
    :duration (= ?duration 900)
    :condition (at start (step_pending step79))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (step79_sem))))
  (:durative-action do_step80
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step80)) (at start (step11_sem)) (at start (step31_sem)) (at start (step44_sem)) (at start (step47_sem)) (at start (step49_sem)) (at start (step50_sem)) (at start (step55_sem)) (at start (step65_sem)) (at start (step88_sem)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (step80_sem))))
  (:durative-action do_step81
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step81)) (at start (step15_sem)) (at start (step23_sem)) (at start (step63_sem)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (step81_sem))))
  (:durative-action do_step82
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step82)) (at start (step17_sem)) (at start (step48_sem)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (step82_sem))))
  (:durative-action do_step83
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step83)) (at start (step38_sem)) (at start (step43_sem)) (at start (step57_sem)) (at start (step76_sem)) (at start (step77_sem)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (step83_sem))))
  (:durative-action do_step84
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step84)) (at start (step6_sem)) (at start (step11_sem)) (at start (step18_sem)) (at start (step22_sem)) (at start (step36_sem)) (at start (step65_sem)) (at start (step73_sem)) (at start (step75_sem)) (at start (step83_sem)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (step84_sem))))
  (:durative-action do_step85
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step85)) (at start (step20_sem)) (at start (step29_sem)) (at start (step54_sem)) (at start (step66_sem)) (at start (step79_sem)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (step85_sem))))
  (:durative-action do_step86
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step86)) (at start (step43_sem)) (at start (step46_sem)) (at start (step71_sem)) (at start (step76_sem)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (step86_sem))))
  (:durative-action do_step87
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step87)) (at start (step78_sem)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (step87_sem))))
  (:durative-action do_step88
    :duration (= ?duration 600)
    :condition (at start (step_pending step88))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (step88_sem))))
  (:durative-action do_step89
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step89)) (at start (step20_sem)) (at start (step32_sem)) (at start (step51_sem)) (at start (step55_sem)) (at start (step74_sem)) (at start (step79_sem)) (at start (step84_sem)) (at start (step88_sem)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (step89_sem))))
  (:durative-action do_step90
    :duration (= ?duration 600)
    :condition (at start (step_pending step90))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (step90_sem)))))