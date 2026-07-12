(define (domain color-reference-booklet)
  (:requirements :durative-actions :typing)
  (:types step)
  ;; The earlier domain omitted :parameters from every durative action.
  ;; It also used step1...step80 as domain-level constants without declaring them.
  (:constants
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
    step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
    step61 step62 step63 step64 step65 step66 step67 step68 step69 step70
    step71 step72 step73 step74 step75 step76 step77 step78 step79 step80 - step)
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
    (p71) (p72) (p73) (p74) (booklet_completed) (p76) (p77) (p78) (p79) (p80))

  (:durative-action do-step1
    :parameters () :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (p45)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (p1))))
  (:durative-action do-step2
    :parameters () :duration (= ?duration 2700)
    :condition (and (at start (step_pending step2)) (at start (p31)) (at start (p48)) (at start (p79)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (p2))))
  (:durative-action do-step3
    :parameters () :duration (= ?duration 1800)
    :condition (and (at start (step_pending step3)) (at start (p9)) (at start (p64)) (at start (p74)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (p3))))
  (:durative-action do-step4
    :parameters () :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (p41)) (at start (p79)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (p4))))
  (:durative-action do-step5
    :parameters () :duration (= ?duration 10800)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (p5))))
  (:durative-action do-step6
    :parameters () :duration (= ?duration 1200)
    :condition (and (at start (step_pending step6)) (at start (p12)) (at start (p66)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (p6))))
  (:durative-action do-step7
    :parameters () :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)) (at start (p9)) (at start (p22)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (p7))))
  (:durative-action do-step8
    :parameters () :duration (= ?duration 900)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (p8))))
  (:durative-action do-step9
    :parameters () :duration (= ?duration 2400)
    :condition (and (at start (step_pending step9)) (at start (p12)) (at start (p66)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (p9))))
  (:durative-action do-step10
    :parameters () :duration (= ?duration 600)
    :condition (and (at start (step_pending step10)) (at start (p21)) (at start (p30)) (at start (p54)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (p10))))
  (:durative-action do-step11
    :parameters () :duration (= ?duration 300)
    :condition (and (at start (step_pending step11)) (at start (p22)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (p11))))
  (:durative-action do-step12
    :parameters () :duration (= ?duration 7200)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (p12))))
  (:durative-action do-step13
    :parameters () :duration (= ?duration 300)
    :condition (and (at start (step_pending step13)) (at start (p36)) (at start (p43)) (at start (p66)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (p13))))
  (:durative-action do-step14
    :parameters () :duration (= ?duration 3600)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (p14))))
  (:durative-action do-step15
    :parameters () :duration (= ?duration 1800)
    :condition (and (at start (step_pending step15)) (at start (p22)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (p15))))
  (:durative-action do-step16
    :parameters () :duration (= ?duration 1500)
    :condition (and (at start (step_pending step16)) (at start (p7)) (at start (p18)) (at start (p66)) (at start (p79)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (p16))))
  (:durative-action do-step17
    :parameters () :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (p46)) (at start (p52)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (p17))))
  (:durative-action do-step18
    :parameters () :duration (= ?duration 600)
    :condition (and (at start (step_pending step18)) (at start (p14)) (at start (p43)) (at start (p60)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (p18))))
  (:durative-action do-step19
    :parameters () :duration (= ?duration 1200)
    :condition (and (at start (step_pending step19)) (at start (p26)) (at start (p58)) (at start (p76)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (p19))))
  (:durative-action do-step20
    :parameters () :duration (= ?duration 1800)
    :condition (and (at start (step_pending step20)) (at start (p9)) (at start (p19)) (at start (p28)) (at start (p35)) (at start (p80)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (p20))))
  (:durative-action do-step21
    :parameters () :duration (= ?duration 900)
    :condition (and (at start (step_pending step21)) (at start (p33)) (at start (p63)) (at start (p70)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (p21))))
  (:durative-action do-step22
    :parameters () :duration (= ?duration 1200)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (p22))))
  (:durative-action do-step23
    :parameters () :duration (= ?duration 2700)
    :condition (and (at start (step_pending step23)) (at start (p11)) (at start (p24)) (at start (p68)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (p23))))
  (:durative-action do-step24
    :parameters () :duration (= ?duration 900)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (p24))))
  (:durative-action do-step25
    :parameters () :duration (= ?duration 3600)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (p25))))
  (:durative-action do-step26
    :parameters () :duration (= ?duration 3600)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (p26))))
  (:durative-action do-step27
    :parameters () :duration (= ?duration 3000)
    :condition (and (at start (step_pending step27)) (at start (p25)) (at start (p28)) (at start (p53)) (at start (p58)) (at start (p67)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (p27))))
  (:durative-action do-step28
    :parameters () :duration (= ?duration 7200)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (p28))))
  (:durative-action do-step29
    :parameters () :duration (= ?duration 14400)
    :condition (and (at start (step_pending step29)) (at start (p15)) (at start (p52)) (at start (p66)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (p29))))
  (:durative-action do-step30
    :parameters () :duration (= ?duration 3600)
    :condition (and (at start (step_pending step30)) (at start (p12)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (p30))))
  (:durative-action do-step31
    :parameters () :duration (= ?duration 1200)
    :condition (and (at start (step_pending step31)) (at start (p47)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (p31))))
  (:durative-action do-step32
    :parameters () :duration (= ?duration 2400)
    :condition (and (at start (step_pending step32)) (at start (p47)) (at start (p72)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (p32))))
  (:durative-action do-step33
    :parameters () :duration (= ?duration 300)
    :condition (and (at start (step_pending step33)) (at start (p8)) (at start (p35)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (p33))))
  (:durative-action do-step34
    :parameters () :duration (= ?duration 3600)
    :condition (and (at start (step_pending step34)) (at start (p43)) (at start (p51)) (at start (p53)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (p34))))
  (:durative-action do-step35
    :parameters () :duration (= ?duration 900)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (p35))))
  (:durative-action do-step36
    :parameters () :duration (= ?duration 7200)
    :condition (and (at start (step_pending step36)) (at start (p80)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (p36))))
  (:durative-action do-step37
    :parameters () :duration (= ?duration 900)
    :condition (and (at start (step_pending step37)) (at start (p78)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (p37))))
  (:durative-action do-step38
    :parameters () :duration (= ?duration 3600)
    :condition (and (at start (step_pending step38)) (at start (p3)) (at start (p19)) (at start (p30)) (at start (p32)) (at start (p34)) (at start (p57)) (at start (p74)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (p38))))
  (:durative-action do-step39
    :parameters () :duration (= ?duration 1500)
    :condition (and (at start (step_pending step39)) (at start (p35)) (at start (p80)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (p39))))
  (:durative-action do-step40
    :parameters () :duration (= ?duration 1800)
    :condition (and (at start (step_pending step40)) (at start (p1)) (at start (p2)) (at start (p24)) (at start (p31)) (at start (p42)) (at start (p61)) (at start (p68)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (p40))))
  (:durative-action do-step41
    :parameters () :duration (= ?duration 2400)
    :condition (and (at start (step_pending step41)) (at start (p23)) (at start (p31)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (p41))))
  (:durative-action do-step42
    :parameters () :duration (= ?duration 259200)
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (p42))))
  (:durative-action do-step43
    :parameters () :duration (= ?duration 600)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (p43))))
  (:durative-action do-step44
    :parameters () :duration (= ?duration 900)
    :condition (and (at start (step_pending step44)) (at start (p6)) (at start (p10)) (at start (p14)) (at start (p21)) (at start (p56)) (at start (p71)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (p44))))
  (:durative-action do-step45
    :parameters () :duration (= ?duration 3600)
    :condition (and (at start (step_pending step45)) (at start (p49)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (p45))))
  (:durative-action do-step46
    :parameters () :duration (= ?duration 3600)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (p46))))
  (:durative-action do-step47
    :parameters () :duration (= ?duration 600)
    :condition (and (at start (step_pending step47)) (at start (p42)) (at start (p80)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (p47))))
  (:durative-action do-step48
    :parameters () :duration (= ?duration 1800)
    :condition (and (at start (step_pending step48)) (at start (p19)) (at start (p24)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (p48))))
  (:durative-action do-step49
    :parameters () :duration (= ?duration 300)
    :condition (and (at start (step_pending step49)) (at start (p60)) (at start (p67)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (p49))))
  (:durative-action do-step50
    :parameters () :duration (= ?duration 43200)
    :condition (and (at start (step_pending step50)) (at start (p40)) (at start (p42)) (at start (p59)) (at start (p69)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (p50))))
  (:durative-action do-step51
    :parameters () :duration (= ?duration 3600)
    :condition (and (at start (step_pending step51)) (at start (p8)) (at start (p28)) (at start (p39)) (at start (p63)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (p51))))
  (:durative-action do-step52
    :parameters () :duration (= ?duration 3600)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (p52))))
  (:durative-action do-step53
    :parameters () :duration (= ?duration 1800)
    :condition (and (at start (step_pending step53)) (at start (p28)) (at start (p36)) (at start (p62)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (p53))))
  (:durative-action do-step54
    :parameters () :duration (= ?duration 2400)
    :condition (and (at start (step_pending step54)) (at start (p52)) (at start (p53)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (p54))))
  (:durative-action do-step55
    :parameters () :duration (= ?duration 900)
    :condition (and (at start (step_pending step55)) (at start (p30)) (at start (p49)) (at start (p60)) (at start (p77)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (p55))))
  (:durative-action do-step56
    :parameters () :duration (= ?duration 2700)
    :condition (and (at start (step_pending step56)) (at start (p2)) (at start (p60)) (at start (p67)) (at start (p73)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (p56))))
  (:durative-action do-step57
    :parameters () :duration (= ?duration 7200)
    :condition (and (at start (step_pending step57)) (at start (p15)) (at start (p27)) (at start (p70)) (at start (p79)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (p57))))
  (:durative-action do-step58
    :parameters () :duration (= ?duration 300)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (p58))))
  (:durative-action do-step59
    :parameters () :duration (= ?duration 300)
    :condition (and (at start (step_pending step59)) (at start (p62)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (p59))))
  (:durative-action do-step60
    :parameters () :duration (= ?duration 120)
    :condition (and (at start (step_pending step60)) (at start (p69)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (p60))))
  (:durative-action do-step61
    :parameters () :duration (= ?duration 3000)
    :condition (and (at start (step_pending step61)) (at start (p51)) (at start (p64)) (at start (p80)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (p61))))
  (:durative-action do-step62
    :parameters () :duration (= ?duration 1800)
    :condition (and (at start (step_pending step62)) (at start (p63)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (p62))))
  (:durative-action do-step63
    :parameters () :duration (= ?duration 3600)
    :condition (at start (step_pending step63))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (p63))))
  (:durative-action do-step64
    :parameters () :duration (= ?duration 1800)
    :condition (and (at start (step_pending step64)) (at start (p12)) (at start (p13)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (p64))))
  (:durative-action do-step65
    :parameters () :duration (= ?duration 7200)
    :condition (and (at start (step_pending step65)) (at start (p7)) (at start (p27)) (at start (p52)) (at start (p56)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (p65))))
  (:durative-action do-step66
    :parameters () :duration (= ?duration 1800)
    :condition (at start (step_pending step66))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (p66))))
  (:durative-action do-step67
    :parameters () :duration (= ?duration 1800)
    :condition (and (at start (step_pending step67)) (at start (p73)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (p67))))
  (:durative-action do-step68
    :parameters () :duration (= ?duration 2400)
    :condition (and (at start (step_pending step68)) (at start (p28)) (at start (p42)) (at start (p51)) (at start (p70)) (at start (p72)) (at start (p76)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (p68))))
  (:durative-action do-step69
    :parameters () :duration (= ?duration 900)
    :condition (and (at start (step_pending step69)) (at start (p9)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (p69))))
  (:durative-action do-step70
    :parameters () :duration (= ?duration 600)
    :condition (and (at start (step_pending step70)) (at start (p35)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (p70))))
  (:durative-action do-step71
    :parameters () :duration (= ?duration 2100)
    :condition (and (at start (step_pending step71)) (at start (p7)) (at start (p73)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (p71))))
  (:durative-action do-step72
    :parameters () :duration (= ?duration 3600)
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (p72))))
  (:durative-action do-step73
    :parameters () :duration (= ?duration 5400)
    :condition (and (at start (step_pending step73)) (at start (p22)) (at start (p25)) (at start (p64)) (at start (p79)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (p73))))
  (:durative-action do-step74
    :parameters () :duration (= ?duration 2400)
    :condition (and (at start (step_pending step74)) (at start (p5)) (at start (p67)) (at start (p73)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (p74))))
  (:durative-action do-step75
    :parameters () :duration (= ?duration 1200)
    :condition (and (at start (step_pending step75)) (at start (p7)) (at start (p8)) (at start (p31)) (at start (p37)) (at start (p38)) (at start (p72)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (booklet_completed))))
  (:durative-action do-step76
    :parameters () :duration (= ?duration 1200)
    :condition (and (at start (step_pending step76)) (at start (p58)) (at start (p66)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (p76))))
  (:durative-action do-step77
    :parameters () :duration (= ?duration 300)
    :condition (and (at start (step_pending step77)) (at start (p25)) (at start (p46)) (at start (p47)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (p77))))
  (:durative-action do-step78
    :parameters () :duration (= ?duration 1800)
    :condition (and (at start (step_pending step78)) (at start (p4)) (at start (p6)) (at start (p48)) (at start (p51)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (p78))))
  (:durative-action do-step79
    :parameters () :duration (= ?duration 3600)
    :condition (and (at start (step_pending step79)) (at start (p6)) (at start (p15)) (at start (p24)) (at start (p80)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (p79))))
  (:durative-action do-step80
    :parameters () :duration (= ?duration 1200)
    :condition (and (at start (step_pending step80)) (at start (p6)) (at start (p22)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (p80))))
)