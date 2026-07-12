(define (domain love-story)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step)
  (step_done ?s - step)
  (for_step1 ?s - step) (for_step2 ?s - step) (for_step3 ?s - step) (for_step4 ?s - step) (for_step5 ?s - step)
  (for_step6 ?s - step) (for_step7 ?s - step) (for_step8 ?s - step) (for_step9 ?s - step) (for_step10 ?s - step)
  (for_step11 ?s - step) (for_step12 ?s - step) (for_step13 ?s - step) (for_step14 ?s - step) (for_step15 ?s - step)
  (for_step16 ?s - step) (for_step17 ?s - step) (for_step18 ?s - step) (for_step19 ?s - step) (for_step20 ?s - step)
  (for_step21 ?s - step) (for_step22 ?s - step) (for_step23 ?s - step) (for_step24 ?s - step) (for_step25 ?s - step)
  (for_step26 ?s - step) (for_step27 ?s - step) (for_step28 ?s - step) (for_step29 ?s - step) (for_step30 ?s - step)
  (for_step31 ?s - step) (for_step32 ?s - step) (for_step33 ?s - step) (for_step34 ?s - step) (for_step35 ?s - step)
  (for_step36 ?s - step) (for_step37 ?s - step) (for_step38 ?s - step) (for_step39 ?s - step) (for_step40 ?s - step)
  (for_step41 ?s - step) (for_step42 ?s - step) (for_step43 ?s - step) (for_step44 ?s - step) (for_step45 ?s - step)
  (for_step46 ?s - step) (for_step47 ?s - step) (for_step48 ?s - step) (for_step49 ?s - step) (for_step50 ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  (love_story_started))

 (:durative-action do_step1
  :parameters (?s - step)
  :duration (= ?duration 172800)
  :condition (and (at start (for_step1 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))

 (:durative-action do_step2
  :parameters (?s - step)
  :duration (= ?duration 10800)
  :condition (and (at start (for_step2 ?s)) (at start (step_pending ?s)) (at start (p1)) (at start (p10)) (at start (p13)) (at start (p16)) (at start (p27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))

 (:durative-action do_step3
  :parameters (?s - step)
  :duration (= ?duration 3600)
  :condition (and (at start (for_step3 ?s)) (at start (step_pending ?s)) (at start (p12)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))

 (:durative-action do_step4
  :parameters (?s - step)
  :duration (= ?duration 1814400)
  :condition (and (at start (for_step4 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))

 (:durative-action do_step5
  :parameters (?s - step)
  :duration (= ?duration 1200)
  :condition (and (at start (for_step5 ?s)) (at start (step_pending ?s)) (at start (p18)) (at start (p28)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))

 (:durative-action do_step6
  :parameters (?s - step)
  :duration (= ?duration 1800)
  :condition (and (at start (for_step6 ?s)) (at start (step_pending ?s)) (at start (p18)) (at start (p23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))

 (:durative-action do_step7
  :parameters (?s - step)
  :duration (= ?duration 900)
  :condition (and (at start (for_step7 ?s)) (at start (step_pending ?s)) (at start (p14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))

 (:durative-action do_step8
  :parameters (?s - step)
  :duration (= ?duration 600)
  :condition (and (at start (for_step8 ?s)) (at start (step_pending ?s)) (at start (p1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))

 (:durative-action do_step9
  :parameters (?s - step)
  :duration (= ?duration 120)
  :condition (and (at start (for_step9 ?s)) (at start (step_pending ?s)) (at start (p30)) (at start (p47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9)) (at end (love_story_started))))

 (:durative-action do_step10
  :parameters (?s - step)
  :duration (= ?duration 86400)
  :condition (and (at start (for_step10 ?s)) (at start (step_pending ?s)) (at start (p26)) (at start (p32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))

 (:durative-action do_step11
  :parameters (?s - step)
  :duration (= ?duration 3600)
  :condition (and (at start (for_step11 ?s)) (at start (step_pending ?s)) (at start (p1)) (at start (p13)) (at start (p18)) (at start (p23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))

 (:durative-action do_step12
  :parameters (?s - step)
  :duration (= ?duration 300)
  :condition (and (at start (for_step12 ?s)) (at start (step_pending ?s)) (at start (p13)) (at start (p24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))

 (:durative-action do_step13
  :parameters (?s - step)
  :duration (= ?duration 14400)
  :condition (and (at start (for_step13 ?s)) (at start (step_pending ?s)) (at start (p19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))

 (:durative-action do_step14
  :parameters (?s - step)
  :duration (= ?duration 300)
  :condition (and (at start (for_step14 ?s)) (at start (step_pending ?s)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))

 (:durative-action do_step15
  :parameters (?s - step)
  :duration (= ?duration 900)
  :condition (and (at start (for_step15 ?s)) (at start (step_pending ?s)) (at start (p25)) (at start (p37)) (at start (p41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))

 (:durative-action do_step16
  :parameters (?s - step)
  :duration (= ?duration 600)
  :condition (and (at start (for_step16 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))

 (:durative-action do_step17
  :parameters (?s - step)
  :duration (= ?duration 1800)
  :condition (and (at start (for_step17 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))

 (:durative-action do_step18
  :parameters (?s - step)
  :duration (= ?duration 1200)
  :condition (and (at start (for_step18 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))

 (:durative-action do_step19
  :parameters (?s - step)
  :duration (= ?duration 3600)
  :condition (and (at start (for_step19 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))

 (:durative-action do_step20
  :parameters (?s - step)
  :duration (= ?duration 1200)
  :condition (and (at start (for_step20 ?s)) (at start (step_pending ?s)) (at start (p13)) (at start (p21)) (at start (p45)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))

 (:durative-action do_step21
  :parameters (?s - step)
  :duration (= ?duration 1800)
  :condition (and (at start (for_step21 ?s)) (at start (step_pending ?s)) (at start (p4)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))

 (:durative-action do_step22
  :parameters (?s - step)
  :duration (= ?duration 300)
  :condition (and (at start (for_step22 ?s)) (at start (step_pending ?s)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))

 (:durative-action do_step23
  :parameters (?s - step)
  :duration (= ?duration 1200)
  :condition (and (at start (for_step23 ?s)) (at start (step_pending ?s)) (at start (p25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))

 (:durative-action do_step24
  :parameters (?s - step)
  :duration (= ?duration 7200)
  :condition (and (at start (for_step24 ?s)) (at start (step_pending ?s)) (at start (p29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))

 (:durative-action do_step25
  :parameters (?s - step)
  :duration (= ?duration 3600)
  :condition (and (at start (for_step25 ?s)) (at start (step_pending ?s)) (at start (p1)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))

 (:durative-action do_step26
  :parameters (?s - step)
  :duration (= ?duration 300)
  :condition (and (at start (for_step26 ?s)) (at start (step_pending ?s)) (at start (p44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))

 (:durative-action do_step27
  :parameters (?s - step)
  :duration (= ?duration 900)
  :condition (and (at start (for_step27 ?s)) (at start (step_pending ?s)) (at start (p16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))

 (:durative-action do_step28
  :parameters (?s - step)
  :duration (= ?duration 300)
  :condition (and (at start (for_step28 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))

 (:durative-action do_step29
  :parameters (?s - step)
  :duration (= ?duration 1800)
  :condition (and (at start (for_step29 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))

 (:durative-action do_step30
  :parameters (?s - step)
  :duration (= ?duration 10)
  :condition (and (at start (for_step30 ?s)) (at start (step_pending ?s)) (at start (p17)) (at start (p18)) (at start (p42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))

 (:durative-action do_step31
  :parameters (?s - step)
  :duration (= ?duration 2700)
  :condition (and (at start (for_step31 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))

 (:durative-action do_step32
  :parameters (?s - step)
  :duration (= ?duration 300)
  :condition (and (at start (for_step32 ?s)) (at start (step_pending ?s)) (at start (p19)) (at start (p38)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))

 (:durative-action do_step33
  :parameters (?s - step)
  :duration (= ?duration 300)
  :condition (and (at start (for_step33 ?s)) (at start (step_pending ?s)) (at start (p20)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))

 (:durative-action do_step34
  :parameters (?s - step)
  :duration (= ?duration 1800)
  :condition (and (at start (for_step34 ?s)) (at start (step_pending ?s)) (at start (p16)) (at start (p25)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))

 (:durative-action do_step35
  :parameters (?s - step)
  :duration (= ?duration 900)
  :condition (and (at start (for_step35 ?s)) (at start (step_pending ?s)) (at start (p11)) (at start (p49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))

 (:durative-action do_step36
  :parameters (?s - step)
  :duration (= ?duration 30)
  :condition (and (at start (for_step36 ?s)) (at start (step_pending ?s)) (at start (p7)) (at start (p23)) (at start (p28)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))

 (:durative-action do_step37
  :parameters (?s - step)
  :duration (= ?duration 60)
  :condition (and (at start (for_step37 ?s)) (at start (step_pending ?s)) (at start (p11)) (at start (p24)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))

 (:durative-action do_step38
  :parameters (?s - step)
  :duration (= ?duration 120)
  :condition (and (at start (for_step38 ?s)) (at start (step_pending ?s)) (at start (p23)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))

 (:durative-action do_step39
  :parameters (?s - step)
  :duration (= ?duration 2400)
  :condition (and (at start (for_step39 ?s)) (at start (step_pending ?s)) (at start (p1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))

 (:durative-action do_step40
  :parameters (?s - step)
  :duration (= ?duration 10)
  :condition (and (at start (for_step40 ?s)) (at start (step_pending ?s)) (at start (p19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))

 (:durative-action do_step41
  :parameters (?s - step)
  :duration (= ?duration 600)
  :condition (and (at start (for_step41 ?s)) (at start (step_pending ?s)) (at start (p2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))

 (:durative-action do_step42
  :parameters (?s - step)
  :duration (= ?duration 1200)
  :condition (and (at start (for_step42 ?s)) (at start (step_pending ?s)) (at start (p18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))

 (:durative-action do_step43
  :parameters (?s - step)
  :duration (= ?duration 900)
  :condition (and (at start (for_step43 ?s)) (at start (step_pending ?s)) (at start (p1)) (at start (p19)) (at start (p21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))

 (:durative-action do_step44
  :parameters (?s - step)
  :duration (= ?duration 600)
  :condition (and (at start (for_step44 ?s)) (at start (step_pending ?s)) (at start (p18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))

 (:durative-action do_step45
  :parameters (?s - step)
  :duration (= ?duration 900)
  :condition (and (at start (for_step45 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))

 (:durative-action do_step46
  :parameters (?s - step)
  :duration (= ?duration 180)
  :condition (and (at start (for_step46 ?s)) (at start (step_pending ?s)) (at start (p33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))

 (:durative-action do_step47
  :parameters (?s - step)
  :duration (= ?duration 60)
  :condition (and (at start (for_step47 ?s)) (at start (step_pending ?s)) (at start (p6)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))

 (:durative-action do_step48
  :parameters (?s - step)
  :duration (= ?duration 120)
  :condition (and (at start (for_step48 ?s)) (at start (step_pending ?s)) (at start (p4)) (at start (p5)) (at start (p14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))

 (:durative-action do_step49
  :parameters (?s - step)
  :duration (= ?duration 300)
  :condition (and (at start (for_step49 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))

 (:durative-action do_step50
  :parameters (?s - step)
  :duration (= ?duration 60)
  :condition (and (at start (for_step50 ?s)) (at start (step_pending ?s)) (at start (p11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
)