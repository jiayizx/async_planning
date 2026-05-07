(define (domain slow_cooker_shredded_chicken)
  (:requirements :durative-actions :typing)
  (:types step)
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
    (p91) (p92) (p93) (p94) (p95) (p96) (p97) (p98) (p99) (p100))
  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (p1))))
  (:durative-action do_step2
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step2)) (at start (p63)) (at start (p65)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (p2))))
  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (p1)) (at start (p36)) (at start (p53)) (at start (p97)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (p3))))
  (:durative-action do_step4
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step4)) (at start (p79)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (p4))))
  (:durative-action do_step5
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step5)) (at start (p12)) (at start (p50)) (at start (p87)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (p5))))
  (:durative-action do_step6
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (p80)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (p6))))
  (:durative-action do_step7
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (p82)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (p7))))
  (:durative-action do_step8
    :duration (= ?duration 30)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (p8))))
  (:durative-action do_step9
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step9)) (at start (p41)) (at start (p46)) (at start (p54)) (at start (p80)) (at start (p86)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (p9))))
  (:durative-action do_step10
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step10)) (at start (p68)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (p10))))
  (:durative-action do_step11
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step11)) (at start (p1)) (at start (p36)) (at start (p47)) (at start (p93)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (p11))))
  (:durative-action do_step12
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step12)) (at start (p13)) (at start (p24)) (at start (p33)) (at start (p45)) (at start (p66)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (p12))))
  (:durative-action do_step13
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (p29)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (p13))))
  (:durative-action do_step14
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (p1)) (at start (p39)) (at start (p60)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (p14))))
  (:durative-action do_step15
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step15)) (at start (p1)) (at start (p4)) (at start (p14)) (at start (p17)) (at start (p87)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (p15))))
  (:durative-action do_step16
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step16)) (at start (p30)) (at start (p46)) (at start (p72)) (at start (p74)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (p16))))
  (:durative-action do_step17
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step17)) (at start (p6)) (at start (p19)) (at start (p27)) (at start (p59)) (at start (p79)) (at start (p94)) (at start (p98)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (p17))))
  (:durative-action do_step18
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step18)) (at start (p47)) (at start (p97)) (at start (p98)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (p18))))
  (:durative-action do_step19
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step19)) (at start (p46)) (at start (p91)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (p19))))
  (:durative-action do_step20
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step20)) (at start (p2)) (at start (p47)) (at start (p70)) (at start (p72)) (at start (p97)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (p20))))
  (:durative-action do_step21
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step21)) (at start (p29)) (at start (p30)) (at start (p65)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (p21))))
  (:durative-action do_step22
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step22)) (at start (p42)) (at start (p45)) (at start (p57)) (at start (p64)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (p22))))
  (:durative-action do_step23
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step23)) (at start (p36)) (at start (p79)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (p23))))
  (:durative-action do_step24
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step24)) (at start (p29)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (p24))))
  (:durative-action do_step25
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step25)) (at start (p20)) (at start (p100)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (p25))))
  (:durative-action do_step26
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step26)) (at start (p34)) (at start (p48)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (p26))))
  (:durative-action do_step27
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step27)) (at start (p12)) (at start (p25)) (at start (p75)) (at start (p95)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (p27))))
  (:durative-action do_step28
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step28)) (at start (p29)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (p28))))
  (:durative-action do_step29
    :duration (= ?duration 600)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (p29))))
  (:durative-action do_step30
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step30)) (at start (p63)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (p30))))
  (:durative-action do_step31
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step31)) (at start (p7)) (at start (p23)) (at start (p26)) (at start (p97)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (p31))))
  (:durative-action do_step32
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step32)) (at start (p21)) (at start (p39)) (at start (p45)) (at start (p73)) (at start (p79)) (at start (p80)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (p32))))
  (:durative-action do_step33
    :duration (= ?duration 120)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (p33))))
  (:durative-action do_step34
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step34)) (at start (p70)) (at start (p95)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (p34))))
  (:durative-action do_step35
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step35)) (at start (p15)) (at start (p34)) (at start (p68)) (at start (p70)) (at start (p99)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (p35))))
  (:durative-action do_step36
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step36)) (at start (p29)) (at start (p75)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (p36))))
  (:durative-action do_step37
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step37)) (at start (p18)) (at start (p41)) (at start (p48)) (at start (p64)) (at start (p71)) (at start (p74)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (p37))))
  (:durative-action do_step38
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step38)) (at start (p20)) (at start (p24)) (at start (p48)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (p38))))
  (:durative-action do_step39
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step39)) (at start (p68)) (at start (p100)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (p39))))
  (:durative-action do_step40
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step40)) (at start (p46)) (at start (p70)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (p40))))
  (:durative-action do_step41
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step41)) (at start (p4)) (at start (p28)) (at start (p33)) (at start (p79)) (at start (p82)) (at start (p97)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (p41))))
  (:durative-action do_step42
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step42)) (at start (p29)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (p42))))
  (:durative-action do_step43
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step43)) (at start (p10)) (at start (p18)) (at start (p86)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (p43))))
  (:durative-action do_step44
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step44)) (at start (p30)) (at start (p33)) (at start (p34)) (at start (p51)) (at start (p68)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (p44))))
  (:durative-action do_step45
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step45)) (at start (p28)) (at start (p38)) (at start (p48)) (at start (p63)) (at start (p78)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (p45))))
  (:durative-action do_step46
    :duration (= ?duration 300)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (p46))))
  (:durative-action do_step47
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step47)) (at start (p98)) (at start (p100)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (p47))))
  (:durative-action do_step48
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step48)) (at start (p34)) (at start (p95)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (p48))))
  (:durative-action do_step49
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step49)) (at start (p40)) (at start (p52)) (at start (p59)) (at start (p75)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (p49))))
  (:durative-action do_step50
    :duration (= ?duration 30)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (p50))))
  (:durative-action do_step51
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step51)) (at start (p16)) (at start (p24)) (at start (p91)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (p51))))
  (:durative-action do_step52
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step52)) (at start (p24)) (at start (p41)) (at start (p68)) (at start (p91)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (p52))))
  (:durative-action do_step53
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step53)) (at start (p25)) (at start (p78)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (p53))))
  (:durative-action do_step54
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step54)) (at start (p82)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (p54))))
  (:durative-action do_step55
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step55)) (at start (p1)) (at start (p7)) (at start (p13)) (at start (p19)) (at start (p41)) (at start (p58)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (p55))))
  (:durative-action do_step56
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step56)) (at start (p27)) (at start (p41)) (at start (p47)) (at start (p54)) (at start (p62)) (at start (p82)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (p56))))
  (:durative-action do_step57
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step57)) (at start (p10)) (at start (p39)) (at start (p75)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (p57))))
  (:durative-action do_step58
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step58)) (at start (p2)) (at start (p18)) (at start (p80)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (p58))))
  (:durative-action do_step59
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step59)) (at start (p82)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (p59))))
  (:durative-action do_step60
    :duration (= ?duration 300)
    :condition (at start (step_pending step60))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (p60))))
  (:durative-action do_step61
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step61)) (at start (p10)) (at start (p13)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (p61))))
  (:durative-action do_step62
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step62)) (at start (p8)) (at start (p24)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (p62))))
  (:durative-action do_step63
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step63)) (at start (p6)) (at start (p8)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (p63))))
  (:durative-action do_step64
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step64)) (at start (p50)) (at start (p55)) (at start (p95)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (p64))))
  (:durative-action do_step65
    :duration (= ?duration 120)
    :condition (at start (step_pending step65))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (p65))))
  (:durative-action do_step66
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step66)) (at start (p6)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (p66))))
  (:durative-action do_step67
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step67)) (at start (p33)) (at start (p35)) (at start (p62)) (at start (p66)) (at start (p75)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (p67))))
  (:durative-action do_step68
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step68)) (at start (p60)) (at start (p66)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (p68))))
  (:durative-action do_step69
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step69)) (at start (p19)) (at start (p58)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (p69))))
  (:durative-action do_step70
    :duration (= ?duration 120)
    :condition (at start (step_pending step70))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (p70))))
  (:durative-action do_step71
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step71)) (at start (p4)) (at start (p41)) (at start (p74)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (p71))))
  (:durative-action do_step72
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step72)) (at start (p8)) (at start (p10)) (at start (p36)) (at start (p91)) (at start (p100)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (p72))))
  (:durative-action do_step73
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step73)) (at start (p4)) (at start (p24)) (at start (p25)) (at start (p57)) (at start (p99)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (p73))))
  (:durative-action do_step74
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step74)) (at start (p14)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (p74))))
  (:durative-action do_step75
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step75)) (at start (p39)) (at start (p82)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (p75))))
  (:durative-action do_step76
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step76)) (at start (p9)) (at start (p13)) (at start (p23)) (at start (p29)) (at start (p69)) (at start (p77)) (at start (p87)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (p76))))
  (:durative-action do_step77
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step77)) (at start (p33)) (at start (p42)) (at start (p55)) (at start (p60)) (at start (p93)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (p77))))
  (:durative-action do_step78
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step78)) (at start (p19)) (at start (p58)) (at start (p94)) (at start (p98)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (p78))))
  (:durative-action do_step79
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step79)) (at start (p72)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (p79))))
  (:durative-action do_step80
    :duration (= ?duration 60)
    :condition (at start (step_pending step80))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (p80))))
  (:durative-action do_step81
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step81)) (at start (p4)) (at start (p6)) (at start (p47)) (at start (p86)) (at start (p96)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (p81))))
  (:durative-action do_step82
    :duration (= ?duration 300)
    :condition (at start (step_pending step82))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (p82))))
  (:durative-action do_step83
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step83)) (at start (p12)) (at start (p26)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (p83))))
  (:durative-action do_step84
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step84)) (at start (p14)) (at start (p24)) (at start (p41)) (at start (p54)) (at start (p74)) (at start (p78)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (p84))))
  (:durative-action do_step85
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step85)) (at start (p13)) (at start (p20)) (at start (p45)) (at start (p65)) (at start (p86)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (p85))))
  (:durative-action do_step86
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step86)) (at start (p7)) (at start (p75)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (p86))))
  (:durative-action do_step87
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step87)) (at start (p21)) (at start (p33)) (at start (p70)) (at start (p77)) (at start (p100)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (p87))))
  (:durative-action do_step88
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step88)) (at start (p2)) (at start (p55)) (at start (p56)) (at start (p60)) (at start (p86)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (p88))))
  (:durative-action do_step89
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step89)) (at start (p34)) (at start (p56)) (at start (p63)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (p89))))
  (:durative-action do_step90
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step90)) (at start (p19)) (at start (p31)) (at start (p87)) (at start (p94)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (p90))))
  (:durative-action do_step91
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step91)) (at start (p24)) (at start (p30)) (at start (p42)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (p91))))
  (:durative-action do_step92
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step92)) (at start (p18)) (at start (p25)) (at start (p39)) (at start (p55)) (at start (p75)) (at start (p85)) (at start (p91)))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (p92))))
  (:durative-action do_step93
    :duration (= ?duration 3600)
    :condition (at start (step_pending step93))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (p93))))
  (:durative-action do_step94
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step94)) (at start (p26)) (at start (p46)) (at start (p58)) (at start (p79)) (at start (p95)))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (p94))))
  (:durative-action do_step95
    :duration (= ?duration 60)
    :condition (at start (step_pending step95))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (p95))))
  (:durative-action do_step96
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step96)) (at start (p9)) (at start (p22)) (at start (p33)) (at start (p76)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (p96))))
  (:durative-action do_step97
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step97)) (at start (p75)))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (p97))))
  (:durative-action do_step98
    :duration (= ?duration 300)
    :condition (at start (step_pending step98))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (p98))))
  (:durative-action do_step99
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step99)) (at start (p12)) (at start (p39)) (at start (p51)) (at start (p54)) (at start (p61)) (at start (p69)) (at start (p72)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (p99))))
  (:durative-action do_step100
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step100)) (at start (p48)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (p100))))
)