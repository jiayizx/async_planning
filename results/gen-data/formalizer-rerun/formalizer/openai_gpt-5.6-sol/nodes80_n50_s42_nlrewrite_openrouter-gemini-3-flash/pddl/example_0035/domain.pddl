(define (domain violin-learning)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
  (p61) (p62) (p63) (p64) (p65) (p66) (p67) (p68) (p69) (p70)
  (p71) (p72) (p73) (p74) (p75) (p76) (p77) (p78) (p79) (p80)
  (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
  (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
  (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
  (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
  (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
  (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60)
  (s61) (s62) (s63) (s64) (s65) (s66) (s67) (s68) (s69) (s70)
  (s71) (s72) (s73) (s74) (s75) (s76) (s77) (s78) (s79) (s80))

 (:durative-action do_step1
  :parameters (?x - step) :duration (= ?duration 259200)
  :condition (and (at start (p1)) (at start (s34)) (at start (s67)) (at start (s72)))
  :effect (and (at start (not (p1))) (at end (step_done ?x)) (at end (s1))))
 (:durative-action do_step2
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (and (at start (p2)) (at start (s6)) (at start (s48)))
  :effect (and (at start (not (p2))) (at end (step_done ?x)) (at end (s2))))
 (:durative-action do_step3
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (p3)) (at start (s1)) (at start (s6)) (at start (s7)) (at start (s57)))
  :effect (and (at start (not (p3))) (at end (step_done ?x)) (at end (s3))))
 (:durative-action do_step4
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p4)) (at start (s57)))
  :effect (and (at start (not (p4))) (at end (step_done ?x)) (at end (s4))))
 (:durative-action do_step5
  :parameters (?x - step) :duration (= ?duration 172800)
  :condition (and (at start (p5)) (at start (s27)) (at start (s28)) (at start (s30)) (at start (s54)))
  :effect (and (at start (not (p5))) (at end (step_done ?x)) (at end (s5))))
 (:durative-action do_step6
  :parameters (?x - step) :duration (= ?duration 7200)
  :condition (at start (p6))
  :effect (and (at start (not (p6))) (at end (step_done ?x)) (at end (s6))))
 (:durative-action do_step7
  :parameters (?x - step) :duration (= ?duration 60)
  :condition (and (at start (p7)) (at start (s30)))
  :effect (and (at start (not (p7))) (at end (step_done ?x)) (at end (s7))))
 (:durative-action do_step8
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (p8)) (at start (s3)) (at start (s13)) (at start (s29)))
  :effect (and (at start (not (p8))) (at end (step_done ?x)) (at end (s8))))
 (:durative-action do_step9
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (p9)) (at start (s3)) (at start (s6)) (at start (s11)) (at start (s38)) (at start (s72)))
  :effect (and (at start (not (p9))) (at end (step_done ?x)) (at end (s9))))
 (:durative-action do_step10
  :parameters (?x - step) :duration (= ?duration 2700)
  :condition (and (at start (p10)) (at start (s23)) (at start (s54)))
  :effect (and (at start (not (p10))) (at end (step_done ?x)) (at end (s10))))
 (:durative-action do_step11
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (at start (p11))
  :effect (and (at start (not (p11))) (at end (step_done ?x)) (at end (s11))))
 (:durative-action do_step12
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p12)) (at start (s47)))
  :effect (and (at start (not (p12))) (at end (step_done ?x)) (at end (s12))))
 (:durative-action do_step13
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (p13)) (at start (s6)) (at start (s15)) (at start (s49)) (at start (s67)) (at start (s79)))
  :effect (and (at start (not (p13))) (at end (step_done ?x)) (at end (s13))))
 (:durative-action do_step14
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (p14)) (at start (s8)) (at start (s43)))
  :effect (and (at start (not (p14))) (at end (step_done ?x)) (at end (s14))))
 (:durative-action do_step15
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (p15)) (at start (s4)) (at start (s19)) (at start (s26)) (at start (s63)) (at start (s77)))
  :effect (and (at start (not (p15))) (at end (step_done ?x)) (at end (s15))))
 (:durative-action do_step16
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p16)) (at start (s10)) (at start (s17)) (at start (s21)) (at start (s42)) (at start (s73)) (at start (s76)))
  :effect (and (at start (not (p16))) (at end (step_done ?x)) (at end (s16))))
 (:durative-action do_step17
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (p17)) (at start (s31)) (at start (s43)) (at start (s58)) (at start (s67)))
  :effect (and (at start (not (p17))) (at end (step_done ?x)) (at end (s17))))
 (:durative-action do_step18
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (at start (p18))
  :effect (and (at start (not (p18))) (at end (step_done ?x)) (at end (s18))))
 (:durative-action do_step19
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (at start (p19))
  :effect (and (at start (not (p19))) (at end (step_done ?x)) (at end (s19))))
 (:durative-action do_step20
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (p20)) (at start (s4)) (at start (s62)))
  :effect (and (at start (not (p20))) (at end (step_done ?x)) (at end (s20))))
 (:durative-action do_step21
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (p21)) (at start (s75)))
  :effect (and (at start (not (p21))) (at end (step_done ?x)) (at end (s21))))
 (:durative-action do_step22
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (p22)) (at start (s3)) (at start (s11)) (at start (s41)) (at start (s66)))
  :effect (and (at start (not (p22))) (at end (step_done ?x)) (at end (s22))))
 (:durative-action do_step23
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (at start (p23))
  :effect (and (at start (not (p23))) (at end (step_done ?x)) (at end (s23))))
 (:durative-action do_step24
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (p24)) (at start (s11)) (at start (s38)))
  :effect (and (at start (not (p24))) (at end (step_done ?x)) (at end (s24))))
 (:durative-action do_step25
  :parameters (?x - step) :duration (= ?duration 7200)
  :condition (and (at start (p25)) (at start (s19)) (at start (s38)) (at start (s39)) (at start (s50)) (at start (s69)))
  :effect (and (at start (not (p25))) (at end (step_done ?x)) (at end (s25))))
 (:durative-action do_step26
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (and (at start (p26)) (at start (s10)) (at start (s51)) (at start (s63)) (at start (s79)))
  :effect (and (at start (not (p26))) (at end (step_done ?x)) (at end (s26))))
 (:durative-action do_step27
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p27)) (at start (s10)) (at start (s63)))
  :effect (and (at start (not (p27))) (at end (step_done ?x)) (at end (s27))))
 (:durative-action do_step28
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (at start (p28))
  :effect (and (at start (not (p28))) (at end (step_done ?x)) (at end (s28))))
 (:durative-action do_step29
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p29)) (at start (s17)) (at start (s49)))
  :effect (and (at start (not (p29))) (at end (step_done ?x)) (at end (s29))))
 (:durative-action do_step30
  :parameters (?x - step) :duration (= ?duration 7200)
  :condition (at start (p30))
  :effect (and (at start (not (p30))) (at end (step_done ?x)) (at end (s30))))
 (:durative-action do_step31
  :parameters (?x - step) :duration (= ?duration 7200)
  :condition (at start (p31))
  :effect (and (at start (not (p31))) (at end (step_done ?x)) (at end (s31))))
 (:durative-action do_step32
  :parameters (?x - step) :duration (= ?duration 10800)
  :condition (and (at start (p32)) (at start (s4)) (at start (s8)) (at start (s36)) (at start (s42)) (at start (s66)))
  :effect (and (at start (not (p32))) (at end (step_done ?x)) (at end (s32))))
 (:durative-action do_step33
  :parameters (?x - step) :duration (= ?duration 2700)
  :condition (and (at start (p33)) (at start (s4)) (at start (s11)) (at start (s30)) (at start (s35)) (at start (s43)))
  :effect (and (at start (not (p33))) (at end (step_done ?x)) (at end (s33))))
 (:durative-action do_step34
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (p34)) (at start (s4)) (at start (s10)) (at start (s31)))
  :effect (and (at start (not (p34))) (at end (step_done ?x)) (at end (s34))))
 (:durative-action do_step35
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p35)) (at start (s64)))
  :effect (and (at start (not (p35))) (at end (step_done ?x)) (at end (s35))))
 (:durative-action do_step36
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p36)) (at start (s17)) (at start (s27)) (at start (s35)) (at start (s51)) (at start (s52)))
  :effect (and (at start (not (p36))) (at end (step_done ?x)) (at end (s36))))
 (:durative-action do_step37
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p37)) (at start (s19)) (at start (s35)) (at start (s38)) (at start (s53)))
  :effect (and (at start (not (p37))) (at end (step_done ?x)) (at end (s37))))
 (:durative-action do_step38
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (p38)) (at start (s30)) (at start (s31)) (at start (s53)) (at start (s64)) (at start (s65)))
  :effect (and (at start (not (p38))) (at end (step_done ?x)) (at end (s38))))
 (:durative-action do_step39
  :parameters (?x - step) :duration (= ?duration 2700)
  :condition (and (at start (p39)) (at start (s4)) (at start (s26)) (at start (s65)))
  :effect (and (at start (not (p39))) (at end (step_done ?x)) (at end (s39))))
 (:durative-action do_step40
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p40)) (at start (s5)) (at start (s9)) (at start (s38)) (at start (s39)) (at start (s53)) (at start (s56)) (at start (s72)))
  :effect (and (at start (not (p40))) (at end (step_done ?x)) (at end (s40))))
 (:durative-action do_step41
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (p41)) (at start (s4)) (at start (s10)) (at start (s54)))
  :effect (and (at start (not (p41))) (at end (step_done ?x)) (at end (s41))))
 (:durative-action do_step42
  :parameters (?x - step) :duration (= ?duration 10800)
  :condition (at start (p42))
  :effect (and (at start (not (p42))) (at end (step_done ?x)) (at end (s42))))
 (:durative-action do_step43
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p43)) (at start (s47)) (at start (s50)) (at start (s65)) (at start (s66)) (at start (s78)))
  :effect (and (at start (not (p43))) (at end (step_done ?x)) (at end (s43))))
 (:durative-action do_step44
  :parameters (?x - step) :duration (= ?duration 2400)
  :condition (and (at start (p44)) (at start (s65)))
  :effect (and (at start (not (p44))) (at end (step_done ?x)) (at end (s44))))
 (:durative-action do_step45
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (p45)) (at start (s4)) (at start (s5)) (at start (s47)) (at start (s65)) (at start (s78)) (at start (s79)))
  :effect (and (at start (not (p45))) (at end (step_done ?x)) (at end (s45))))
 (:durative-action do_step46
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p46)) (at start (s63)) (at start (s65)))
  :effect (and (at start (not (p46))) (at end (step_done ?x)) (at end (s46))))
 (:durative-action do_step47
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p47)) (at start (s35)) (at start (s50)))
  :effect (and (at start (not (p47))) (at end (step_done ?x)) (at end (s47))))
 (:durative-action do_step48
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p48)) (at start (s38)) (at start (s43)))
  :effect (and (at start (not (p48))) (at end (step_done ?x)) (at end (s48))))
 (:durative-action do_step49
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (p49)) (at start (s54)) (at start (s71)))
  :effect (and (at start (not (p49))) (at end (step_done ?x)) (at end (s49))))
 (:durative-action do_step50
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (at start (p50))
  :effect (and (at start (not (p50))) (at end (step_done ?x)) (at end (s50))))
 (:durative-action do_step51
  :parameters (?x - step) :duration (= ?duration 7200)
  :condition (at start (p51))
  :effect (and (at start (not (p51))) (at end (step_done ?x)) (at end (s51))))
 (:durative-action do_step52
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (at start (p52))
  :effect (and (at start (not (p52))) (at end (step_done ?x)) (at end (s52))))
 (:durative-action do_step53
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (at start (p53))
  :effect (and (at start (not (p53))) (at end (step_done ?x)) (at end (s53))))
 (:durative-action do_step54
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (p54)) (at start (s63)))
  :effect (and (at start (not (p54))) (at end (step_done ?x)) (at end (s54))))
 (:durative-action do_step55
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (and (at start (p55)) (at start (s21)) (at start (s63)) (at start (s75)))
  :effect (and (at start (not (p55))) (at end (step_done ?x)) (at end (s55))))
 (:durative-action do_step56
  :parameters (?x - step) :duration (= ?duration 120)
  :condition (and (at start (p56)) (at start (s5)) (at start (s19)) (at start (s49)))
  :effect (and (at start (not (p56))) (at end (step_done ?x)) (at end (s56))))
 (:durative-action do_step57
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (at start (p57))
  :effect (and (at start (not (p57))) (at end (step_done ?x)) (at end (s57))))
 (:durative-action do_step58
  :parameters (?x - step) :duration (= ?duration 14400)
  :condition (at start (p58))
  :effect (and (at start (not (p58))) (at end (step_done ?x)) (at end (s58))))
 (:durative-action do_step59
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p59)) (at start (s11)))
  :effect (and (at start (not (p59))) (at end (step_done ?x)) (at end (s59))))
 (:durative-action do_step60
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (p60)) (at start (s38)))
  :effect (and (at start (not (p60))) (at end (step_done ?x)) (at end (s60))))
 (:durative-action do_step61
  :parameters (?x - step) :duration (= ?duration 2700)
  :condition (and (at start (p61)) (at start (s16)) (at start (s17)) (at start (s29)) (at start (s36)) (at start (s68)))
  :effect (and (at start (not (p61))) (at end (step_done ?x)) (at end (s61))))
 (:durative-action do_step62
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (p62)) (at start (s64)))
  :effect (and (at start (not (p62))) (at end (step_done ?x)) (at end (s62))))
 (:durative-action do_step63
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (at start (p63))
  :effect (and (at start (not (p63))) (at end (step_done ?x)) (at end (s63))))
 (:durative-action do_step64
  :parameters (?x - step) :duration (= ?duration 7200)
  :condition (at start (p64))
  :effect (and (at start (not (p64))) (at end (step_done ?x)) (at end (s64))))
 (:durative-action do_step65
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (p65)) (at start (s11)) (at start (s18)))
  :effect (and (at start (not (p65))) (at end (step_done ?x)) (at end (s65))))
 (:durative-action do_step66
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (at start (p66))
  :effect (and (at start (not (p66))) (at end (step_done ?x)) (at end (s66))))
 (:durative-action do_step67
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (p67)) (at start (s20)) (at start (s35)) (at start (s68)))
  :effect (and (at start (not (p67))) (at end (step_done ?x)) (at end (s67))))
 (:durative-action do_step68
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p68)) (at start (s18)) (at start (s31)) (at start (s79)))
  :effect (and (at start (not (p68))) (at end (step_done ?x)) (at end (s68))))
 (:durative-action do_step69
  :parameters (?x - step) :duration (= ?duration 2700)
  :condition (and (at start (p69)) (at start (s29)) (at start (s39)))
  :effect (and (at start (not (p69))) (at end (step_done ?x)) (at end (s69))))
 (:durative-action do_step70
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (p70)) (at start (s30)))
  :effect (and (at start (not (p70))) (at end (step_done ?x)) (at end (s70))))
 (:durative-action do_step71
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (p71)) (at start (s1)) (at start (s10)) (at start (s17)) (at start (s63)))
  :effect (and (at start (not (p71))) (at end (step_done ?x)) (at end (s71))))
 (:durative-action do_step72
  :parameters (?x - step) :duration (= ?duration 1200)
  :condition (at start (p72))
  :effect (and (at start (not (p72))) (at end (step_done ?x)) (at end (s72))))
 (:durative-action do_step73
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (p73)) (at start (s47)) (at start (s48)) (at start (s55)) (at start (s63)) (at start (s67)) (at start (s70)) (at start (s79)))
  :effect (and (at start (not (p73))) (at end (step_done ?x)) (at end (s73))))
 (:durative-action do_step74
  :parameters (?x - step) :duration (= ?duration 300)
  :condition (and (at start (p74)) (at start (s1)) (at start (s24)) (at start (s49)) (at start (s56)))
  :effect (and (at start (not (p74))) (at end (step_done ?x)) (at end (s74))))
 (:durative-action do_step75
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (p75)) (at start (s13)) (at start (s57)) (at start (s65)) (at start (s77)))
  :effect (and (at start (not (p75))) (at end (step_done ?x)) (at end (s75))))
 (:durative-action do_step76
  :parameters (?x - step) :duration (= ?duration 3600)
  :condition (and (at start (p76)) (at start (s12)) (at start (s19)) (at start (s24)) (at start (s31)) (at start (s33)) (at start (s47)))
  :effect (and (at start (not (p76))) (at end (step_done ?x)) (at end (s76))))
 (:durative-action do_step77
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (p77)) (at start (s42)) (at start (s58)))
  :effect (and (at start (not (p77))) (at end (step_done ?x)) (at end (s77))))
 (:durative-action do_step78
  :parameters (?x - step) :duration (= ?duration 1800)
  :condition (and (at start (p78)) (at start (s27)) (at start (s37)) (at start (s68)))
  :effect (and (at start (not (p78))) (at end (step_done ?x)) (at end (s78))))
 (:durative-action do_step79
  :parameters (?x - step) :duration (= ?duration 600)
  :condition (and (at start (p79)) (at start (s44)) (at start (s72)))
  :effect (and (at start (not (p79))) (at end (step_done ?x)) (at end (s79))))
 (:durative-action do_step80
  :parameters (?x - step) :duration (= ?duration 900)
  :condition (and (at start (p80)) (at start (s10)) (at start (s39)) (at start (s45)) (at start (s63)) (at start (s72)))
  :effect (and (at start (not (p80))) (at end (step_done ?x)) (at end (s80))))
)