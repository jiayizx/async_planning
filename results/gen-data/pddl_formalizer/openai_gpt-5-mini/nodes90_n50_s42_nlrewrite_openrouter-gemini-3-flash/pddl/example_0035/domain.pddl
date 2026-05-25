(define (domain put_on_clothes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
    (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
    (p61) (p62) (p63) (p64) (p65) (p66) (p67) (p68) (p69) (p70)
    (p71) (p72) (p73) (p74) (p75) (p76) (p77) (p78) (p79) (p80)
    (p81) (p82) (p83) (p84) (p85) (p86) (p87) (p88) (p89) (p90)

    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
    (s41_done) (s42_done) (s43_done) (s44_done) (s45_done) (s46_done) (s47_done) (s48_done) (s49_done) (s50_done)
    (s51_done) (s52_done) (s53_done) (s54_done) (s55_done) (s56_done) (s57_done) (s58_done) (s59_done) (s60_done)
    (s61_done) (s62_done) (s63_done) (s64_done) (s65_done) (s66_done) (s67_done) (s68_done) (s69_done) (s70_done)
    (s71_done) (s72_done) (s73_done) (s74_done) (s75_done) (s76_done) (s77_done) (s78_done) (s79_done) (s80_done)
    (s81_done) (s82_done) (s83_done) (s84_done) (s85_done) (s86_done) (s87_done) (s88_done) (s89_done) (s90_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 10)
    :condition (and (at start (p1)) (at start (s5_done)))
    :effect (and (at start (not (p1))) (at end (s1_done)))
  )

  (:durative-action do_step2
    :duration (= ?duration 30)
    :condition (and (at start (p2)) (at start (s10_done)) (at start (s17_done)) (at start (s65_done)))
    :effect (and (at start (not (p2))) (at end (s2_done)))
  )

  (:durative-action do_step3
    :duration (= ?duration 20)
    :condition (and (at start (p3)) (at start (s28_done)))
    :effect (and (at start (not (p3))) (at end (s3_done)))
  )

  (:durative-action do_step4
    :duration (= ?duration 45)
    :condition (and (at start (p4)))
    :effect (and (at start (not (p4))) (at end (s4_done)))
  )

  (:durative-action do_step5
    :duration (= ?duration 60)
    :condition (and (at start (p5)))
    :effect (and (at start (not (p5))) (at end (s5_done)))
  )

  (:durative-action do_step6
    :duration (= ?duration 15)
    :condition (and (at start (p6)) (at start (s20_done)) (at start (s31_done)))
    :effect (and (at start (not (p6))) (at end (s6_done)))
  )

  (:durative-action do_step7
    :duration (= ?duration 30)
    :condition (and (at start (p7)) (at start (s34_done)) (at start (s67_done)) (at start (s75_done)) (at start (s85_done)) (at start (s90_done)))
    :effect (and (at start (not (p7))) (at end (s7_done)))
  )

  (:durative-action do_step8
    :duration (= ?duration 40)
    :condition (and (at start (p8)) (at start (s12_done)) (at start (s32_done)) (at start (s49_done)))
    :effect (and (at start (not (p8))) (at end (s8_done)))
  )

  (:durative-action do_step9
    :duration (= ?duration 10)
    :condition (and (at start (p9)) (at start (s2_done)) (at start (s53_done)) (at start (s82_done)))
    :effect (and (at start (not (p9))) (at end (s9_done)))
  )

  (:durative-action do_step10
    :duration (= ?duration 15)
    :condition (and (at start (p10)) (at start (s1_done)) (at start (s19_done)) (at start (s24_done)) (at start (s33_done)) (at start (s34_done)))
    :effect (and (at start (not (p10))) (at end (s10_done)))
  )

  (:durative-action do_step11
    :duration (= ?duration 20)
    :condition (and (at start (p11)) (at start (s20_done)) (at start (s38_done)) (at start (s46_done)) (at start (s70_done)) (at start (s77_done)) (at start (s88_done)))
    :effect (and (at start (not (p11))) (at end (s11_done)))
  )

  (:durative-action do_step12
    :duration (= ?duration 15)
    :condition (and (at start (p12)) (at start (s1_done)) (at start (s36_done)) (at start (s62_done)) (at start (s83_done)))
    :effect (and (at start (not (p12))) (at end (s12_done)))
  )

  (:durative-action do_step13
    :duration (= ?duration 60)
    :condition (and (at start (p13)) (at start (s65_done)))
    :effect (and (at start (not (p13))) (at end (s13_done)))
  )

  (:durative-action do_step14
    :duration (= ?duration 10)
    :condition (and (at start (p14)) (at start (s16_done)) (at start (s19_done)) (at start (s33_done)) (at start (s57_done)) (at start (s65_done)))
    :effect (and (at start (not (p14))) (at end (s14_done)))
  )

  (:durative-action do_step15
    :duration (= ?duration 20)
    :condition (and (at start (p15)) (at start (s67_done)))
    :effect (and (at start (not (p15))) (at end (s15_done)))
  )

  (:durative-action do_step16
    :duration (= ?duration 10)
    :condition (and (at start (p16)) (at start (s57_done)) (at start (s63_done)))
    :effect (and (at start (not (p16))) (at end (s16_done)))
  )

  (:durative-action do_step17
    :duration (= ?duration 15)
    :condition (and (at start (p17)))
    :effect (and (at start (not (p17))) (at end (s17_done)))
  )

  (:durative-action do_step18
    :duration (= ?duration 30)
    :condition (and (at start (p18)))
    :effect (and (at start (not (p18))) (at end (s18_done)))
  )

  (:durative-action do_step19
    :duration (= ?duration 10)
    :condition (and (at start (p19)) (at start (s13_done)) (at start (s52_done)) (at start (s58_done)) (at start (s72_done)))
    :effect (and (at start (not (p19))) (at end (s19_done)))
  )

  (:durative-action do_step20
    :duration (= ?duration 180)
    :condition (and (at start (p20)) (at start (s79_done)) (at start (s86_done)))
    :effect (and (at start (not (p20))) (at end (s20_done)))
  )

  (:durative-action do_step21
    :duration (= ?duration 10)
    :condition (and (at start (p21)) (at start (s5_done)) (at start (s12_done)) (at start (s16_done)) (at start (s22_done)) (at start (s36_done)) (at start (s44_done)) (at start (s56_done)))
    :effect (and (at start (not (p21))) (at end (s21_done)))
  )

  (:durative-action do_step22
    :duration (= ?duration 25)
    :condition (and (at start (p22)) (at start (s18_done)))
    :effect (and (at start (not (p22))) (at end (s22_done)))
  )

  (:durative-action do_step23
    :duration (= ?duration 15)
    :condition (and (at start (p23)) (at start (s12_done)) (at start (s46_done)) (at start (s62_done)) (at start (s63_done)) (at start (s71_done)) (at start (s75_done)))
    :effect (and (at start (not (p23))) (at end (s23_done)))
  )

  (:durative-action do_step24
    :duration (= ?duration 15)
    :condition (and (at start (p24)) (at start (s20_done)) (at start (s58_done)) (at start (s59_done)))
    :effect (and (at start (not (p24))) (at end (s24_done)))
  )

  (:durative-action do_step25
    :duration (= ?duration 300)
    :condition (and (at start (p25)) (at start (s31_done)) (at start (s86_done)))
    :effect (and (at start (not (p25))) (at end (s25_done)))
  )

  (:durative-action do_step26
    :duration (= ?duration 5)
    :condition (and (at start (p26)) (at start (s15_done)) (at start (s23_done)))
    :effect (and (at start (not (p26))) (at end (s26_done)))
  )

  (:durative-action do_step27
    :duration (= ?duration 20)
    :condition (and (at start (p27)))
    :effect (and (at start (not (p27))) (at end (s27_done)))
  )

  (:durative-action do_step28
    :duration (= ?duration 30)
    :condition (and (at start (p28)))
    :effect (and (at start (not (p28))) (at end (s28_done)))
  )

  (:durative-action do_step29
    :duration (= ?duration 15)
    :condition (and (at start (p29)) (at start (s4_done)) (at start (s17_done)) (at start (s31_done)) (at start (s70_done)) (at start (s81_done)))
    :effect (and (at start (not (p29))) (at end (s29_done)))
  )

  (:durative-action do_step30
    :duration (= ?duration 10)
    :condition (and (at start (p30)) (at start (s1_done)) (at start (s10_done)) (at start (s53_done)))
    :effect (and (at start (not (p30))) (at end (s30_done)))
  )

  (:durative-action do_step31
    :duration (= ?duration 120)
    :condition (and (at start (p31)))
    :effect (and (at start (not (p31))) (at end (s31_done)))
  )

  (:durative-action do_step32
    :duration (= ?duration 10)
    :condition (and (at start (p32)) (at start (s72_done)))
    :effect (and (at start (not (p32))) (at end (s32_done)))
  )

  (:durative-action do_step33
    :duration (= ?duration 10)
    :condition (and (at start (p33)) (at start (s25_done)) (at start (s36_done)) (at start (s51_done)) (at start (s62_done)))
    :effect (and (at start (not (p33))) (at end (s33_done)))
  )

  (:durative-action do_step34
    :duration (= ?duration 10)
    :condition (and (at start (p34)) (at start (s31_done)) (at start (s51_done)) (at start (s65_done)))
    :effect (and (at start (not (p34))) (at end (s34_done)))
  )

  (:durative-action do_step35
    :duration (= ?duration 20)
    :condition (and (at start (p35)) (at start (s3_done)) (at start (s10_done)) (at start (s49_done)) (at start (s71_done)))
    :effect (and (at start (not (p35))) (at end (s35_done)))
  )

  (:durative-action do_step36
    :duration (= ?duration 60)
    :condition (and (at start (p36)) (at start (s5_done)))
    :effect (and (at start (not (p36))) (at end (s36_done)))
  )

  (:durative-action do_step37
    :duration (= ?duration 30)
    :condition (and (at start (p37)) (at start (s10_done)) (at start (s27_done)) (at start (s48_done)) (at start (s51_done)) (at start (s64_done)))
    :effect (and (at start (not (p37))) (at end (s37_done)))
  )

  (:durative-action do_step38
    :duration (= ?duration 40)
    :condition (and (at start (p38)) (at start (s2_done)) (at start (s19_done)) (at start (s50_done)) (at start (s59_done)))
    :effect (and (at start (not (p38))) (at end (s38_done)))
  )

  (:durative-action do_step39
    :duration (= ?duration 45)
    :condition (and (at start (p39)))
    :effect (and (at start (not (p39))) (at end (s39_done)))
  )

  (:durative-action do_step40
    :duration (= ?duration 10)
    :condition (and (at start (p40)) (at start (s25_done)) (at start (s36_done)) (at start (s58_done)))
    :effect (and (at start (not (p40))) (at end (s40_done)))
  )

  (:durative-action do_step41
    :duration (= ?duration 240)
    :condition (and (at start (p41)) (at start (s20_done)) (at start (s39_done)) (at start (s58_done)))
    :effect (and (at start (not (p41))) (at end (s41_done)))
  )

  (:durative-action do_step42
    :duration (= ?duration 10)
    :condition (and (at start (p42)) (at start (s6_done)) (at start (s21_done)) (at start (s56_done)) (at start (s72_done)))
    :effect (and (at start (not (p42))) (at end (s42_done)))
  )

  (:durative-action do_step43
    :duration (= ?duration 30)
    :condition (and (at start (p43)) (at start (s48_done)))
    :effect (and (at start (not (p43))) (at end (s43_done)))
  )

  (:durative-action do_step44
    :duration (= ?duration 10)
    :condition (and (at start (p44)) (at start (s46_done)))
    :effect (and (at start (not (p44))) (at end (s44_done)))
  )

  (:durative-action do_step45
    :duration (= ?duration 10)
    :condition (and (at start (p45)) (at start (s77_done)) (at start (s78_done)) (at start (s82_done)) (at start (s87_done)))
    :effect (and (at start (not (p45))) (at end (s45_done)))
  )

  (:durative-action do_step46
    :duration (= ?duration 20)
    :condition (and (at start (p46)) (at start (s1_done)) (at start (s14_done)) (at start (s19_done)) (at start (s30_done)) (at start (s80_done)))
    :effect (and (at start (not (p46))) (at end (s46_done)))
  )

  (:durative-action do_step47
    :duration (= ?duration 40)
    :condition (and (at start (p47)) (at start (s2_done)) (at start (s9_done)) (at start (s36_done)) (at start (s67_done)))
    :effect (and (at start (not (p47))) (at end (s47_done)))
  )

  (:durative-action do_step48
    :duration (= ?duration 30)
    :condition (and (at start (p48)) (at start (s5_done)) (at start (s60_done)))
    :effect (and (at start (not (p48))) (at end (s48_done)))
  )

  (:durative-action do_step49
    :duration (= ?duration 20)
    :condition (and (at start (p49)) (at start (s4_done)) (at start (s33_done)))
    :effect (and (at start (not (p49))) (at end (s49_done)))
  )

  (:durative-action do_step50
    :duration (= ?duration 20)
    :condition (and (at start (p50)) (at start (s14_done)) (at start (s19_done)) (at start (s25_done)) (at start (s46_done)))
    :effect (and (at start (not (p50))) (at end (s50_done)))
  )

  (:durative-action do_step51
    :duration (= ?duration 15)
    :condition (and (at start (p51)))
    :effect (and (at start (not (p51))) (at end (s51_done)))
  )

  (:durative-action do_step52
    :duration (= ?duration 20)
    :condition (and (at start (p52)))
    :effect (and (at start (not (p52))) (at end (s52_done)))
  )

  (:durative-action do_step53
    :duration (= ?duration 10)
    :condition (and (at start (p53)) (at start (s1_done)) (at start (s17_done)) (at start (s19_done)) (at start (s27_done)) (at start (s71_done)) (at start (s87_done)))
    :effect (and (at start (not (p53))) (at end (s53_done)))
  )

  (:durative-action do_step54
    :duration (= ?duration 10)
    :condition (and (at start (p54)) (at start (s20_done)) (at start (s31_done)) (at start (s66_done)))
    :effect (and (at start (not (p54))) (at end (s54_done)))
  )

  (:durative-action do_step55
    :duration (= ?duration 15)
    :condition (and (at start (p55)) (at start (s14_done)) (at start (s25_done)))
    :effect (and (at start (not (p55))) (at end (s55_done)))
  )

  (:durative-action do_step56
    :duration (= ?duration 20)
    :condition (and (at start (p56)) (at start (s25_done)) (at start (s36_done)) (at start (s86_done)))
    :effect (and (at start (not (p56))) (at end (s56_done)))
  )

  (:durative-action do_step57
    :duration (= ?duration 15)
    :condition (and (at start (p57)) (at start (s41_done)))
    :effect (and (at start (not (p57))) (at end (s57_done)))
  )

  (:durative-action do_step58
    :duration (= ?duration 120)
    :condition (and (at start (p58)) (at start (s5_done)))
    :effect (and (at start (not (p58))) (at end (s58_done)))
  )

  (:durative-action do_step59
    :duration (= ?duration 15)
    :condition (and (at start (p59)) (at start (s5_done)) (at start (s33_done)) (at start (s62_done)))
    :effect (and (at start (not (p59))) (at end (s59_done)))
  )

  (:durative-action do_step60
    :duration (= ?duration 10)
    :condition (and (at start (p60)) (at start (s56_done)) (at start (s59_done)))
    :effect (and (at start (not (p60))) (at end (s60_done)))
  )

  (:durative-action do_step61
    :duration (= ?duration 30)
    :condition (and (at start (p61)) (at start (s37_done)) (at start (s78_done)))
    :effect (and (at start (not (p61))) (at end (s61_done)))
  )

  (:durative-action do_step62
    :duration (= ?duration 20)
    :condition (and (at start (p62)) (at start (s31_done)))
    :effect (and (at start (not (p62))) (at end (s62_done)))
  )

  (:durative-action do_step63
    :duration (= ?duration 10)
    :condition (and (at start (p63)) (at start (s58_done)))
    :effect (and (at start (not (p63))) (at end (s63_done)))
  )

  (:durative-action do_step64
    :duration (= ?duration 5)
    :condition (and (at start (p64)))
    :effect (and (at start (not (p64))) (at end (s64_done)))
  )

  (:durative-action do_step65
    :duration (= ?duration 15)
    :condition (and (at start (p65)))
    :effect (and (at start (not (p65))) (at end (s65_done)))
  )

  (:durative-action do_step66
    :duration (= ?duration 10)
    :condition (and (at start (p66)) (at start (s25_done)) (at start (s44_done)) (at start (s55_done)) (at start (s68_done)) (at start (s71_done)))
    :effect (and (at start (not (p66))) (at end (s66_done)))
  )

  (:durative-action do_step67
    :duration (= ?duration 45)
    :condition (and (at start (p67)) (at start (s14_done)) (at start (s33_done)) (at start (s41_done)) (at start (s65_done)) (at start (s70_done)) (at start (s75_done)))
    :effect (and (at start (not (p67))) (at end (s67_done)))
  )

  (:durative-action do_step68
    :duration (= ?duration 10)
    :condition (and (at start (p68)) (at start (s23_done)))
    :effect (and (at start (not (p68))) (at end (s68_done)))
  )

  (:durative-action do_step69
    :duration (= ?duration 20)
    :condition (and (at start (p69)) (at start (s7_done)) (at start (s22_done)) (at start (s39_done)) (at start (s50_done)) (at start (s54_done)) (at start (s59_done)) (at start (s86_done)))
    :effect (and (at start (not (p69))) (at end (s69_done)))
  )

  (:durative-action do_step70
    :duration (= ?duration 10)
    :condition (and (at start (p70)) (at start (s8_done)) (at start (s10_done)) (at start (s90_done)))
    :effect (and (at start (not (p70))) (at end (s70_done)))
  )

  (:durative-action do_step71
    :duration (= ?duration 15)
    :condition (and (at start (p71)) (at start (s41_done)))
    :effect (and (at start (not (p71))) (at end (s71_done)))
  )

  (:durative-action do_step72
    :duration (= ?duration 15)
    :condition (and (at start (p72)) (at start (s4_done)) (at start (s33_done)) (at start (s51_done)) (at start (s88_done)))
    :effect (and (at start (not (p72))) (at end (s72_done)))
  )

  (:durative-action do_step73
    :duration (= ?duration 60)
    :condition (and (at start (p73)))
    :effect (and (at start (not (p73))) (at end (s73_done)))
  )

  (:durative-action do_step74
    :duration (= ?duration 20)
    :condition (and (at start (p74)) (at start (s2_done)) (at start (s17_done)) (at start (s22_done)) (at start (s36_done)) (at start (s57_done)) (at start (s58_done)) (at start (s63_done)))
    :effect (and (at start (not (p74))) (at end (s74_done)))
  )

  (:durative-action do_step75
    :duration (= ?duration 30)
    :condition (and (at start (p75)) (at start (s20_done)) (at start (s59_done)) (at start (s73_done)) (at start (s63_done)))
    :effect (and (at start (not (p75))) (at end (s75_done)))
  )

  (:durative-action do_step76
    :duration (= ?duration 20)
    :condition (and (at start (p76)) (at start (s19_done)) (at start (s20_done)) (at start (s22_done)) (at start (s41_done)) (at start (s63_done)))
    :effect (and (at start (not (p76))) (at end (s76_done)))
  )

  (:durative-action do_step77
    :duration (= ?duration 30)
    :condition (and (at start (p77)) (at start (s25_done)) (at start (s55_done)) (at start (s71_done)) (at start (s76_done)))
    :effect (and (at start (not (p77))) (at end (s77_done)))
  )

  (:durative-action do_step78
    :duration (= ?duration 45)
    :condition (and (at start (p78)) (at start (s34_done)))
    :effect (and (at start (not (p78))) (at end (s78_done)))
  )

  (:durative-action do_step79
    :duration (= ?duration 10)
    :condition (and (at start (p79)))
    :effect (and (at start (not (p79))) (at end (s79_done)))
  )

  (:durative-action do_step80
    :duration (= ?duration 10)
    :condition (and (at start (p80)) (at start (s56_done)))
    :effect (and (at start (not (p80))) (at end (s80_done)))
  )

  (:durative-action do_step81
    :duration (= ?duration 60)
    :condition (and (at start (p81)) (at start (s5_done)))
    :effect (and (at start (not (p81))) (at end (s81_done)))
  )

  (:durative-action do_step82
    :duration (= ?duration 120)
    :condition (and (at start (p82)) (at start (s25_done)))
    :effect (and (at start (not (p82))) (at end (s82_done)))
  )

  (:durative-action do_step83
    :duration (= ?duration 30)
    :condition (and (at start (p83)) (at start (s36_done)))
    :effect (and (at start (not (p83))) (at end (s83_done)))
  )

  (:durative-action do_step84
    :duration (= ?duration 40)
    :condition (and (at start (p84)) (at start (s23_done)) (at start (s30_done)) (at start (s43_done)) (at start (s8_done)))
    :effect (and (at start (not (p84))) (at end (s84_done)))
  )

  (:durative-action do_step85
    :duration (= ?duration 60)
    :condition (and (at start (p85)) (at start (s25_done)) (at start (s31_done)) (at start (s41_done)) (at start (s88_done)))
    :effect (and (at start (not (p85))) (at end (s85_done)))
  )

  (:durative-action do_step86
    :duration (= ?duration 20)
    :condition (and (at start (p86)))
    :effect (and (at start (not (p86))) (at end (s86_done)))
  )

  (:durative-action do_step87
    :duration (= ?duration 60)
    :condition (and (at start (p87)) (at start (s52_done)) (at start (s10_done)))
    :effect (and (at start (not (p87))) (at end (s87_done)))
  )

  (:durative-action do_step88
    :duration (= ?duration 30)
    :condition (and (at start (p88)))
    :effect (and (at start (not (p88))) (at end (s88_done)))
  )

  (:durative-action do_step89
    :duration (= ?duration 10)
    :condition (and (at start (p89)) (at start (s4_done)) (at start (s16_done)) (at start (s29_done)) (at start (s47_done)) (at start (s50_done)) (at start (s64_done)) (at start (s72_done)) (at start (s75_done)))
    :effect (and (at start (not (p89))) (at end (s89_done)))
  )

  (:durative-action do_step90
    :duration (= ?duration 20)
    :condition (and (at start (p90)) (at start (s19_done)) (at start (s31_done)) (at start (s33_done)) (at start (s73_done)) (at start (s83_done)) (at start (s88_done)))
    :effect (and (at start (not (p90))) (at end (s90_done)))
  )
)
