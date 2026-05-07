(define (domain tofu-french-toast)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_finished)
    (step2_finished)
    (step3_finished)
    (step4_finished)
    (step5_finished)
    (step6_finished)
    (step7_finished)
    (step8_finished)
    (step9_finished)
    (step10_finished)
    (step11_finished)
    (step12_finished)
    (step13_finished)
    (step14_finished)
    (step15_finished)
    (step16_finished)
    (step17_finished)
    (step18_finished)
    (step19_finished)
    (step20_finished)
    (step21_finished)
    (step22_finished)
    (step23_finished)
    (step24_finished)
    (step25_finished)
    (step26_finished)
    (step27_finished)
    (step28_finished)
    (step29_finished)
    (step30_finished)
    (step31_finished)
    (step32_finished)
    (step33_finished)
    (step34_finished)
    (step35_finished)
    (step36_finished)
    (step37_finished)
    (step38_finished)
    (step39_finished)
    (step40_finished)
    (step41_finished)
    (step42_finished)
    (step43_finished)
    (step44_finished)
    (step45_finished)
    (step46_finished)
    (step47_finished)
    (step48_finished)
    (step49_finished)
    (step50_finished)
    (step51_finished)
    (step52_finished)
    (step53_finished)
    (step54_finished)
    (step55_finished)
    (step56_finished)
    (step57_finished)
    (step58_finished)
    (step59_finished)
    (step60_finished)
    (step61_finished)
    (step62_finished)
    (step63_finished)
    (step64_finished)
    (step65_finished)
    (step66_finished)
    (step67_finished)
    (step68_finished)
    (step69_finished)
    (step70_finished)
    (step71_finished)
    (step72_finished)
    (step73_finished)
    (step74_finished)
    (step75_finished)
    (step76_finished)
    (step77_finished)
    (step78_finished)
    (step79_finished)
    (step80_finished)
  )

  ;; Each durative-action now includes an explicit empty :parameters () clause

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (step56_finished)) (at start (step63_finished)) (at start (step65_finished)) (at start (step70_finished)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_finished)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step2)) (at start (step62_finished)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_finished)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (step70_finished)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_finished)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step4)) (at start (step6_finished)) (at start (step56_finished)) (at start (step76_finished)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_finished)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step5)) (at start (step76_finished)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_finished)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step6)) (at start (step78_finished)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_finished)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step7)) (at start (step13_finished)) (at start (step23_finished)) (at start (step29_finished)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_finished)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step8)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_finished)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step9)) (at start (step22_finished)) (at start (step59_finished)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_finished)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step10)) (at start (step59_finished)) (at start (step75_finished)) (at start (step79_finished)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_finished)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step11)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_finished)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step12)) (at start (step1_finished)) (at start (step9_finished)) (at start (step63_finished)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_finished)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step13)) (at start (step59_finished)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_finished)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step14)) (at start (step2_finished)) (at start (step32_finished)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_finished)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step15)) (at start (step3_finished)) (at start (step32_finished)) (at start (step56_finished)) (at start (step49_finished)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_finished)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step16)) (at start (step2_finished)) (at start (step24_finished)) (at start (step44_finished)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_finished)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step17)) (at start (step13_finished)) (at start (step52_finished)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_finished)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_finished)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step19)) (at start (step38_finished)) (at start (step53_finished)) (at start (step61_finished)) (at start (step65_finished)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_finished)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step20)) (at start (step14_finished)) (at start (step74_finished)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_finished)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step21)) (at start (step27_finished)) (at start (step30_finished)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_finished)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step22)) (at start (step40_finished)) (at start (step51_finished)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_finished)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step23)) (at start (step11_finished)) (at start (step42_finished)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_finished)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step24)) (at start (step53_finished)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_finished)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step25)) (at start (step44_finished)) (at start (step61_finished)) (at start (step63_finished)) (at start (step80_finished)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_finished)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step26)) (at start (step38_finished)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_finished)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (step62_finished)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_finished)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step28)) (at start (step43_finished)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_finished)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step29)) (at start (step49_finished)) (at start (step53_finished)) (at start (step64_finished)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_finished)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step30)) (at start (step61_finished)) (at start (step73_finished)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_finished)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step31)) (at start (step49_finished)) (at start (step51_finished)) (at start (step70_finished)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_finished)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step32)) (at start (step53_finished)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_finished)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step33)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_finished)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step34)) (at start (step6_finished)) (at start (step78_finished)) (at start (step64_finished)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_finished)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step35)) (at start (step3_finished)) (at start (step15_finished)) (at start (step64_finished)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_finished)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step36)) (at start (step22_finished)) (at start (step27_finished)) (at start (step28_finished)) (at start (step29_finished)) (at start (step50_finished)) (at start (step56_finished)) (at start (step76_finished)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_finished)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step37)) (at start (step12_finished)) (at start (step29_finished)) (at start (step51_finished)) (at start (step70_finished)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_finished)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step38)) (at start (step53_finished)) (at start (step59_finished)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_finished)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step39)) (at start (step3_finished)) (at start (step4_finished)) (at start (step12_finished)) (at start (step34_finished)) (at start (step48_finished)) (at start (step74_finished)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_finished)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 40)
    :condition (and (at start (step_pending step40)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_finished)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step41)) (at start (step26_finished)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (step41_finished)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step42)) (at start (step58_finished)) (at start (step63_finished)) (at start (step65_finished)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (step42_finished)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step43)) (at start (step66_finished)) (at start (step78_finished)) (at start (step79_finished)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (step43_finished)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step44)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (step44_finished)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step45)) (at start (step6_finished)) (at start (step9_finished)) (at start (step53_finished)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (step45_finished)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step46)) (at start (step74_finished)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (step46_finished)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step47)) (at start (step8_finished)) (at start (step44_finished)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (step47_finished)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step48)) (at start (step9_finished)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (step48_finished)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step49)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (step49_finished)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step50)) (at start (step6_finished)) (at start (step63_finished)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (step50_finished)))
  )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step51)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (step51_finished)))
  )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step52)) (at start (step2_finished)) (at start (step8_finished)) (at start (step70_finished)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (step52_finished)))
  )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step53)) (at start (step79_finished)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (step53_finished)))
  )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step54)) (at start (step44_finished)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (step54_finished)))
  )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step55)) (at start (step22_finished)) (at start (step32_finished)) (at start (step47_finished)) (at start (step56_finished)) (at start (step76_finished)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (step55_finished)))
  )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step56)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (step56_finished)))
  )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step57)) (at start (step27_finished)) (at start (step37_finished)) (at start (step59_finished)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (step57_finished)))
  )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step58)) (at start (step40_finished)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (step58_finished)))
  )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step59)) (at start (step44_finished)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (step59_finished)))
  )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step60)) (at start (step18_finished)) (at start (step30_finished)) (at start (step59_finished)) (at start (step63_finished)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (step60_finished)))
  )

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step61)) (at start (step53_finished)) (at start (step79_finished)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (step61_finished)))
  )

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step62)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (step62_finished)))
  )

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step63)) (at start (step56_finished)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (step63_finished)))
  )

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step64)) (at start (step30_finished)) (at start (step46_finished)) (at start (step80_finished)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (step64_finished)))
  )

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step65)) (at start (step24_finished)) (at start (step33_finished)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (step65_finished)))
  )

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step66)) (at start (step11_finished)) (at start (step33_finished)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (step66_finished)))
  )

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step67)) (at start (step28_finished)) (at start (step30_finished)) (at start (step34_finished)) (at start (step37_finished)) (at start (step57_finished)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (step67_finished)))
  )

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step68)) (at start (step38_finished)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (step68_finished)))
  )

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step69)) (at start (step42_finished)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (step69_finished)))
  )

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step70)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (step70_finished)))
  )

  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step71)) (at start (step46_finished)) (at start (step60_finished)) (at start (step65_finished)) (at start (step55_finished)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (step71_finished)))
  )

  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step72)) (at start (step6_finished)) (at start (step49_finished)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (step72_finished)))
  )

  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step73)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (step73_finished)))
  )

  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step74)) (at start (step44_finished)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (step74_finished)))
  )

  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step75)) (at start (step37_finished)) (at start (step52_finished)) (at start (step72_finished)) (at start (step73_finished)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (step75_finished)))
  )

  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step76)) (at start (step62_finished)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (step76_finished)))
  )

  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step77)) (at start (step4_finished)) (at start (step14_finished)) (at start (step18_finished)) (at start (step65_finished)) (at start (step76_finished)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (step77_finished)))
  )

  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step78)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (step78_finished)))
  )

  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step79)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (step79_finished)))
  )

  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step80)) (at start (step32_finished)) (at start (step40_finished)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (step80_finished)))
  )
)
