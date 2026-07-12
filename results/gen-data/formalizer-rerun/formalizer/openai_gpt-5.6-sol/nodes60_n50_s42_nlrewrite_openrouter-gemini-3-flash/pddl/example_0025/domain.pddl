(define (domain custard-apple-storage)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (r1 ?s - step) (r2 ?s - step) (r3 ?s - step) (r4 ?s - step) (r5 ?s - step)
  (r6 ?s - step) (r7 ?s - step) (r8 ?s - step) (r9 ?s - step) (r10 ?s - step)
  (r11 ?s - step) (r12 ?s - step) (r13 ?s - step) (r14 ?s - step) (r15 ?s - step)
  (r16 ?s - step) (r17 ?s - step) (r18 ?s - step) (r19 ?s - step) (r20 ?s - step)
  (r21 ?s - step) (r22 ?s - step) (r23 ?s - step) (r24 ?s - step) (r25 ?s - step)
  (r26 ?s - step) (r27 ?s - step) (r28 ?s - step) (r29 ?s - step) (r30 ?s - step)
  (r31 ?s - step) (r32 ?s - step) (r33 ?s - step) (r34 ?s - step) (r35 ?s - step)
  (r36 ?s - step) (r37 ?s - step) (r38 ?s - step) (r39 ?s - step) (r40 ?s - step)
  (r41 ?s - step) (r42 ?s - step) (r43 ?s - step) (r44 ?s - step) (r45 ?s - step)
  (r46 ?s - step) (r47 ?s - step) (r48 ?s - step) (r49 ?s - step) (r50 ?s - step)
  (r51 ?s - step) (r52 ?s - step) (r53 ?s - step) (r54 ?s - step) (r55 ?s - step)
  (r56 ?s - step) (r57 ?s - step) (r58 ?s - step) (r59 ?s - step) (r60 ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60))

 (:durative-action step1
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (r1 ?s)) (at start (p16)) (at start (p17)) (at start (p34)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
 (:durative-action step2
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r2 ?s)) (at start (p25)) (at start (p42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
 (:durative-action step3
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (r3 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
 (:durative-action step4
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r4 ?s)) (at start (p2)) (at start (p9)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
 (:durative-action step5
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r5 ?s)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
 (:durative-action step6
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r6 ?s)) (at start (p5)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
 (:durative-action step7
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (r7 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
 (:durative-action step8
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r8 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
 (:durative-action step9
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r9 ?s)) (at start (p26)) (at start (p46)) (at start (p49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
 (:durative-action step10
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (r10 ?s)) (at start (p53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
 (:durative-action step11
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (r11 ?s)) (at start (p17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
 (:durative-action step12
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r12 ?s)) (at start (p10)) (at start (p40)) (at start (p52)) (at start (p54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
 (:durative-action step13
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (r13 ?s)) (at start (p5)) (at start (p6)) (at start (p22)) (at start (p23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
 (:durative-action step14
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r14 ?s)) (at start (p20)) (at start (p52)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
 (:durative-action step15
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r15 ?s)) (at start (p9)) (at start (p14)) (at start (p36)) (at start (p55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
 (:durative-action step16
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r16 ?s)) (at start (p22)) (at start (p30)) (at start (p47)) (at start (p48)) (at start (p53)) (at start (p55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
 (:durative-action step17
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r17 ?s)) (at start (p25)) (at start (p53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
 (:durative-action step18
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r18 ?s)) (at start (p21)) (at start (p27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
 (:durative-action step19
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (r19 ?s)) (at start (p4)) (at start (p23)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
 (:durative-action step20
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (r20 ?s)) (at start (p4)) (at start (p9)) (at start (p24)) (at start (p34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
 (:durative-action step21
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (r21 ?s)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
 (:durative-action step22
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r22 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
 (:durative-action step23
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (r23 ?s)) (at start (p3)) (at start (p43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
 (:durative-action step24
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r24 ?s)) (at start (p7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
 (:durative-action step25
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r25 ?s)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
 (:durative-action step26
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r26 ?s)) (at start (p34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
 (:durative-action step27
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (r27 ?s)) (at start (p56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
 (:durative-action step28
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r28 ?s)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
 (:durative-action step29
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r29 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
 (:durative-action step30
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r30 ?s)) (at start (p8)) (at start (p28)) (at start (p42)) (at start (p57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
 (:durative-action step31
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r31 ?s)) (at start (p11)) (at start (p19)) (at start (p60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
 (:durative-action step32
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (r32 ?s)) (at start (p1)) (at start (p2)) (at start (p17)) (at start (p19)) (at start (p20)) (at start (p22)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
 (:durative-action step33
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r33 ?s)) (at start (p54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
 (:durative-action step34
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r34 ?s)) (at start (p22)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
 (:durative-action step35
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (r35 ?s)) (at start (p28)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
 (:durative-action step36
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (r36 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
 (:durative-action step37
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r37 ?s)) (at start (p13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
 (:durative-action step38
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r38 ?s)) (at start (p22)) (at start (p32)) (at start (p36)) (at start (p39)) (at start (p57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
 (:durative-action step39
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r39 ?s)) (at start (p43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
 (:durative-action step40
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r40 ?s)) (at start (p8)) (at start (p43)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
 (:durative-action step41
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (r41 ?s)) (at start (p17)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
 (:durative-action step42
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (r42 ?s)) (at start (p7)) (at start (p11)) (at start (p12)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
 (:durative-action step43
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (r43 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
 (:durative-action step44
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r44 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
 (:durative-action step45
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r45 ?s)) (at start (p49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
 (:durative-action step46
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r46 ?s)) (at start (p7)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
 (:durative-action step47
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r47 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
 (:durative-action step48
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r48 ?s)) (at start (p9)) (at start (p13)) (at start (p56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
 (:durative-action step49
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r49 ?s)) (at start (p7)) (at start (p28)) (at start (p29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
 (:durative-action step50
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (r50 ?s)) (at start (p44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
 (:durative-action step51
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r51 ?s)) (at start (p27)) (at start (p37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p51))))
 (:durative-action step52
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (r52 ?s)) (at start (p47)) (at start (p53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p52))))
 (:durative-action step53
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (r53 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p53))))
 (:durative-action step54
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r54 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p54))))
 (:durative-action step55
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (r55 ?s)) (at start (p6)) (at start (p27)) (at start (p43)) (at start (p52)) (at start (p53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p55))))
 (:durative-action step56
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r56 ?s)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p56))))
 (:durative-action step57
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (r57 ?s)) (at start (p56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p57))))
 (:durative-action step58
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (r58 ?s)) (at start (p5)) (at start (p23)) (at start (p36)) (at start (p51)) (at start (p60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p58))))
 (:durative-action step59
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (r59 ?s)) (at start (p54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p59))))
 (:durative-action step60
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (r60 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p60))))
)