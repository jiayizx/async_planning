(define (domain silver-investment)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_done ?s - step)
  (p1 ?s - step) (p2 ?s - step) (p3 ?s - step) (p4 ?s - step) (p5 ?s - step)
  (p6 ?s - step) (p7 ?s - step) (p8 ?s - step) (p9 ?s - step) (p10 ?s - step)
  (p11 ?s - step) (p12 ?s - step) (p13 ?s - step) (p14 ?s - step) (p15 ?s - step)
  (p16 ?s - step) (p17 ?s - step) (p18 ?s - step) (p19 ?s - step) (p20 ?s - step)
  (p21 ?s - step) (p22 ?s - step) (p23 ?s - step) (p24 ?s - step) (p25 ?s - step)
  (p26 ?s - step) (p27 ?s - step) (p28 ?s - step) (p29 ?s - step) (p30 ?s - step)
  (p31 ?s - step) (p32 ?s - step) (p33 ?s - step) (p34 ?s - step) (p35 ?s - step)
  (p36 ?s - step) (p37 ?s - step) (p38 ?s - step) (p39 ?s - step) (p40 ?s - step)
  (p41 ?s - step) (p42 ?s - step) (p43 ?s - step) (p44 ?s - step) (p45 ?s - step)
  (p46 ?s - step) (p47 ?s - step) (p48 ?s - step) (p49 ?s - step) (p50 ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
 )
 (:durative-action step1
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (p1 ?s)) (at start (d19)) (at start (d25)) (at start (d44)))
  :effect (and (at start (not (p1 ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action step2
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (at start (p2 ?s))
  :effect (and (at start (not (p2 ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action step3
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (p3 ?s)) (at start (d14)) (at start (d19)) (at start (d24)) (at start (d45)))
  :effect (and (at start (not (p3 ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action step4
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (p4 ?s)) (at start (d5)) (at start (d15)) (at start (d50)))
  :effect (and (at start (not (p4 ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action step5
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (p5 ?s)) (at start (d7)) (at start (d17)))
  :effect (and (at start (not (p5 ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action step6
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (p6 ?s)) (at start (d19)) (at start (d32)))
  :effect (and (at start (not (p6 ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action step7
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (p7 ?s)) (at start (d28)))
  :effect (and (at start (not (p7 ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action step8
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (p8 ?s)) (at start (d3)))
  :effect (and (at start (not (p8 ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action step9
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (p9 ?s)) (at start (d17)) (at start (d19)) (at start (d20)) (at start (d46)))
  :effect (and (at start (not (p9 ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action step10
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (p10 ?s)) (at start (d5)) (at start (d19)) (at start (d25)))
  :effect (and (at start (not (p10 ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action step11
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (at start (p11 ?s))
  :effect (and (at start (not (p11 ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action step12
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (p12 ?s)) (at start (d15)) (at start (d21)) (at start (d30)) (at start (d33)))
  :effect (and (at start (not (p12 ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action step13
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (at start (p13 ?s))
  :effect (and (at start (not (p13 ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action step14
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (p14 ?s)) (at start (d18)) (at start (d24)))
  :effect (and (at start (not (p14 ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action step15
  :parameters (?s - step) :duration (= ?duration 18000)
  :condition (and (at start (p15 ?s)) (at start (d2)) (at start (d21)) (at start (d22)) (at start (d26)) (at start (d40)))
  :effect (and (at start (not (p15 ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action step16
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (p16 ?s)) (at start (d4)))
  :effect (and (at start (not (p16 ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action step17
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (at start (p17 ?s))
  :effect (and (at start (not (p17 ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action step18
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (p18 ?s)) (at start (d12)) (at start (d46)))
  :effect (and (at start (not (p18 ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action step19
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (at start (p19 ?s))
  :effect (and (at start (not (p19 ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action step20
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (p20 ?s)) (at start (d25)))
  :effect (and (at start (not (p20 ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action step21
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (at start (p21 ?s))
  :effect (and (at start (not (p21 ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action step22
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (p22 ?s)) (at start (d13)))
  :effect (and (at start (not (p22 ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action step23
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (p23 ?s)) (at start (d4)) (at start (d26)) (at start (d27)) (at start (d44)) (at start (d48)))
  :effect (and (at start (not (p23 ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action step24
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (p24 ?s)) (at start (d11)) (at start (d12)) (at start (d17)) (at start (d39)))
  :effect (and (at start (not (p24 ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action step25
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (at start (p25 ?s))
  :effect (and (at start (not (p25 ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action step26
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (at start (p26 ?s))
  :effect (and (at start (not (p26 ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action step27
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (at start (p27 ?s))
  :effect (and (at start (not (p27 ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action step28
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (p28 ?s)) (at start (d18)))
  :effect (and (at start (not (p28 ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action step29
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (p29 ?s)) (at start (d12)) (at start (d33)) (at start (d37)) (at start (d48)) (at start (d50)))
  :effect (and (at start (not (p29 ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action step30
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (p30 ?s)) (at start (d19)))
  :effect (and (at start (not (p30 ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action step31
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (p31 ?s)) (at start (d15)) (at start (d35)))
  :effect (and (at start (not (p31 ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action step32
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (p32 ?s)) (at start (d45)))
  :effect (and (at start (not (p32 ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action step33
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (p33 ?s)) (at start (d35)))
  :effect (and (at start (not (p33 ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action step34
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (p34 ?s)) (at start (d15)) (at start (d17)) (at start (d32)) (at start (d35)))
  :effect (and (at start (not (p34 ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action step35
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (at start (p35 ?s))
  :effect (and (at start (not (p35 ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action step36
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (p36 ?s)) (at start (d2)) (at start (d16)) (at start (d30)) (at start (d40)))
  :effect (and (at start (not (p36 ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action step37
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (at start (p37 ?s))
  :effect (and (at start (not (p37 ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action step38
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (p38 ?s)) (at start (d44)))
  :effect (and (at start (not (p38 ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action step39
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (p39 ?s)) (at start (d11)) (at start (d30)))
  :effect (and (at start (not (p39 ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action step40
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (p40 ?s)) (at start (d13)))
  :effect (and (at start (not (p40 ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action step41
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (p41 ?s)) (at start (d10)) (at start (d23)))
  :effect (and (at start (not (p41 ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action step42
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (p42 ?s)) (at start (d15)) (at start (d25)) (at start (d28)))
  :effect (and (at start (not (p42 ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action step43
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (p43 ?s)) (at start (d30)) (at start (d36)) (at start (d40)))
  :effect (and (at start (not (p43 ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action step44
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (p44 ?s)) (at start (d47)))
  :effect (and (at start (not (p44 ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action step45
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (p45 ?s)) (at start (d33)) (at start (d44)) (at start (d50)))
  :effect (and (at start (not (p45 ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action step46
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (p46 ?s)) (at start (d48)))
  :effect (and (at start (not (p46 ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action step47
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (p47 ?s)) (at start (d25)))
  :effect (and (at start (not (p47 ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action step48
  :parameters (?s - step) :duration (= ?duration 18000)
  :condition (at start (p48 ?s))
  :effect (and (at start (not (p48 ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action step49
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (p49 ?s)) (at start (d27)) (at start (d44)) (at start (d48)))
  :effect (and (at start (not (p49 ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action step50
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (at start (p50 ?s))
  :effect (and (at start (not (p50 ?s))) (at end (step_done ?s)) (at end (d50))))
)