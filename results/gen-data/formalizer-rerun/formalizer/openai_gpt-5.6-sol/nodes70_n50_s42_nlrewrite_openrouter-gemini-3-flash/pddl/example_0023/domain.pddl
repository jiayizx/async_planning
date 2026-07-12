(define (domain go-to-dance)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step) (is_step5 ?s - step)
    (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step) (is_step10 ?s - step)
    (is_step11 ?s - step) (is_step12 ?s - step) (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step) (is_step25 ?s - step)
    (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (is_step31 ?s - step) (is_step32 ?s - step) (is_step33 ?s - step) (is_step34 ?s - step) (is_step35 ?s - step)
    (is_step36 ?s - step) (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step) (is_step40 ?s - step)
    (is_step41 ?s - step) (is_step42 ?s - step) (is_step43 ?s - step) (is_step44 ?s - step) (is_step45 ?s - step)
    (is_step46 ?s - step) (is_step47 ?s - step) (is_step48 ?s - step) (is_step49 ?s - step) (is_step50 ?s - step)
    (is_step51 ?s - step) (is_step52 ?s - step) (is_step53 ?s - step) (is_step54 ?s - step) (is_step55 ?s - step)
    (is_step56 ?s - step) (is_step57 ?s - step) (is_step58 ?s - step) (is_step59 ?s - step) (is_step60 ?s - step)
    (is_step61 ?s - step) (is_step62 ?s - step) (is_step63 ?s - step) (is_step64 ?s - step) (is_step65 ?s - step)
    (is_step66 ?s - step) (is_step67 ?s - step) (is_step68 ?s - step) (is_step69 ?s - step) (is_step70 ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
    (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
    (p61) (p62) (p63) (p64) (p65) (p66) (p67) (p68) (p69) (p70))

  (:durative-action step1
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (p55)) (at start (p67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
  (:durative-action step2
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (p8)) (at start (p36)) (at start (p52)) (at start (p56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
  (:durative-action step3
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (p12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
  (:durative-action step4
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (p58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
  (:durative-action step5
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (p56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
  (:durative-action step6
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (p25)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
  (:durative-action step7
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (p22)) (at start (p46)) (at start (p50)) (at start (p52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
  (:durative-action step8
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (p12)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
  (:durative-action step9
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (p1)) (at start (p55)) (at start (p67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
  (:durative-action step10
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
  (:durative-action step11
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (p64)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
  (:durative-action step12
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
  (:durative-action step13
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (p16)) (at start (p36)) (at start (p39)) (at start (p51)) (at start (p67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
  (:durative-action step14
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
  (:durative-action step15
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (p7)) (at start (p53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
  (:durative-action step16
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (p12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
  (:durative-action step17
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
  (:durative-action step18
    :parameters (?s - step) :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (p6)) (at start (p9)) (at start (p15)) (at start (p17)) (at start (p52)) (at start (p57)) (at start (p68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
  (:durative-action step19
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (p12)) (at start (p37)) (at start (p51)) (at start (p61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
  (:durative-action step20
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
  (:durative-action step21
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (p7)) (at start (p23)) (at start (p41)) (at start (p60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
  (:durative-action step22
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (p3)) (at start (p37)) (at start (p56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
  (:durative-action step23
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
  (:durative-action step24
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
  (:durative-action step25
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (p3)) (at start (p24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
  (:durative-action step26
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (p21)) (at start (p38)) (at start (p55)) (at start (p57)) (at start (p63)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
  (:durative-action step27
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (p9)) (at start (p11)) (at start (p18)) (at start (p21)) (at start (p22)) (at start (p51)) (at start (p67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
  (:durative-action step28
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (p8)) (at start (p10)) (at start (p43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
  (:durative-action step29
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (p46)) (at start (p48)) (at start (p64)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
  (:durative-action step30
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (p37)) (at start (p70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
  (:durative-action step31
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)) (at start (p70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
  (:durative-action step32
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
  (:durative-action step33
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
  (:durative-action step34
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (p4)) (at start (p13)) (at start (p25)) (at start (p47)) (at start (p49)) (at start (p51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
  (:durative-action step35
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (p5)) (at start (p11)) (at start (p16)) (at start (p26)) (at start (p42)) (at start (p67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
  (:durative-action step36
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (p70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
  (:durative-action step37
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
  (:durative-action step38
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)) (at start (p3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
  (:durative-action step39
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (p42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
  (:durative-action step40
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)) (at start (p17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
  (:durative-action step41
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step41 ?s)) (at start (p12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
  (:durative-action step42
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step42 ?s)) (at start (p3)) (at start (p31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
  (:durative-action step43
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step43 ?s)) (at start (p32)) (at start (p66)) (at start (p67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
  (:durative-action step44
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step44 ?s)) (at start (p11)) (at start (p19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
  (:durative-action step45
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step45 ?s)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
  (:durative-action step46
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step46 ?s)) (at start (p5)) (at start (p22)) (at start (p61)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
  (:durative-action step47
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step47 ?s)) (at start (p15)) (at start (p55)) (at start (p59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
  (:durative-action step48
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step48 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
  (:durative-action step49
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step49 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
  (:durative-action step50
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step50 ?s)) (at start (p11)) (at start (p32)) (at start (p70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
  (:durative-action step51
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step51 ?s)) (at start (p5)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p51))))
  (:durative-action step52
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step52 ?s)) (at start (p30)) (at start (p50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p52))))
  (:durative-action step53
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step53 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p53))))
  (:durative-action step54
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step54 ?s)) (at start (p6)) (at start (p67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p54))))
  (:durative-action step55
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step55 ?s)) (at start (p3)) (at start (p4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p55))))
  (:durative-action step56
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step56 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p56))))
  (:durative-action step57
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step57 ?s)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p57))))
  (:durative-action step58
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step58 ?s)) (at start (p64)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p58))))
  (:durative-action step59
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step59 ?s)) (at start (p51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p59))))
  (:durative-action step60
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step60 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p60))))
  (:durative-action step61
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step61 ?s)) (at start (p10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p61))))
  (:durative-action step62
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step62 ?s)) (at start (p8)) (at start (p34)) (at start (p47)) (at start (p50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p62))))
  (:durative-action step63
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step63 ?s)) (at start (p22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p63))))
  (:durative-action step64
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step64 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p64))))
  (:durative-action step65
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step65 ?s)) (at start (p64)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p65))))
  (:durative-action step66
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step66 ?s)) (at start (p42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p66))))
  (:durative-action step67
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step67 ?s)) (at start (p3)) (at start (p16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p67))))
  (:durative-action step68
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step68 ?s)) (at start (p14)) (at start (p32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p68))))
  (:durative-action step69
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step69 ?s)) (at start (p11)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p69))))
  (:durative-action step70
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step70 ?s)) (at start (p20)) (at start (p60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p70))))
)