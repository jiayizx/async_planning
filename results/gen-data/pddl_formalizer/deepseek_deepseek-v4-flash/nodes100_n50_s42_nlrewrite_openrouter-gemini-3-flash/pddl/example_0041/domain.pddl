(define (domain funnel_cake)
  (:requirements :durative-actions :typing)
  (:types step)
  (:constants
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
    step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
    step61 step62 step63 step64 step65 step66 step67 step68 step69 step70
    step71 step72 step73 step74 step75 step76 step77 step78 step79 step80
    step81 step82 step83 step84 step85 step86 step87 step88 step89 step90
    step91 step92 step93 step94 step95 step96 step97 step98 step99 step100 - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
    (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
    (p61) (p62) (p63) (p64) (p65) (p66) (p67) (p68) (p69) (p70)
    (p71) (p72) (p73) (p74) (p75) (p76) (p77) (p78) (p79) (p80)
    (p81) (p82) (p83) (p84) (p85) (p86) (p87) (p88) (p89) (p90)
    (p91) (p92) (p93) (p94) (p95) (p96) (p97) (p98) (p99) (p100)
  )
  (:durative-action do_step1
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (p1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 180)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (p2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step3) (p4) (p17) (p85)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (p3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step4) (p10) (p61)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (p4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step5) (p42)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (p5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step6) (p30) (p34) (p41) (p63) (p99)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (p6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step7) (p37) (p48)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (p7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step8) (p35) (p86)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (p8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step9) (p10) (p22) (p95)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (p9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step10) (p33) (p50)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (p10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step11) (p10) (p12) (p21) (p34) (p43) (p53) (p94)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (p11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step12) (p14)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (p12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 40)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (p13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step14) (p71)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (p14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step15) (p36)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (p15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step16) (p22) (p24) (p36) (p46) (p72)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (p16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step17) (p32)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (p17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step18) (p33) (p35) (p62) (p86)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (p18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 60)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (p19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step20) (p22)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (p20)))
  )
  (:durative-action do_step21
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step21) (p47) (p55)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (p21)))
  )
  (:durative-action do_step22
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step22) (p90)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (p22)))
  )
  (:durative-action do_step23
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step23) (p32)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (p23)))
  )
  (:durative-action do_step24
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step24) (p50) (p89)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (p24)))
  )
  (:durative-action do_step25
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step25) (p29) (p83)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (p25)))
  )
  (:durative-action do_step26
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step26) (p2) (p27) (p37) (p45)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (p26)))
  )
  (:durative-action do_step27
    :duration (= ?duration 120)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (p27)))
  )
  (:durative-action do_step28
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step28) (p72)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (p28)))
  )
  (:durative-action do_step29
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step29) (p13)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (p29)))
  )
  (:durative-action do_step30
    :duration (= ?duration 10)
    :condition (at start (and (step_pending step30) (p62)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (p30)))
  )
  (:durative-action do_step31
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step31) (p4) (p16) (p21) (p22) (p25) (p56) (p66) (p83) (p87)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (p31)))
  )
  (:durative-action do_step32
    :duration (= ?duration 600)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (p32)))
  )
  (:durative-action do_step33
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step33) (p17) (p49) (p71) (p75) (p86)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (p33)))
  )
  (:durative-action do_step34
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step34) (p26) (p90)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (p34)))
  )
  (:durative-action do_step35
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step35) (p45)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (p35)))
  )
  (:durative-action do_step36
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step36) (p9) (p26) (p47) (p48) (p61) (p69) (p70)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (p36)))
  )
  (:durative-action do_step37
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step37) (p62)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (p37)))
  )
  (:durative-action do_step38
    :duration (= ?duration 15)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (p38)))
  )
  (:durative-action do_step39
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step39) (p56)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (p39)))
  )
  (:durative-action do_step40
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step40) (p15) (p45) (p75)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (p40)))
  )
  (:durative-action do_step41
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step41) (p21) (p27) (p48) (p51) (p56) (p63) (p93) (p95)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (p41)))
  )
  (:durative-action do_step42
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step42) (p13) (p17)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (p42)))
  )
  (:durative-action do_step43
    :duration (= ?duration 300)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (p43)))
  )
  (:durative-action do_step44
    :duration (= ?duration 10)
    :condition (at start (and (step_pending step44) (p33) (p43) (p45) (p67) (p78) (p89) (p93)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (p44)))
  )
  (:durative-action do_step45
    :duration (= ?duration 120)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (p45)))
  )
  (:durative-action do_step46
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step46) (p32)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (p46)))
  )
  (:durative-action do_step47
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step47) (p77)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (p47)))
  )
  (:durative-action do_step48
    :duration (= ?duration 120)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (p48)))
  )
  (:durative-action do_step49
    :duration (= ?duration 300)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (p49)))
  )
  (:durative-action do_step50
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step50) (p35) (p95)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (p50)))
  )
  (:durative-action do_step51
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step51) (p42) (p43)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (p51)))
  )
  (:durative-action do_step52
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step52) (p13) (p43) (p67) (p69) (p92)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (p52)))
  )
  (:durative-action do_step53
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step53) (p1) (p7) (p35) (p55) (p56) (p71)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (p53)))
  )
  (:durative-action do_step54
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step54) (p7) (p26) (p60) (p72) (p78) (p90)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (p54)))
  )
  (:durative-action do_step55
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step55) (p13) (p62)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (p55)))
  )
  (:durative-action do_step56
    :duration (= ?duration 300)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (p56)))
  )
  (:durative-action do_step57
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step57) (p12) (p26) (p89)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (p57)))
  )
  (:durative-action do_step58
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step58) (p5) (p19) (p69) (p78) (p79) (p80)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (p58)))
  )
  (:durative-action do_step59
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step59) (p19) (p29) (p44) (p46) (p67)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (p59)))
  )
  (:durative-action do_step60
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step60) (p15) (p70) (p73) (p99)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (p60)))
  )
  (:durative-action do_step61
    :duration (= ?duration 15)
    :condition (at start (and (step_pending step61) (p13)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (p61)))
  )
  (:durative-action do_step62
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step62) (p73)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (p62)))
  )
  (:durative-action do_step63
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step63) (p3) (p5) (p14) (p17) (p23) (p25) (p86)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (p63)))
  )
  (:durative-action do_step64
    :duration (= ?duration 10)
    :condition (at start (and (step_pending step64) (p13) (p38)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (p64)))
  )
  (:durative-action do_step65
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step65) (p2) (p37) (p57) (p60) (p93) (p96)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (p65)))
  )
  (:durative-action do_step66
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step66) (p23) (p28) (p36) (p46) (p63) (p90) (p99)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (p66)))
  )
  (:durative-action do_step67
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step67) (p50) (p70) (p78) (p82)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (p67)))
  )
  (:durative-action do_step68
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step68) (p32) (p71) (p75) (p87)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (p68)))
  )
  (:durative-action do_step69
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step69) (p30) (p77)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (p69)))
  )
  (:durative-action do_step70
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step70) (p62) (p87)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (p70)))
  )
  (:durative-action do_step71
    :duration (= ?duration 600)
    :condition (at start (step_pending step71))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (p71)))
  )
  (:durative-action do_step72
    :duration (= ?duration 60)
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (p72)))
  )
  (:durative-action do_step73
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step73) (p32) (p43) (p45)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (p73)))
  )
  (:durative-action do_step74
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step74) (p8) (p14) (p66)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (p74)))
  )
  (:durative-action do_step75
    :duration (= ?duration 180)
    :condition (at start (step_pending step75))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (p75)))
  )
  (:durative-action do_step76
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step76) (p13) (p17) (p18) (p32) (p35) (p49) (p67) (p71) (p88)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (p76)))
  )
  (:durative-action do_step77
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step77) (p27) (p48)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (p77)))
  )
  (:durative-action do_step78
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step78) (p96)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (p78)))
  )
  (:durative-action do_step79
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step79) (p45) (p69)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (p79)))
  )
  (:durative-action do_step80
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step80) (p42) (p70)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (p80)))
  )
  (:durative-action do_step81
    :duration (= ?duration 10)
    :condition (at start (and (step_pending step81) (p56) (p77) (p85) (p93)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (p81)))
  )
  (:durative-action do_step82
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step82) (p16) (p19) (p23) (p94)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (p82)))
  )
  (:durative-action do_step83
    :duration (= ?duration 20)
    :condition (at start (and (step_pending step83) (p35) (p80)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (p83)))
  )
  (:durative-action do_step84
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step84) (p45) (p93)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (p84)))
  )
  (:durative-action do_step85
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step85) (p1)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (p85)))
  )
  (:durative-action do_step86
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step86) (p29) (p51)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (p86)))
  )
  (:durative-action do_step87
    :duration (= ?duration 30)
    :condition (at start (step_pending step87))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (p87)))
  )
  (:durative-action do_step88
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step88) (p3) (p23) (p24) (p37) (p41) (p47)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (p88)))
  )
  (:durative-action do_step89
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step89) (p13) (p62)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (p89)))
  )
  (:durative-action do_step90
    :duration (= ?duration 60)
    :condition (at start (step_pending step90))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (p90)))
  )
  (:durative-action do_step91
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step91) (p5) (p14) (p23) (p49) (p50)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (p91)))
  )
  (:durative-action do_step92
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step92) (p8) (p19) (p34) (p69) (p70) (p74)))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (p92)))
  )
  (:durative-action do_step93
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step93) (p8) (p21) (p29) (p70)))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (p93)))
  )
  (:durative-action do_step94
    :duration (= ?duration 300)
    :condition (at start (step_pending step94))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (p94)))
  )
  (:durative-action do_step95
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step95) (p47) (p51)))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (p95)))
  )
  (:durative-action do_step96
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step96) (p28) (p80)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (p96)))
  )
  (:durative-action do_step97
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step97) (p32) (p47) (p61) (p77)))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (p97)))
  )
  (:durative-action do_step98
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step98) (p19) (p40) (p67)))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (p98)))
  )
  (:durative-action do_step99
    :duration (= ?duration 180)
    :condition (at start (step_pending step99))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (p99)))
  )
  (:durative-action do_step100
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step100) (p3) (p27) (p63) (p75) (p86)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (p100)))
  )
)