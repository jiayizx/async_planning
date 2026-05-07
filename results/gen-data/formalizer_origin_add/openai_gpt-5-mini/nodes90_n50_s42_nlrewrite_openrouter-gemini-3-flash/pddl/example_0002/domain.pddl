(define (domain avocado-shake)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1_done) (p2_done) (p3_done) (p4_done) (p5_done) (p6_done) (p7_done) (p8_done) (p9_done) (p10_done)
    (p11_done) (p12_done) (p13_done) (p14_done) (p15_done) (p16_done) (p17_done) (p18_done) (p19_done) (p20_done)
    (p21_done) (p22_done) (p23_done) (p24_done) (p25_done) (p26_done) (p27_done) (p28_done) (p29_done) (p30_done)
    (p31_done) (p32_done) (p33_done) (p34_done) (p35_done) (p36_done) (p37_done) (p38_done) (p39_done) (p40_done)
    (p41_done) (p42_done) (p43_done) (p44_done) (p45_done) (p46_done) (p47_done) (p48_done) (p49_done) (p50_done)
    (p51_done) (p52_done) (p53_done) (p54_done) (p55_done) (p56_done) (p57_done) (p58_done) (p59_done) (p60_done)
    (p61_done) (p62_done) (p63_done) (p64_done) (p65_done) (p66_done) (p67_done) (p68_done) (p69_done) (p70_done)
    (p71_done) (p72_done) (p73_done) (p74_done) (p75_done) (p76_done) (p77_done) (p78_done) (p79_done) (p80_done)
    (p81_done) (p82_done) (p83_done) (p84_done) (p85_done) (p86_done) (p87_done) (p88_done) (p89_done) (p90_done)
  )

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 45)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (p1_done)))
  )

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step2)) (at start (p4_done)) (at start (p32_done)) (at start (p57_done)) (at start (p70_done)) (at start (p85_done)) (at start (p89_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (p2_done)))
  )

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step3)) (at start (p41_done)) (at start (p50_done)) (at start (p80_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (p3_done)))
  )

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step4)) (at start (p39_done)) (at start (p41_done)) (at start (p45_done)) (at start (p78_done)) (at start (p79_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (p4_done)))
  )

  (:durative-action step5
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (p5_done)))
  )

  (:durative-action step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (p31_done)) (at start (p81_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (p6_done)))
  )

  (:durative-action step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (p16_done)) (at start (p26_done)) (at start (p67_done)) (at start (p85_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (p7_done)))
  )

  (:durative-action step8
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step8)) (at start (p62_done)) (at start (p80_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (p8_done)))
  )

  (:durative-action step9
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (p9_done)))
  )

  (:durative-action step10
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step10)) (at start (p75_done)) (at start (p67_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (p10_done)))
  )

  (:durative-action step11
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step11)) (at start (p14_done)) (at start (p44_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (p11_done)))
  )

  (:durative-action step12
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step12)) (at start (p13_done)) (at start (p26_done)) (at start (p48_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (p12_done)))
  )

  (:durative-action step13
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (p58_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (p13_done)))
  )

  (:durative-action step14
    :parameters ()
    :duration (= ?duration 40)
    :condition (and (at start (step_pending step14)) (at start (p54_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (p14_done)))
  )

  (:durative-action step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step15)) (at start (p2_done)) (at start (p56_done)) (at start (p62_done)) (at start (p69_done)) (at start (p72_done)) (at start (p83_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (p15_done)))
  )

  (:durative-action step16
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step16)) (at start (p29_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (p16_done)))
  )

  (:durative-action step17
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step17)) (at start (p41_done)) (at start (p45_done)) (at start (p53_done)) (at start (p82_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (p17_done)))
  )

  (:durative-action step18
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step18)) (at start (p27_done)) (at start (p51_done)) (at start (p59_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (p18_done)))
  )

  (:durative-action step19
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step19)) (at start (p3_done)) (at start (p7_done)) (at start (p16_done)) (at start (p26_done)) (at start (p29_done)) (at start (p46_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (p19_done)))
  )

  (:durative-action step20
    :parameters ()
    :duration (= ?duration 40)
    :condition (and (at start (step_pending step20)) (at start (p3_done)) (at start (p4_done)) (at start (p32_done)) (at start (p67_done)) (at start (p73_done)) (at start (p86_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (p20_done)))
  )

  (:durative-action step21
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (p21_done)))
  )

  (:durative-action step22
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step22)) (at start (p34_done)) (at start (p67_done)) (at start (p70_done)) (at start (p71_done)) (at start (p75_done)) (at start (p62_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (p22_done)))
  )

  (:durative-action step23
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step23)) (at start (p5_done)) (at start (p50_done)) (at start (p67_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (p23_done)))
  )

  (:durative-action step24
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step24)) (at start (p1_done)) (at start (p45_done)) (at start (p78_done)) (at start (p88_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (p24_done)))
  )

  (:durative-action step25
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step25)) (at start (p14_done)) (at start (p67_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (p25_done)))
  )

  (:durative-action step26
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step26)) (at start (p51_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (p26_done)))
  )

  (:durative-action step27
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step27)) (at start (p6_done)) (at start (p55_done)) (at start (p74_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (p27_done)))
  )

  (:durative-action step28
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step28)) (at start (p40_done)) (at start (p68_done)) (at start (p70_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (p28_done)))
  )

  (:durative-action step29
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step29)) (at start (p42_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (p29_done)))
  )

  (:durative-action step30
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step30)) (at start (p58_done)) (at start (p73_done)) (at start (p85_done)) (at start (p70_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (p30_done)))
  )

  (:durative-action step31
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step31)) (at start (p14_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (p31_done)))
  )

  (:durative-action step32
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step32)) (at start (p77_done)) (at start (p80_done)) (at start (p90_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (p32_done)))
  )

  (:durative-action step33
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step33)) (at start (p15_done)) (at start (p61_done)) (at start (p83_done)) (at start (p67_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (p33_done)))
  )

  (:durative-action step34
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (p34_done)))
  )

  (:durative-action step35
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step35)) (at start (p3_done)) (at start (p31_done)) (at start (p44_done)) (at start (p62_done)) (at start (p82_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (p35_done)))
  )

  (:durative-action step36
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step36)) (at start (p23_done)) (at start (p73_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (p36_done)))
  )

  (:durative-action step37
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step37)) (at start (p70_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (p37_done)))
  )

  (:durative-action step38
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step38)) (at start (p7_done)) (at start (p19_done)) (at start (p41_done)) (at start (p77_done)) (at start (p78_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (p38_done)))
  )

  (:durative-action step39
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step39)) (at start (p10_done)) (at start (p41_done)) (at start (p53_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (p39_done)))
  )

  (:durative-action step40
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step40)) (at start (p14_done)) (at start (p50_done)) (at start (p80_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (p40_done)))
  )

  (:durative-action step41
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step41)) (at start (p37_done)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (p41_done)))
  )

  (:durative-action step42
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step42)) (at start (p51_done)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (p42_done)))
  )

  (:durative-action step43
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step43)) (at start (p69_done)) (at start (p70_done)) (at start (p77_done)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (p43_done)))
  )

  (:durative-action step44
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step44)) (at start (p14_done)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (p44_done)))
  )

  (:durative-action step45
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step45)) (at start (p9_done)) (at start (p42_done)) (at start (p55_done)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (p45_done)))
  )

  (:durative-action step46
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step46)) (at start (p29_done)) (at start (p71_done)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (p46_done)))
  )

  (:durative-action step47
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step47)) (at start (p26_done)) (at start (p27_done)) (at start (p36_done)) (at start (p40_done)) (at start (p65_done)) (at start (p72_done)) (at start (p75_done)) (at start (p79_done)) (at start (p83_done)) (at start (p85_done)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (p47_done)))
  )

  (:durative-action step48
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step48)) (at start (p6_done)) (at start (p31_done)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (p48_done)))
  )

  (:durative-action step49
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step49)) (at start (p12_done)) (at start (p28_done)) (at start (p32_done)) (at start (p48_done)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (p49_done)))
  )

  (:durative-action step50
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step50)) (at start (p67_done)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (p50_done)))
  )

  (:durative-action step51
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step51))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (p51_done)))
  )

  (:durative-action step52
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step52)) (at start (p9_done)) (at start (p16_done)) (at start (p51_done)) (at start (p67_done)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (p52_done)))
  )

  (:durative-action step53
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step53))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (p53_done)))
  )

  (:durative-action step54
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step54)) (at start (p34_done)) (at start (p41_done)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (p54_done)))
  )

  (:durative-action step55
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step55)) (at start (p29_done)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (p55_done)))
  )

  (:durative-action step56
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step56)) (at start (p53_done)) (at start (p62_done)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (p56_done)))
  )

  (:durative-action step57
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step57)) (at start (p83_done)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (p57_done)))
  )

  (:durative-action step58
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (p58_done)))
  )

  (:durative-action step59
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step59)) (at start (p13_done)) (at start (p64_done)) (at start (p82_done)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (p59_done)))
  )

  (:durative-action step60
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step60)) (at start (p15_done)) (at start (p23_done)) (at start (p26_done)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (p60_done)))
  )

  (:durative-action step61
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step61)) (at start (p10_done)) (at start (p30_done)) (at start (p36_done)) (at start (p54_done)) (at start (p56_done)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (p61_done)))
  )

  (:durative-action step62
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step62))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (p62_done)))
  )

  (:durative-action step63
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step63)) (at start (p7_done)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (p63_done)))
  )

  (:durative-action step64
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step64)) (at start (p76_done)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (p64_done)))
  )

  (:durative-action step65
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step65)) (at start (p6_done)) (at start (p12_done)) (at start (p20_done)) (at start (p21_done)) (at start (p29_done)) (at start (p32_done)) (at start (p34_done)) (at start (p53_done)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (p65_done)))
  )

  (:durative-action step66
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step66)) (at start (p3_done)) (at start (p9_done)) (at start (p32_done)) (at start (p42_done)) (at start (p53_done)) (at start (p55_done)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (p66_done)))
  )

  (:durative-action step67
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step67))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (p67_done)))
  )

  (:durative-action step68
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step68)) (at start (p90_done)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (p68_done)))
  )

  (:durative-action step69
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step69)) (at start (p19_done)) (at start (p22_done)) (at start (p25_done)) (at start (p40_done)) (at start (p51_done)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (p69_done)))
  )

  (:durative-action step70
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step70))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (p70_done)))
  )

  (:durative-action step71
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step71)) (at start (p44_done)) (at start (p68_done)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (p71_done)))
  )

  (:durative-action step72
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step72)) (at start (p36_done)) (at start (p40_done)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (p72_done)))
  )

  (:durative-action step73
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step73)) (at start (p90_done)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (p73_done)))
  )

  (:durative-action step74
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step74)) (at start (p67_done)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (p74_done)))
  )

  (:durative-action step75
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step75)) (at start (p5_done)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (p75_done)))
  )

  (:durative-action step76
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step76)) (at start (p28_done)) (at start (p51_done)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (p76_done)))
  )

  (:durative-action step77
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step77)) (at start (p21_done)) (at start (p80_done)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (p77_done)))
  )

  (:durative-action step78
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step78)) (at start (p51_done)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (p78_done)))
  )

  (:durative-action step79
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step79)) (at start (p62_done)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (p79_done)))
  )

  (:durative-action step80
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step80)) (at start (p90_done)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (p80_done)))
  )

  (:durative-action step81
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step81)) (at start (p10_done)) (at start (p37_done)) (at start (p44_done)) (at start (p53_done)) (at start (p78_done)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (p81_done)))
  )

  (:durative-action step82
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step82)) (at start (p14_done)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (p82_done)))
  )

  (:durative-action step83
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step83)) (at start (p48_done)) (at start (p54_done)) (at start (p78_done)) (at start (p82_done)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (p83_done)))
  )

  (:durative-action step84
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step84)) (at start (p12_done)) (at start (p28_done)) (at start (p36_done)) (at start (p65_done)) (at start (p66_done)) (at start (p68_done)) (at start (p87_done)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (p84_done)))
  )

  (:durative-action step85
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step85)) (at start (p21_done)) (at start (p44_done)) (at start (p74_done)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (p85_done)))
  )

  (:durative-action step86
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step86)) (at start (p7_done)) (at start (p90_done)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (p86_done)))
  )

  (:durative-action step87
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step87)) (at start (p13_done)) (at start (p54_done)) (at start (p73_done)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (p87_done)))
  )

  (:durative-action step88
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step88)) (at start (p50_done)) (at start (p55_done)) (at start (p90_done)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (p88_done)))
  )

  (:durative-action step89
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step89)) (at start (p13_done)) (at start (p55_done)) (at start (p90_done)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (p89_done)))
  )

  (:durative-action step90
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step90))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (p90_done)))
  )
)
