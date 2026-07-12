(define (domain optimistic-world)
(:requirements :durative-actions :typing)
(:types
 step
 step1-type step2-type step3-type step4-type step5-type step6-type step7-type step8-type step9-type step10-type
 step11-type step12-type step13-type step14-type step15-type step16-type step17-type step18-type step19-type step20-type
 step21-type step22-type step23-type step24-type step25-type step26-type step27-type step28-type step29-type step30-type
 step31-type step32-type step33-type step34-type step35-type step36-type step37-type step38-type step39-type step40-type
 step41-type step42-type step43-type step44-type step45-type step46-type step47-type step48-type step49-type step50-type
 step51-type step52-type step53-type step54-type step55-type step56-type step57-type step58-type step59-type step60-type - step)
(:predicates
 (step_pending ?s - step)
 (step_done ?s - step)
 (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
 (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
 (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
 (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
 (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
 (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60))

(:durative-action do_step1
 :parameters (?s - step1-type)
 :duration (= ?duration 900)
 :condition (and (at start (step_pending ?s)) (at start (p10)) (at start (p20)) (at start (p33)) (at start (p35)) (at start (p50)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
(:durative-action do_step2
 :parameters (?s - step2-type)
 :duration (= ?duration 3600)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
(:durative-action do_step3
 :parameters (?s - step3-type)
 :duration (= ?duration 7200)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
(:durative-action do_step4
 :parameters (?s - step4-type)
 :duration (= ?duration 600)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
(:durative-action do_step5
 :parameters (?s - step5-type)
 :duration (= ?duration 1200)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
(:durative-action do_step6
 :parameters (?s - step6-type)
 :duration (= ?duration 300)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
(:durative-action do_step7
 :parameters (?s - step7-type)
 :duration (= ?duration 1800)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
(:durative-action do_step8
 :parameters (?s - step8-type)
 :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?s)) (at start (p23)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
(:durative-action do_step9
 :parameters (?s - step9-type)
 :duration (= ?duration 604800)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
(:durative-action do_step10
 :parameters (?s - step10-type)
 :duration (= ?duration 2700)
 :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p14)) (at start (p22)) (at start (p56)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
(:durative-action do_step11
 :parameters (?s - step11-type)
 :duration (= ?duration 14400)
 :condition (and (at start (step_pending ?s)) (at start (p34)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
(:durative-action do_step12
 :parameters (?s - step12-type)
 :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?s)) (at start (p50)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
(:durative-action do_step13
 :parameters (?s - step13-type)
 :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?s)) (at start (p31)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
(:durative-action do_step14
 :parameters (?s - step14-type)
 :duration (= ?duration 14400)
 :condition (and (at start (step_pending ?s)) (at start (p47)) (at start (p60)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
(:durative-action do_step15
 :parameters (?s - step15-type)
 :duration (= ?duration 3600)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
(:durative-action do_step16
 :parameters (?s - step16-type)
 :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?s)) (at start (p26)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
(:durative-action do_step17
 :parameters (?s - step17-type)
 :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?s)) (at start (p9)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
(:durative-action do_step18
 :parameters (?s - step18-type)
 :duration (= ?duration 300)
 :condition (and (at start (step_pending ?s)) (at start (p36)) (at start (p55)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
(:durative-action do_step19
 :parameters (?s - step19-type)
 :duration (= ?duration 604800)
 :condition (and (at start (step_pending ?s)) (at start (p14)) (at start (p26)) (at start (p35)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
(:durative-action do_step20
 :parameters (?s - step20-type)
 :duration (= ?duration 604800)
 :condition (and (at start (step_pending ?s)) (at start (p30)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
(:durative-action do_step21
 :parameters (?s - step21-type)
 :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?s)) (at start (p14)) (at start (p18)) (at start (p32)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
(:durative-action do_step22
 :parameters (?s - step22-type)
 :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p31)) (at start (p48)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
(:durative-action do_step23
 :parameters (?s - step23-type)
 :duration (= ?duration 5400)
 :condition (and (at start (step_pending ?s)) (at start (p48)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
(:durative-action do_step24
 :parameters (?s - step24-type)
 :duration (= ?duration 600)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
(:durative-action do_step25
 :parameters (?s - step25-type)
 :duration (= ?duration 120)
 :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p17)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
(:durative-action do_step26
 :parameters (?s - step26-type)
 :duration (= ?duration 10800)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
(:durative-action do_step27
 :parameters (?s - step27-type)
 :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p40)) (at start (p58)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
(:durative-action do_step28
 :parameters (?s - step28-type)
 :duration (= ?duration 18000)
 :condition (and (at start (step_pending ?s)) (at start (p14)) (at start (p53)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
(:durative-action do_step29
 :parameters (?s - step29-type)
 :duration (= ?duration 60)
 :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p43)) (at start (p44)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
(:durative-action do_step30
 :parameters (?s - step30-type)
 :duration (= ?duration 900)
 :condition (and (at start (step_pending ?s)) (at start (p26)) (at start (p38)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
(:durative-action do_step31
 :parameters (?s - step31-type)
 :duration (= ?duration 10800)
 :condition (and (at start (step_pending ?s)) (at start (p40)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
(:durative-action do_step32
 :parameters (?s - step32-type)
 :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?s)) (at start (p15)) (at start (p47)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
(:durative-action do_step33
 :parameters (?s - step33-type)
 :duration (= ?duration 10800)
 :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p35)) (at start (p60)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
(:durative-action do_step34
 :parameters (?s - step34-type)
 :duration (= ?duration 864000)
 :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p5)) (at start (p35)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
(:durative-action do_step35
 :parameters (?s - step35-type)
 :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?s)) (at start (p38)) (at start (p48)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
(:durative-action do_step36
 :parameters (?s - step36-type)
 :duration (= ?duration 7200)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
(:durative-action do_step37
 :parameters (?s - step37-type)
 :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p28)) (at start (p46)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
(:durative-action do_step38
 :parameters (?s - step38-type)
 :duration (= ?duration 2700)
 :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p47)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
(:durative-action do_step39
 :parameters (?s - step39-type)
 :duration (= ?duration 900)
 :condition (and (at start (step_pending ?s)) (at start (p2)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
(:durative-action do_step40
 :parameters (?s - step40-type)
 :duration (= ?duration 600)
 :condition (and (at start (step_pending ?s)) (at start (p41)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
(:durative-action do_step41
 :parameters (?s - step41-type)
 :duration (= ?duration 3600)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
(:durative-action do_step42
 :parameters (?s - step42-type)
 :duration (= ?duration 10800)
 :condition (and (at start (step_pending ?s)) (at start (p23)) (at start (p46)) (at start (p57)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
(:durative-action do_step43
 :parameters (?s - step43-type)
 :duration (= ?duration 86400)
 :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p23)) (at start (p36)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
(:durative-action do_step44
 :parameters (?s - step44-type)
 :duration (= ?duration 5400)
 :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p46)) (at start (p53)) (at start (p54)) (at start (p59)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
(:durative-action do_step45
 :parameters (?s - step45-type)
 :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?s)) (at start (p60)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
(:durative-action do_step46
 :parameters (?s - step46-type)
 :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?s)) (at start (p14)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
(:durative-action do_step47
 :parameters (?s - step47-type)
 :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?s)) (at start (p24)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
(:durative-action do_step48
 :parameters (?s - step48-type)
 :duration (= ?duration 1200)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
(:durative-action do_step49
 :parameters (?s - step49-type)
 :duration (= ?duration 900)
 :condition (and (at start (step_pending ?s)) (at start (p18)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
(:durative-action do_step50
 :parameters (?s - step50-type)
 :duration (= ?duration 600)
 :condition (and (at start (step_pending ?s)) (at start (p16)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
(:durative-action do_step51
 :parameters (?s - step51-type)
 :duration (= ?duration 1200)
 :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p30)) (at start (p35)) (at start (p46)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p51))))
(:durative-action do_step52
 :parameters (?s - step52-type)
 :duration (= ?duration 900)
 :condition (and (at start (step_pending ?s)) (at start (p36)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p52))))
(:durative-action do_step53
 :parameters (?s - step53-type)
 :duration (= ?duration 900)
 :condition (and (at start (step_pending ?s)) (at start (p5)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p53))))
(:durative-action do_step54
 :parameters (?s - step54-type)
 :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?s)) (at start (p57)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p54))))
(:durative-action do_step55
 :parameters (?s - step55-type)
 :duration (= ?duration 3600)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p55))))
(:durative-action do_step56
 :parameters (?s - step56-type)
 :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?s)) (at start (p55)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p56))))
(:durative-action do_step57
 :parameters (?s - step57-type)
 :duration (= ?duration 10800)
 :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p53)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p57))))
(:durative-action do_step58
 :parameters (?s - step58-type)
 :duration (= ?duration 300)
 :condition (and (at start (step_pending ?s)) (at start (p11)) (at start (p26)) (at start (p35)) (at start (p43)) (at start (p55)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p58))))
(:durative-action do_step59
 :parameters (?s - step59-type)
 :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?s)) (at start (p4)))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p59))))
(:durative-action do_step60
 :parameters (?s - step60-type)
 :duration (= ?duration 600)
 :condition (at start (step_pending ?s))
 :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p60))))
)