(define (domain constellation-piercings)
 (:requirements :typing :durative-actions)
 (:types step s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 - step)
 (:predicates
  (step_pending ?x - step) (step_done ?x - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
  (p61) (p62) (p63) (p64) (p65) (p66) (p67) (p68) (p69) (p70)
  (p71) (p72) (p73) (p74) (p75) (p76) (p77) (p78) (p79) (p80))

 (:durative-action do-step1
  :parameters (?x - s1) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (p49)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p1))))
 (:durative-action do-step2
  :parameters (?x - s2) :duration (= ?duration 1800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p2))))
 (:durative-action do-step3
  :parameters (?x - s3) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?x)) (at start (p9)) (at start (p12)) (at start (p27)) (at start (p28)) (at start (p56)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p3))))
 (:durative-action do-step4
  :parameters (?x - s4) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p1)) (at start (p6)) (at start (p35)) (at start (p46)) (at start (p48)) (at start (p49)) (at start (p56)) (at start (p67)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p4))))
 (:durative-action do-step5
  :parameters (?x - s5) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (p31)) (at start (p59)) (at start (p61)) (at start (p66)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p5))))
 (:durative-action do-step6
  :parameters (?x - s6) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (p21)) (at start (p60)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p6))))
 (:durative-action do-step7
  :parameters (?x - s7) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (p12)) (at start (p18)) (at start (p60)) (at start (p63)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p7))))
 (:durative-action do-step8
  :parameters (?x - s8) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (p9)) (at start (p17)) (at start (p31)) (at start (p44)) (at start (p45)) (at start (p49)) (at start (p54)) (at start (p63)) (at start (p77)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p8))))
 (:durative-action do-step9
  :parameters (?x - s9) :duration (= ?duration 3600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p9))))
 (:durative-action do-step10
  :parameters (?x - s10) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p50)) (at start (p52)) (at start (p61)) (at start (p73)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p10))))
 (:durative-action do-step11
  :parameters (?x - s11) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p3)) (at start (p49)) (at start (p79)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p11))))
 (:durative-action do-step12
  :parameters (?x - s12) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?x)) (at start (p50)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p12))))
 (:durative-action do-step13
  :parameters (?x - s13) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (p26)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p13))))
 (:durative-action do-step14
  :parameters (?x - s14) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (p50)) (at start (p63)) (at start (p70)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p14))))
 (:durative-action do-step15
  :parameters (?x - s15) :duration (= ?duration 1209600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p15))))
 (:durative-action do-step16
  :parameters (?x - s16) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (p26)) (at start (p33)) (at start (p35)) (at start (p79)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p16))))
 (:durative-action do-step17
  :parameters (?x - s17) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (p1)) (at start (p58)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p17))))
 (:durative-action do-step18
  :parameters (?x - s18) :duration (= ?duration 900)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p18))))
 (:durative-action do-step19
  :parameters (?x - s19) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p1)) (at start (p34)) (at start (p47)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p19))))
 (:durative-action do-step20
  :parameters (?x - s20) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p15)) (at start (p44)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p20))))
 (:durative-action do-step21
  :parameters (?x - s21) :duration (= ?duration 3600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p21))))
 (:durative-action do-step22
  :parameters (?x - s22) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (p5)) (at start (p58)) (at start (p61)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p22))))
 (:durative-action do-step23
  :parameters (?x - s23) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (p15)) (at start (p31)) (at start (p46)) (at start (p50)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p23))))
 (:durative-action do-step24
  :parameters (?x - s24) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (p34)) (at start (p47)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p24))))
 (:durative-action do-step25
  :parameters (?x - s25) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p1)) (at start (p9)) (at start (p34)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p25))))
 (:durative-action do-step26
  :parameters (?x - s26) :duration (= ?duration 10800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p26))))
 (:durative-action do-step27
  :parameters (?x - s27) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (p78)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p27))))
 (:durative-action do-step28
  :parameters (?x - s28) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?x)) (at start (p17)) (at start (p20)) (at start (p21)) (at start (p33)) (at start (p49)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p28))))
 (:durative-action do-step29
  :parameters (?x - s29) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (p4)) (at start (p9)) (at start (p19)) (at start (p21)) (at start (p45)) (at start (p48)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p29))))
 (:durative-action do-step30
  :parameters (?x - s30) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p17)) (at start (p18)) (at start (p28)) (at start (p43)) (at start (p55)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p30))))
 (:durative-action do-step31
  :parameters (?x - s31) :duration (= ?duration 172800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p31))))
 (:durative-action do-step32
  :parameters (?x - s32) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (p48)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p32))))
 (:durative-action do-step33
  :parameters (?x - s33) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p18)) (at start (p39)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p33))))
 (:durative-action do-step34
  :parameters (?x - s34) :duration (= ?duration 3600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p34))))
 (:durative-action do-step35
  :parameters (?x - s35) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (p68)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p35))))
 (:durative-action do-step36
  :parameters (?x - s36) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (p43)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p36))))
 (:durative-action do-step37
  :parameters (?x - s37) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p55)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p37))))
 (:durative-action do-step38
  :parameters (?x - s38) :duration (= ?duration 7200)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p38))))
 (:durative-action do-step39
  :parameters (?x - s39) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (p38)) (at start (p49)) (at start (p70)) (at start (p71)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p39))))
 (:durative-action do-step40
  :parameters (?x - s40) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p26)) (at start (p38)) (at start (p55)) (at start (p56)) (at start (p63)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p40))))
 (:durative-action do-step41
  :parameters (?x - s41) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p7)) (at start (p17)) (at start (p22)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p41))))
 (:durative-action do-step42
  :parameters (?x - s42) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (p1)) (at start (p14)) (at start (p16)) (at start (p32)) (at start (p70)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p42))))
 (:durative-action do-step43
  :parameters (?x - s43) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (p26)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p43))))
 (:durative-action do-step44
  :parameters (?x - s44) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p26)) (at start (p37)) (at start (p53)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p44))))
 (:durative-action do-step45
  :parameters (?x - s45) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (p21)) (at start (p53)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p45))))
 (:durative-action do-step46
  :parameters (?x - s46) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?x)) (at start (p6)) (at start (p15)) (at start (p68)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p46))))
 (:durative-action do-step47
  :parameters (?x - s47) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (p43)) (at start (p49)) (at start (p53)) (at start (p64)) (at start (p71)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p47))))
 (:durative-action do-step48
  :parameters (?x - s48) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (p70)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p48))))
 (:durative-action do-step49
  :parameters (?x - s49) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p32)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p49))))
 (:durative-action do-step50
  :parameters (?x - s50) :duration (= ?duration 10800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p50))))
 (:durative-action do-step51
  :parameters (?x - s51) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p3)) (at start (p18)) (at start (p28)) (at start (p50)) (at start (p52)) (at start (p66)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p51))))
 (:durative-action do-step52
  :parameters (?x - s52) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p18)) (at start (p60)) (at start (p71)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p52))))
 (:durative-action do-step53
  :parameters (?x - s53) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p32)) (at start (p71)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p53))))
 (:durative-action do-step54
  :parameters (?x - s54) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (p46)) (at start (p58)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p54))))
 (:durative-action do-step55
  :parameters (?x - s55) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?x)) (at start (p36)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p55))))
 (:durative-action do-step56
  :parameters (?x - s56) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p26)) (at start (p38)) (at start (p59)) (at start (p72)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p56))))
 (:durative-action do-step57
  :parameters (?x - s57) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (p23)) (at start (p26)) (at start (p35)) (at start (p45)) (at start (p58)) (at start (p79)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p57))))
 (:durative-action do-step58
  :parameters (?x - s58) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (p9)) (at start (p55)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p58))))
 (:durative-action do-step59
  :parameters (?x - s59) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p6)) (at start (p34)) (at start (p46)) (at start (p60)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p59))))
 (:durative-action do-step60
  :parameters (?x - s60) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (p21)) (at start (p39)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p60))))
 (:durative-action do-step61
  :parameters (?x - s61) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (p12)) (at start (p21)) (at start (p50)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p61))))
 (:durative-action do-step62
  :parameters (?x - s62) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p78)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p62))))
 (:durative-action do-step63
  :parameters (?x - s63) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (p12)) (at start (p33)) (at start (p58)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p63))))
 (:durative-action do-step64
  :parameters (?x - s64) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?x)) (at start (p13)) (at start (p17)) (at start (p18)) (at start (p45)) (at start (p52)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p64))))
 (:durative-action do-step65
  :parameters (?x - s65) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?x)) (at start (p15)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p65))))
 (:durative-action do-step66
  :parameters (?x - s66) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (p23)) (at start (p27)) (at start (p50)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p66))))
 (:durative-action do-step67
  :parameters (?x - s67) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p12)) (at start (p18)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p67))))
 (:durative-action do-step68
  :parameters (?x - s68) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p71)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p68))))
 (:durative-action do-step69
  :parameters (?x - s69) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (p3)) (at start (p26)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p69))))
 (:durative-action do-step70
  :parameters (?x - s70) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p2)) (at start (p43)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p70))))
 (:durative-action do-step71
  :parameters (?x - s71) :duration (= ?duration 900)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p71))))
 (:durative-action do-step72
  :parameters (?x - s72) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p27)) (at start (p58)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p72))))
 (:durative-action do-step73
  :parameters (?x - s73) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p60)) (at start (p68)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p73))))
 (:durative-action do-step74
  :parameters (?x - s74) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p11)) (at start (p27)) (at start (p29)) (at start (p53)) (at start (p71)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p74))))
 (:durative-action do-step75
  :parameters (?x - s75) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?x)) (at start (p47)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p75))))
 (:durative-action do-step76
  :parameters (?x - s76) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p9)) (at start (p15)) (at start (p25)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p76))))
 (:durative-action do-step77
  :parameters (?x - s77) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (p43)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p77))))
 (:durative-action do-step78
  :parameters (?x - s78) :duration (= ?duration 604800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p78))))
 (:durative-action do-step79
  :parameters (?x - s79) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p38)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p79))))
 (:durative-action do-step80
  :parameters (?x - s80) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (p4)) (at start (p17)) (at start (p26)) (at start (p43)) (at start (p65)) (at start (p76)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (p80))))
)