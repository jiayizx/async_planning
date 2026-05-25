(define (domain british_shorthair_identification)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_done ?s - step)
    (step_pending ?s - step)
    (pred_step1_done)
    (pred_step2_done)
    (pred_step3_done)
    (pred_step4_done)
    (pred_step5_done)
    (pred_step6_done)
    (pred_step7_done)
    (pred_step8_done)
    (pred_step9_done)
    (pred_step10_done)
    (pred_step11_done)
    (pred_step12_done)
    (pred_step13_done)
    (pred_step14_done)
    (pred_step15_done)
    (pred_step16_done)
    (pred_step17_done)
    (pred_step18_done)
    (pred_step19_done)
    (pred_step20_done)
    (pred_step21_done)
    (pred_step22_done)
    (pred_step23_done)
    (pred_step24_done)
    (pred_step25_done)
    (pred_step26_done)
    (pred_step27_done)
    (pred_step28_done)
    (pred_step29_done)
    (pred_step30_done)
    (pred_step31_done)
    (pred_step32_done)
    (pred_step33_done)
    (pred_step34_done)
    (pred_step35_done)
    (pred_step36_done)
    (pred_step37_done)
    (pred_step38_done)
    (pred_step39_done)
    (pred_step40_done)
    (pred_step41_done)
    (pred_step42_done)
    (pred_step43_done)
    (pred_step44_done)
    (pred_step45_done)
    (pred_step46_done)
    (pred_step47_done)
    (pred_step48_done)
    (pred_step49_done)
    (pred_step50_done)
    (pred_step51_done)
    (pred_step52_done)
    (pred_step53_done)
    (pred_step54_done)
    (pred_step55_done)
    (pred_step56_done)
    (pred_step57_done)
    (pred_step58_done)
    (pred_step59_done)
    (pred_step60_done)
    (pred_step61_done)
    (pred_step62_done)
    (pred_step63_done)
    (pred_step64_done)
    (pred_step65_done)
    (pred_step66_done)
    (pred_step67_done)
    (pred_step68_done)
    (pred_step69_done)
    (pred_step70_done)
    (pred_step71_done)
    (pred_step72_done)
    (pred_step73_done)
    (pred_step74_done)
    (pred_step75_done)
    (pred_step76_done)
    (pred_step77_done)
    (pred_step78_done)
    (pred_step79_done)
    (pred_step80_done)
    (pred_step81_done)
    (pred_step82_done)
    (pred_step83_done)
    (pred_step84_done)
    (pred_step85_done)
    (pred_step86_done)
    (pred_step87_done)
    (pred_step88_done)
    (pred_step89_done)
    (pred_step90_done)
    (pred_step91_done)
    (pred_step92_done)
    (pred_step93_done)
    (pred_step94_done)
    (pred_step95_done)
    (pred_step96_done)
    (pred_step97_done)
    (pred_step98_done)
    (pred_step99_done)
    (pred_step100_done)
    (identification_complete))
  (:durative-action do_step1
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step1)) (at start (pred_step32_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (pred_step1_done))))
  (:durative-action do_step2
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step2)) (at start (pred_step4_done)) (at start (pred_step59_done)) (at start (pred_step94_done)) (at start (pred_step97_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (pred_step2_done))))
  (:durative-action do_step3
    :parameters ()
    :duration 30
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (pred_step3_done))))
  (:durative-action do_step4
    :parameters ()
    :duration 45
    :condition (and (at start (step_pending step4)) (at start (pred_step22_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (pred_step4_done))))
  (:durative-action do_step5
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step5)) (at start (pred_step100_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (pred_step5_done))))
  (:durative-action do_step6
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step6)) (at start (pred_step39_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (pred_step6_done))))
  (:durative-action do_step7
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step7)) (at start (pred_step1_done)) (at start (pred_step47_done)) (at start (pred_step72_done)) (at start (pred_step89_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (pred_step7_done))))
  (:durative-action do_step8
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step8)) (at start (pred_step1_done)) (at start (pred_step56_done)) (at start (pred_step85_done)) (at start (pred_step92_done)) (at start (pred_step100_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (pred_step8_done))))
  (:durative-action do_step9
    :parameters ()
    :duration 300
    :condition (and (at start (step_pending step9)) (at start (pred_step45_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (pred_step9_done))))
  (:durative-action do_step10
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step10)) (at start (pred_step100_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (pred_step10_done))))
  (:durative-action do_step11
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step11)) (at start (pred_step22_done)) (at start (pred_step83_done)) (at start (pred_step94_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (pred_step11_done))))
  (:durative-action do_step12
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step12)) (at start (pred_step17_done)) (at start (pred_step28_done)) (at start (pred_step45_done)) (at start (pred_step55_done)) (at start (pred_step68_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (pred_step12_done))))
  (:durative-action do_step13
    :parameters ()
    :duration 180
    :condition (and (at start (step_pending step13)) (at start (pred_step26_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (pred_step13_done))))
  (:durative-action do_step14
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step14)) (at start (pred_step4_done)) (at start (pred_step6_done)) (at start (pred_step8_done)) (at start (pred_step12_done)) (at start (pred_step27_done)) (at start (pred_step49_done)) (at start (pred_step61_done)) (at start (pred_step68_done)) (at start (pred_step73_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (pred_step14_done))))
  (:durative-action do_step15
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step15)) (at start (pred_step67_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (pred_step15_done))))
  (:durative-action do_step16
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step16)) (at start (pred_step43_done)) (at start (pred_step58_done)) (at start (pred_step63_done)) (at start (pred_step99_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (pred_step16_done))))
  (:durative-action do_step17
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step17)) (at start (pred_step21_done)) (at start (pred_step45_done)) (at start (pred_step89_done)) (at start (pred_step95_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (pred_step17_done))))
  (:durative-action do_step18
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step18)) (at start (pred_step6_done)) (at start (pred_step39_done)) (at start (pred_step84_done)) (at start (pred_step92_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (pred_step18_done))))
  (:durative-action do_step19
    :parameters ()
    :duration 300
    :condition (and (at start (step_pending step19)) (at start (pred_step11_done)) (at start (pred_step44_done)) (at start (pred_step57_done)) (at start (pred_step94_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (pred_step19_done))))
  (:durative-action do_step20
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step20)) (at start (pred_step43_done)) (at start (pred_step52_done)) (at start (pred_step68_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (pred_step20_done))))
  (:durative-action do_step21
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step21)) (at start (pred_step93_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (pred_step21_done))))
  (:durative-action do_step22
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step22)) (at start (pred_step100_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (pred_step22_done))))
  (:durative-action do_step23
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step23)) (at start (pred_step5_done)) (at start (pred_step7_done)) (at start (pred_step32_done)) (at start (pred_step59_done)) (at start (pred_step65_done)) (at start (pred_step69_done)) (at start (pred_step81_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (pred_step23_done))))
  (:durative-action do_step24
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step24)) (at start (pred_step50_done)) (at start (pred_step69_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (pred_step24_done))))
  (:durative-action do_step25
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step25)) (at start (pred_step10_done)) (at start (pred_step55_done)) (at start (pred_step72_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (pred_step25_done))))
  (:durative-action do_step26
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step26)) (at start (pred_step44_done)) (at start (pred_step52_done)) (at start (pred_step57_done)) (at start (pred_step80_done)) (at start (pred_step83_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (pred_step26_done))))
  (:durative-action do_step27
    :parameters ()
    :duration 45
    :condition (and (at start (step_pending step27)) (at start (pred_step51_done)) (at start (pred_step52_done)) (at start (pred_step80_done)) (at start (pred_step86_done)) (at start (pred_step97_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (pred_step27_done))))
  (:durative-action do_step28
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step28)) (at start (pred_step21_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (pred_step28_done))))
  (:durative-action do_step29
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step29)) (at start (pred_step20_done)) (at start (pred_step52_done)) (at start (pred_step74_done)) (at start (pred_step85_done)) (at start (pred_step98_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (pred_step29_done))))
  (:durative-action do_step30
    :parameters ()
    :duration 180
    :condition (and (at start (step_pending step30)) (at start (pred_step4_done)) (at start (pred_step5_done)) (at start (pred_step8_done)) (at start (pred_step72_done)) (at start (pred_step92_done)) (at start (pred_step95_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (pred_step30_done))))
  (:durative-action do_step31
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step31)) (at start (pred_step13_done)) (at start (pred_step40_done)) (at start (pred_step46_done)) (at start (pred_step50_done)) (at start (pred_step73_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (pred_step31_done))))
  (:durative-action do_step32
    :parameters ()
    :duration 3600
    :condition (and (at start (step_pending step32)) (at start (pred_step85_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (pred_step32_done))))
  (:durative-action do_step33
    :parameters ()
    :duration 60
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (pred_step33_done))))
  (:durative-action do_step34
    :parameters ()
    :duration 600
    :condition (and (at start (step_pending step34)) (at start (pred_step44_done)) (at start (pred_step48_done)) (at start (pred_step63_done)) (at start (pred_step80_done)) (at start (pred_step99_done)) (at start (pred_step100_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (pred_step34_done))))
  (:durative-action do_step35
    :parameters ()
    :duration 1800
    :condition (and (at start (step_pending step35)) (at start (pred_step73_done)) (at start (pred_step91_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (pred_step35_done))))
  (:durative-action do_step36
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step36)) (at start (pred_step8_done)) (at start (pred_step42_done)) (at start (pred_step69_done)) (at start (pred_step70_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (pred_step36_done))))
  (:durative-action do_step37
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step37)) (at start (pred_step25_done)) (at start (pred_step39_done)) (at start (pred_step72_done)) (at start (pred_step81_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (pred_step37_done))))
  (:durative-action do_step38
    :parameters ()
    :duration 900
    :condition (and (at start (step_pending step38)) (at start (pred_step91_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (pred_step38_done))))
  (:durative-action do_step39
    :parameters ()
    :duration 600
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (pred_step39_done))))
  (:durative-action do_step40
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step40)) (at start (pred_step8_done)) (at start (pred_step17_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (pred_step40_done))))
  (:durative-action do_step41
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step41)) (at start (pred_step4_done)) (at start (pred_step85_done)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (pred_step41_done))))
  (:durative-action do_step42
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step42)) (at start (pred_step35_done)) (at start (pred_step37_done)) (at start (pred_step40_done)) (at start (pred_step51_done)) (at start (pred_step57_done)) (at start (pred_step67_done)) (at start (pred_step72_done)) (at start (pred_step87_done)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (pred_step42_done))))
  (:durative-action do_step43
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step43)) (at start (pred_step1_done)) (at start (pred_step95_done)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (pred_step43_done))))
  (:durative-action do_step44
    :parameters ()
    :duration 1200
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (pred_step44_done))))
  (:durative-action do_step45
    :parameters ()
    :duration 3600
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (pred_step45_done))))
  (:durative-action do_step46
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step46)) (at start (pred_step13_done)) (at start (pred_step76_done)) (at start (pred_step79_done)) (at start (pred_step80_done)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (pred_step46_done))))
  (:durative-action do_step47
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step47)) (at start (pred_step28_done)) (at start (pred_step57_done)) (at start (pred_step69_done)) (at start (pred_step87_done)) (at start (pred_step97_done)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (pred_step47_done))))
  (:durative-action do_step48
    :parameters ()
    :duration 900
    :condition (and (at start (step_pending step48)) (at start (pred_step7_done)) (at start (pred_step12_done)) (at start (pred_step81_done)) (at start (pred_step95_done)) (at start (pred_step97_done)) (at start (pred_step98_done)) (at start (pred_step99_done)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (pred_step48_done))))
  (:durative-action do_step49
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step49)) (at start (pred_step71_done)) (at start (pred_step76_done)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (pred_step49_done))))
  (:durative-action do_step50
    :parameters ()
    :duration 900
    :condition (and (at start (step_pending step50)) (at start (pred_step95_done)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (pred_step50_done))))
  (:durative-action do_step51
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step51)) (at start (pred_step93_done)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (pred_step51_done))))
  (:durative-action do_step52
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step52)) (at start (pred_step6_done)) (at start (pred_step22_done)) (at start (pred_step51_done)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (pred_step52_done))))
  (:durative-action do_step53
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step53)) (at start (pred_step1_done)) (at start (pred_step10_done)) (at start (pred_step11_done)) (at start (pred_step21_done)) (at start (pred_step65_done)) (at start (pred_step69_done)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (pred_step53_done))))
  (:durative-action do_step54
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step54)) (at start (pred_step3_done)) (at start (pred_step5_done)) (at start (pred_step42_done)) (at start (pred_step100_done)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (pred_step54_done))))
  (:durative-action do_step55
    :parameters ()
    :duration 2700
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (pred_step55_done))))
  (:durative-action do_step56
    :parameters ()
    :duration 60
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (pred_step56_done))))
  (:durative-action do_step57
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step57)) (at start (pred_step66_done)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (pred_step57_done))))
  (:durative-action do_step58
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step58)) (at start (pred_step4_done)) (at start (pred_step23_done)) (at start (pred_step80_done)) (at start (pred_step91_done)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (pred_step58_done))))
  (:durative-action do_step59
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step59)) (at start (pred_step11_done)) (at start (pred_step45_done)) (at start (pred_step55_done)) (at start (pred_step65_done)) (at start (pred_step73_done)) (at start (pred_step89_done)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (pred_step59_done))))
  (:durative-action do_step60
    :parameters ()
    :duration 1200
    :condition (and (at start (step_pending step60)) (at start (pred_step16_done)) (at start (pred_step18_done)) (at start (pred_step19_done)) (at start (pred_step64_done)) (at start (pred_step75_done)) (at start (pred_step82_done)) (at start (pred_step95_done)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (pred_step60_done))))
  (:durative-action do_step61
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step61)) (at start (pred_step4_done)) (at start (pred_step17_done)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (pred_step61_done))))
  (:durative-action do_step62
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step62)) (at start (pred_step27_done)) (at start (pred_step95_done)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (pred_step62_done))))
  (:durative-action do_step63
    :parameters ()
    :duration 300
    :condition (at start (step_pending step63))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (pred_step63_done))))
  (:durative-action do_step64
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step64)) (at start (pred_step35_done)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (pred_step64_done))))
  (:durative-action do_step65
    :parameters ()
    :duration 1800
    :condition (at start (step_pending step65))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (pred_step65_done))))
  (:durative-action do_step66
    :parameters ()
    :duration 120
    :condition (at start (step_pending step66))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (pred_step66_done))))
  (:durative-action do_step67
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step67)) (at start (pred_step17_done)) (at start (pred_step25_done)) (at start (pred_step39_done)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (pred_step67_done))))
  (:durative-action do_step68
    :parameters ()
    :duration 300
    :condition (and (at start (step_pending step68)) (at start (pred_step11_done)) (at start (pred_step28_done)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (pred_step68_done))))
  (:durative-action do_step69
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step69)) (at start (pred_step65_done)) (at start (pred_step66_done)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (pred_step69_done))))
  (:durative-action do_step70
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step70)) (at start (pred_step6_done)) (at start (pred_step55_done)) (at start (pred_step59_done)) (at start (pred_step68_done)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (pred_step70_done))))
  (:durative-action do_step71
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step71)) (at start (pred_step1_done)) (at start (pred_step29_done)) (at start (pred_step41_done)) (at start (pred_step51_done)) (at start (pred_step86_done)) (at start (pred_step97_done)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (pred_step71_done))))
  (:durative-action do_step72
    :parameters ()
    :duration 900
    :condition (and (at start (step_pending step72)) (at start (pred_step84_done)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (pred_step72_done))))
  (:durative-action do_step73
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step73)) (at start (pred_step37_done)) (at start (pred_step72_done)) (at start (pred_step80_done)) (at start (pred_step92_done)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (pred_step73_done))))
  (:durative-action do_step74
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step74)) (at start (pred_step1_done)) (at start (pred_step33_done)) (at start (pred_step67_done)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (pred_step74_done))))
  (:durative-action do_step75
    :parameters ()
    :duration 600
    :condition (and (at start (step_pending step75)) (at start (pred_step55_done)) (at start (pred_step79_done)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (pred_step75_done))))
  (:durative-action do_step76
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step76)) (at start (pred_step17_done)) (at start (pred_step39_done)) (at start (pred_step97_done)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (pred_step76_done))))
  (:durative-action do_step77
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step77)) (at start (pred_step20_done)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (pred_step77_done))))
  (:durative-action do_step78
    :parameters ()
    :duration 300
    :condition (and (at start (step_pending step78)) (at start (pred_step36_done)) (at start (pred_step37_done)) (at start (pred_step79_done)) (at start (pred_step82_done)) (at start (pred_step95_done)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (pred_step78_done))))
  (:durative-action do_step79
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step79)) (at start (pred_step4_done)) (at start (pred_step22_done)) (at start (pred_step24_done)) (at start (pred_step25_done)) (at start (pred_step30_done)) (at start (pred_step32_done)) (at start (pred_step61_done)) (at start (pred_step65_done)) (at start (pred_step71_done)) (at start (pred_step83_done)) (at start (pred_step94_done)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (pred_step79_done))))
  (:durative-action do_step80
    :parameters ()
    :duration 900
    :condition (and (at start (step_pending step80)) (at start (pred_step44_done)) (at start (pred_step92_done)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (pred_step80_done))))
  (:durative-action do_step81
    :parameters ()
    :duration 1200
    :condition (at start (step_pending step81))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (pred_step81_done))))
  (:durative-action do_step82
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step82)) (at start (pred_step3_done)) (at start (pred_step27_done)) (at start (pred_step35_done)) (at start (pred_step47_done)) (at start (pred_step55_done)) (at start (pred_step67_done)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (pred_step82_done))))
  (:durative-action do_step83
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step83)) (at start (pred_step28_done)) (at start (pred_step72_done)) (at start (pred_step100_done)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (pred_step83_done))))
  (:durative-action do_step84
    :parameters ()
    :duration 7200
    :condition (at start (step_pending step84))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (pred_step84_done))))
  (:durative-action do_step85
    :parameters ()
    :duration 600
    :condition (at start (step_pending step85))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (pred_step85_done))))
  (:durative-action do_step86
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step86)) (at start (pred_step6_done)) (at start (pred_step22_done)) (at start (pred_step44_done)) (at start (pred_step85_done)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (pred_step86_done))))
  (:durative-action do_step87
    :parameters ()
    :duration 600
    :condition (at start (step_pending step87))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (pred_step87_done))))
  (:durative-action do_step88
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step88)) (at start (pred_step70_done)) (at start (pred_step94_done)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (pred_step88_done))))
  (:durative-action do_step89
    :parameters ()
    :duration 1200
    :condition (and (at start (step_pending step89)) (at start (pred_step65_done)) (at start (pred_step84_done)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (pred_step89_done))))
  (:durative-action do_step90
    :parameters ()
    :duration 900
    :condition (and (at start (step_pending step90)) (at start (pred_step35_done)) (at start (pred_step39_done)) (at start (pred_step41_done)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (pred_step90_done))))
  (:durative-action do_step91
    :parameters ()
    :duration 300
    :condition (and (at start (step_pending step91)) (at start (pred_step68_done)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (pred_step91_done))))
  (:durative-action do_step92
    :parameters ()
    :duration 1800
    :condition (at start (step_pending step92))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (pred_step92_done))))
  (:durative-action do_step93
    :parameters ()
    :duration 600
    :condition (at start (step_pending step93))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (pred_step93_done))))
  (:durative-action do_step94
    :parameters ()
    :duration 300
    :condition (at start (step_pending step94))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (pred_step94_done))))
  (:durative-action do_step95
    :parameters ()
    :duration 2700
    :condition (and (at start (step_pending step95)) (at start (pred_step11_done)) (at start (pred_step83_done)))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (pred_step95_done))))
  (:durative-action do_step96
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step96)) (at start (pred_step11_done)) (at start (pred_step33_done)) (at start (pred_step39_done)) (at start (pred_step82_done)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (pred_step96_done))))
  (:durative-action do_step97
    :parameters ()
    :duration 600
    :condition (at start (step_pending step97))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (pred_step97_done))))
  (:durative-action do_step98
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step98)) (at start (pred_step56_done)) (at start (pred_step80_done)) (at start (pred_step92_done)))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (pred_step98_done))))
  (:durative-action do_step99
    :parameters ()
    :duration 60
    :condition (and (at start (step_pending step99)) (at start (pred_step5_done)) (at start (pred_step18_done)) (at start (pred_step35_done)) (at start (pred_step66_done)) (at start (pred_step87_done)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (pred_step99_done))))
  (:durative-action do_step100
    :parameters ()
    :duration 60
    :condition (at start (step_pending step100))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (pred_step100_done)) (at end (identification_complete)))))
