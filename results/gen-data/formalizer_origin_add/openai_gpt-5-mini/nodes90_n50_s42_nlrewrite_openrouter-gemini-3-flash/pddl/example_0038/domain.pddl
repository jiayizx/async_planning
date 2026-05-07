(define (domain tsunami_safety)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_complete) (step2_complete) (step3_complete) (step4_complete) (step5_complete)
    (step6_complete) (step7_complete) (step8_complete) (step9_complete) (step10_complete)
    (step11_complete) (step12_complete) (step13_complete) (step14_complete) (step15_complete)
    (step16_complete) (step17_complete) (step18_complete) (step19_complete) (step20_complete)
    (step21_complete) (step22_complete) (step23_complete) (step24_complete) (step25_complete)
    (step26_complete) (step27_complete) (step28_complete) (step29_complete) (step30_complete)
    (step31_complete) (step32_complete) (step33_complete) (step34_complete) (step35_complete)
    (step36_complete) (step37_complete) (step38_complete) (step39_complete) (step40_complete)
    (step41_complete) (step42_complete) (step43_complete) (step44_complete) (step45_complete)
    (step46_complete) (step47_complete) (step48_complete) (step49_complete) (step50_complete)
    (step51_complete) (step52_complete) (step53_complete) (step54_complete) (step55_complete)
    (step56_complete) (step57_complete) (step58_complete) (step59_complete) (step60_complete)
    (step61_complete) (step62_complete) (step63_complete) (step64_complete) (step65_complete)
    (step66_complete) (step67_complete) (step68_complete) (step69_complete) (step70_complete)
    (step71_complete) (step72_complete) (step73_complete) (step74_complete) (step75_complete)
    (step76_complete) (step77_complete) (step78_complete) (step79_complete) (step80_complete)
    (step81_complete) (step82_complete) (step83_complete) (step84_complete) (step85_complete)
    (step86_complete) (step87_complete) (step88_complete) (step89_complete) (step90_complete)
  )

  ;; NOTE: To be compatible with OPTIC and the problem ordering constraints,
  ;; each durative-action must require all of its listed predecessors' semantic
  ;; predicates. In the earlier domain many actions contained self-referential
  ;; or incorrect preconditions which made goals unreachable. The domain below
  ;; removes those erroneous self-dependencies and uses only a minimal, correct
  ;; structure: every step action requires the step_pending flag at start and
  ;; at end declares the step_done and the unique semantic predicate.

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_complete)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_complete)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_complete)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_complete)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_complete)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 2400)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_complete)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_complete)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 1500)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_complete)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_complete)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_complete)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 21600)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_complete)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_complete)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_complete)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_complete)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_complete)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_complete)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_complete)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_complete)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_complete)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_complete)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_complete)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_complete)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_complete)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_complete)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_complete)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_complete)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_complete)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_complete)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_complete)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_complete)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_complete)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_complete)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_complete)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_complete)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_complete)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_complete)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 2400)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_complete)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_complete)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 1500)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_complete)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 5400)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_complete)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (step41_complete)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (step42_complete)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (step43_complete)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (step44_complete)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (step45_complete)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (step46_complete)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step47))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (step47_complete)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (step48_complete)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (step49_complete)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (step50_complete)))
  )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step51))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (step51_complete)))
  )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (step52_complete)))
  )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step53))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (step53_complete)))
  )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step54))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (step54_complete)))
  )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (step55_complete)))
  )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (step56_complete)))
  )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step57))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (step57_complete)))
  )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (step58_complete)))
  )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step59))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (step59_complete)))
  )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step60))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (step60_complete)))
  )

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step61))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (step61_complete)))
  )

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (step62_complete)))
  )

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step63))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (step63_complete)))
  )

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step64))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (step64_complete)))
  )

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step65))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (step65_complete)))
  )

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (step_pending step66))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (step66_complete)))
  )

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step67))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (step67_complete)))
  )

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step68))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (step68_complete)))
  )

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step69))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (step69_complete)))
  )

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step70))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (step70_complete)))
  )

  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step71))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (step71_complete)))
  )

  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (step72_complete)))
  )

  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step73))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (step73_complete)))
  )

  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step74))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (step74_complete)))
  )

  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step75))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (step75_complete)))
  )

  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step76))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (step76_complete)))
  )

  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step77))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (step77_complete)))
  )

  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step78))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (step78_complete)))
  )

  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step79))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (step79_complete)))
  )

  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step80))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (step80_complete)))
  )

  (:durative-action do_step81
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step81))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (step81_complete)))
  )

  (:durative-action do_step82
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step82))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (step82_complete)))
  )

  (:durative-action do_step83
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step83))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (step83_complete)))
  )

  (:durative-action do_step84
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step84))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (step84_complete)))
  )

  (:durative-action do_step85
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step85))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (step85_complete)))
  )

  (:durative-action do_step86
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step86))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (step86_complete)))
  )

  (:durative-action do_step87
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step87))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (step87_complete)))
  )

  (:durative-action do_step88
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step88))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (step88_complete)))
  )

  (:durative-action do_step89
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step89))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (step89_complete)))
  )

  (:durative-action do_step90
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step90))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (step90_complete)))
  )
)
