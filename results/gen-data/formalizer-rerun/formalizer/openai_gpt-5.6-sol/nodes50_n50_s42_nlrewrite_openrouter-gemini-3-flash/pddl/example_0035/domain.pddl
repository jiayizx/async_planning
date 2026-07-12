(define (domain camera-purchase)
  (:requirements :durative-actions :typing)
  (:types step s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 - step)
  (:predicates
    (step_pending ?s - step) (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50))

  (:durative-action do-step1
    :parameters (?s - s1) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
  (:durative-action do-step2
    :parameters (?s - s2) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
  (:durative-action do-step3
    :parameters (?s - s3) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
  (:durative-action do-step4
    :parameters (?s - s4) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
  (:durative-action do-step5
    :parameters (?s - s5) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
  (:durative-action do-step6
    :parameters (?s - s6) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
  (:durative-action do-step7
    :parameters (?s - s7) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
  (:durative-action do-step8
    :parameters (?s - s8) :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
  (:durative-action do-step9
    :parameters (?s - s9) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
  (:durative-action do-step10
    :parameters (?s - s10) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
  (:durative-action do-step11
    :parameters (?s - s11) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (p19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
  (:durative-action do-step12
    :parameters (?s - s12) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
  (:durative-action do-step13
    :parameters (?s - s13) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p21)) (at start (p25)) (at start (p46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
  (:durative-action do-step14
    :parameters (?s - s14) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
  (:durative-action do-step15
    :parameters (?s - s15) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
  (:durative-action do-step16
    :parameters (?s - s16) :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
  (:durative-action do-step17
    :parameters (?s - s17) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
  (:durative-action do-step18
    :parameters (?s - s18) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p8)) (at start (p19)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
  (:durative-action do-step19
    :parameters (?s - s19) :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
  (:durative-action do-step20
    :parameters (?s - s20) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p36)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
  (:durative-action do-step21
    :parameters (?s - s21) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (p39)) (at start (p45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
  (:durative-action do-step22
    :parameters (?s - s22) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
  (:durative-action do-step23
    :parameters (?s - s23) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
  (:durative-action do-step24
    :parameters (?s - s24) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
  (:durative-action do-step25
    :parameters (?s - s25) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
  (:durative-action do-step26
    :parameters (?s - s26) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (p11)) (at start (p20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
  (:durative-action do-step27
    :parameters (?s - s27) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p22)) (at start (p43)) (at start (p48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
  (:durative-action do-step28
    :parameters (?s - s28) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
  (:durative-action do-step29
    :parameters (?s - s29) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p3)) (at start (p50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
  (:durative-action do-step30
    :parameters (?s - s30) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
  (:durative-action do-step31
    :parameters (?s - s31) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
  (:durative-action do-step32
    :parameters (?s - s32) :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
  (:durative-action do-step33
    :parameters (?s - s33) :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (p8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
  (:durative-action do-step34
    :parameters (?s - s34) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
  (:durative-action do-step35
    :parameters (?s - s35) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
  (:durative-action do-step36
    :parameters (?s - s36) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p40)) (at start (p42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
  (:durative-action do-step37
    :parameters (?s - s37) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
  (:durative-action do-step38
    :parameters (?s - s38) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
  (:durative-action do-step39
    :parameters (?s - s39) :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
  (:durative-action do-step40
    :parameters (?s - s40) :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
  (:durative-action do-step41
    :parameters (?s - s41) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p11)) (at start (p16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
  (:durative-action do-step42
    :parameters (?s - s42) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
  (:durative-action do-step43
    :parameters (?s - s43) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
  (:durative-action do-step44
    :parameters (?s - s44) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p23)) (at start (p32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
  (:durative-action do-step45
    :parameters (?s - s45) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p32)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
  (:durative-action do-step46
    :parameters (?s - s46) :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
  (:durative-action do-step47
    :parameters (?s - s47) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p31)) (at start (p43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
  (:durative-action do-step48
    :parameters (?s - s48) :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
  (:durative-action do-step49
    :parameters (?s - s49) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p31)) (at start (p37)) (at start (p43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
  (:durative-action do-step50
    :parameters (?s - s50) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
)