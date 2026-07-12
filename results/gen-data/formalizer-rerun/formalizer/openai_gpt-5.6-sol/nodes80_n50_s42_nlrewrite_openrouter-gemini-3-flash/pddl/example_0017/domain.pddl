(define (domain pro-basketball)
 (:requirements :typing :durative-actions)
 (:types step - object
  s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20
  s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40
  s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60
  s61 s62 s63 s64 s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
  (p61) (p62) (p63) (p64) (p65) (p66) (p67) (p68) (p69) (p70)
  (p71) (p72) (p73) (p74) (p75) (p76) (p77) (p78) (p79) (p80))

 (:durative-action do-step1
  :parameters (?s - s1) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p20)) (at start (p43)) (at start (p59)) (at start (p74)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
 (:durative-action do-step2
  :parameters (?s - s2) :duration (= ?duration 28800)
  :condition (and (at start (step_pending ?s)) (at start (p21)) (at start (p22)) (at start (p33)) (at start (p38)) (at start (p54)) (at start (p61)) (at start (p65)) (at start (p68)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
 (:durative-action do-step3
  :parameters (?s - s3) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p23)) (at start (p70)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
 (:durative-action do-step4
  :parameters (?s - s4) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (p45)) (at start (p57)) (at start (p67)) (at start (p77)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
 (:durative-action do-step5
  :parameters (?s - s5) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
 (:durative-action do-step6
  :parameters (?s - s6) :duration (= ?duration 604800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
 (:durative-action do-step7
  :parameters (?s - s7) :duration (= ?duration 259200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
 (:durative-action do-step8
  :parameters (?s - s8) :duration (= ?duration 31536000)
  :condition (and (at start (step_pending ?s)) (at start (p7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
 (:durative-action do-step9
  :parameters (?s - s9) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
 (:durative-action do-step10
  :parameters (?s - s10) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p34)) (at start (p53)) (at start (p76)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
 (:durative-action do-step11
  :parameters (?s - s11) :duration (= ?duration 2592000)
  :condition (and (at start (step_pending ?s)) (at start (p15)) (at start (p19)) (at start (p39)) (at start (p51)) (at start (p72)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
 (:durative-action do-step12
  :parameters (?s - s12) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (p59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
 (:durative-action do-step13
  :parameters (?s - s13) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p17)) (at start (p45)) (at start (p48)) (at start (p78)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
 (:durative-action do-step14
  :parameters (?s - s14) :duration (= ?duration 18000)
  :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p17)) (at start (p57)) (at start (p61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
 (:durative-action do-step15
  :parameters (?s - s15) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p19)) (at start (p31)) (at start (p50)) (at start (p67)) (at start (p70)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
 (:durative-action do-step16
  :parameters (?s - s16) :duration (= ?duration 259200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
 (:durative-action do-step17
  :parameters (?s - s17) :duration (= ?duration 36000)
  :condition (and (at start (step_pending ?s)) (at start (p18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
 (:durative-action do-step18
  :parameters (?s - s18) :duration (= ?duration 126144000)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
 (:durative-action do-step19
  :parameters (?s - s19) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (p3)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
 (:durative-action do-step20
  :parameters (?s - s20) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p15)) (at start (p18)) (at start (p37)) (at start (p49)) (at start (p64)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
 (:durative-action do-step21
  :parameters (?s - s21) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
 (:durative-action do-step22
  :parameters (?s - s22) :duration (= ?duration 345600)
  :condition (and (at start (step_pending ?s)) (at start (p34)) (at start (p36)) (at start (p46)) (at start (p53)) (at start (p63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
 (:durative-action do-step23
  :parameters (?s - s23) :duration (= ?duration 7776000)
  :condition (and (at start (step_pending ?s)) (at start (p18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
 (:durative-action do-step24
  :parameters (?s - s24) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (p41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
 (:durative-action do-step25
  :parameters (?s - s25) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (p47)) (at start (p68)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
 (:durative-action do-step26
  :parameters (?s - s26) :duration (= ?duration 432000)
  :condition (and (at start (step_pending ?s)) (at start (p36)) (at start (p55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
 (:durative-action do-step27
  :parameters (?s - s27) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (p29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
 (:durative-action do-step28
  :parameters (?s - s28) :duration (= ?duration 5184000)
  :condition (and (at start (step_pending ?s)) (at start (p11)) (at start (p24)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
 (:durative-action do-step29
  :parameters (?s - s29) :duration (= ?duration 7776000)
  :condition (and (at start (step_pending ?s)) (at start (p59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
 (:durative-action do-step30
  :parameters (?s - s30) :duration (= ?duration 10368000)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
 (:durative-action do-step31
  :parameters (?s - s31) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (p29)) (at start (p62)) (at start (p78)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
 (:durative-action do-step32
  :parameters (?s - s32) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
 (:durative-action do-step33
  :parameters (?s - s33) :duration (= ?duration 432000)
  :condition (and (at start (step_pending ?s)) (at start (p45)) (at start (p76)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
 (:durative-action do-step34
  :parameters (?s - s34) :duration (= ?duration 21600)
  :condition (and (at start (step_pending ?s)) (at start (p27)) (at start (p31)) (at start (p62)) (at start (p74)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
 (:durative-action do-step35
  :parameters (?s - s35) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (p16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
 (:durative-action do-step36
  :parameters (?s - s36) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p73)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
 (:durative-action do-step37
  :parameters (?s - s37) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (p65)) (at start (p76)) (at start (p78)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
 (:durative-action do-step38
  :parameters (?s - s38) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
 (:durative-action do-step39
  :parameters (?s - s39) :duration (= ?duration 345600)
  :condition (and (at start (step_pending ?s)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
 (:durative-action do-step40
  :parameters (?s - s40) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (p58)) (at start (p73)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
 (:durative-action do-step41
  :parameters (?s - s41) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p16)) (at start (p71)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
 (:durative-action do-step42
  :parameters (?s - s42) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p37)) (at start (p49)) (at start (p73)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
 (:durative-action do-step43
  :parameters (?s - s43) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p9)) (at start (p18)) (at start (p49)) (at start (p56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
 (:durative-action do-step44
  :parameters (?s - s44) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (p38)) (at start (p46)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
 (:durative-action do-step45
  :parameters (?s - s45) :duration (= ?duration 15552000)
  :condition (and (at start (step_pending ?s)) (at start (p67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
 (:durative-action do-step46
  :parameters (?s - s46) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (p70)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
 (:durative-action do-step47
  :parameters (?s - s47) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
 (:durative-action do-step48
  :parameters (?s - s48) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (p19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
 (:durative-action do-step49
  :parameters (?s - s49) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p31)) (at start (p65)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
 (:durative-action do-step50
  :parameters (?s - s50) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (p14)) (at start (p18)) (at start (p33)) (at start (p37)) (at start (p69)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
 (:durative-action do-step51
  :parameters (?s - s51) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p45)) (at start (p60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p51))))
 (:durative-action do-step52
  :parameters (?s - s52) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p22)) (at start (p41)) (at start (p62)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p52))))
 (:durative-action do-step53
  :parameters (?s - s53) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p68)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p53))))
 (:durative-action do-step54
  :parameters (?s - s54) :duration (= ?duration 18000)
  :condition (and (at start (step_pending ?s)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p54))))
 (:durative-action do-step55
  :parameters (?s - s55) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (p31)) (at start (p45)) (at start (p48)) (at start (p54)) (at start (p61)) (at start (p62)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p55))))
 (:durative-action do-step56
  :parameters (?s - s56) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p14)) (at start (p22)) (at start (p53)) (at start (p58)) (at start (p69)) (at start (p74)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p56))))
 (:durative-action do-step57
  :parameters (?s - s57) :duration (= ?duration 604800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p57))))
 (:durative-action do-step58
  :parameters (?s - s58) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p58))))
 (:durative-action do-step59
  :parameters (?s - s59) :duration (= ?duration 157680000)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p59))))
 (:durative-action do-step60
  :parameters (?s - s60) :duration (= ?duration 15552000)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p60))))
 (:durative-action do-step61
  :parameters (?s - s61) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (p62)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p61))))
 (:durative-action do-step62
  :parameters (?s - s62) :duration (= ?duration 604800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p62))))
 (:durative-action do-step63
  :parameters (?s - s63) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (p68)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p63))))
 (:durative-action do-step64
  :parameters (?s - s64) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p49)) (at start (p76)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p64))))
 (:durative-action do-step65
  :parameters (?s - s65) :duration (= ?duration 1814400)
  :condition (and (at start (step_pending ?s)) (at start (p19)) (at start (p35)) (at start (p44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p65))))
 (:durative-action do-step66
  :parameters (?s - s66) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p57)) (at start (p76)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p66))))
 (:durative-action do-step67
  :parameters (?s - s67) :duration (= ?duration 63072000)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p67))))
 (:durative-action do-step68
  :parameters (?s - s68) :duration (= ?duration 86400)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p68))))
 (:durative-action do-step69
  :parameters (?s - s69) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (p3)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p69))))
 (:durative-action do-step70
  :parameters (?s - s70) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (p67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p70))))
 (:durative-action do-step71
  :parameters (?s - s71) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p48)) (at start (p70)) (at start (p78)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p71))))
 (:durative-action do-step72
  :parameters (?s - s72) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p31)) (at start (p41)) (at start (p49)) (at start (p67)) (at start (p70)) (at start (p74)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p72))))
 (:durative-action do-step73
  :parameters (?s - s73) :duration (= ?duration 172800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p73))))
 (:durative-action do-step74
  :parameters (?s - s74) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (p39)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p74))))
 (:durative-action do-step75
  :parameters (?s - s75) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p23)) (at start (p30)) (at start (p61)) (at start (p74)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p75))))
 (:durative-action do-step76
  :parameters (?s - s76) :duration (= ?duration 259200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p76))))
 (:durative-action do-step77
  :parameters (?s - s77) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p77))))
 (:durative-action do-step78
  :parameters (?s - s78) :duration (= ?duration 21600)
  :condition (and (at start (step_pending ?s)) (at start (p38)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p78))))
 (:durative-action do-step79
  :parameters (?s - s79) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p11)) (at start (p25)) (at start (p33)) (at start (p40)) (at start (p49)) (at start (p63)) (at start (p64)) (at start (p75)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p79))))
 (:durative-action do-step80
  :parameters (?s - s80) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p38)) (at start (p57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p80))))
)