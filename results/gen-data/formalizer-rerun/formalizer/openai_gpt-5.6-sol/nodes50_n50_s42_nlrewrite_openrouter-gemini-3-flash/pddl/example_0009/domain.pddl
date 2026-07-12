(define (domain choose-cruise)
(:requirements :typing :durative-actions)
(:types step s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 - step)
(:predicates
 (step_pending ?x - step) (step_done ?x - step)
 (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
 (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
 (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
 (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
 (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50))

(:durative-action do-step1
 :parameters (?x - s1) :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?x)) (at start (d4)) (at start (d35)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d1))))
(:durative-action do-step2
 :parameters (?x - s2) :duration (= ?duration 3600)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d2))))
(:durative-action do-step3
 :parameters (?x - s3) :duration (= ?duration 2700)
 :condition (and (at start (step_pending ?x)) (at start (d2)) (at start (d13)) (at start (d25)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d3))))
(:durative-action do-step4
 :parameters (?x - s4) :duration (= ?duration 10800)
 :condition (and (at start (step_pending ?x)) (at start (d2)) (at start (d19)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d4))))
(:durative-action do-step5
 :parameters (?x - s5) :duration (= ?duration 600)
 :condition (and (at start (step_pending ?x)) (at start (d26)) (at start (d30)) (at start (d45)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d5))))
(:durative-action do-step6
 :parameters (?x - s6) :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?x)) (at start (d12)) (at start (d28)) (at start (d34)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d6))))
(:durative-action do-step7
 :parameters (?x - s7) :duration (= ?duration 18000)
 :condition (and (at start (step_pending ?x)) (at start (d1)) (at start (d30)) (at start (d46)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d7))))
(:durative-action do-step8
 :parameters (?x - s8) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (d2)) (at start (d37)) (at start (d49)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d8))))
(:durative-action do-step9
 :parameters (?x - s9) :duration (= ?duration 3600)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d9))))
(:durative-action do-step10
 :parameters (?x - s10) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (d6)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d10))))
(:durative-action do-step11
 :parameters (?x - s11) :duration (= ?duration 172800)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d11))))
(:durative-action do-step12
 :parameters (?x - s12) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (d11)) (at start (d39)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d12))))
(:durative-action do-step13
 :parameters (?x - s13) :duration (= ?duration 3600)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d13))))
(:durative-action do-step14
 :parameters (?x - s14) :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?x)) (at start (d18)) (at start (d19)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d14))))
(:durative-action do-step15
 :parameters (?x - s15) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (d13)) (at start (d24)) (at start (d35)) (at start (d42)) (at start (d49)) (at start (d50)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d15))))
(:durative-action do-step16
 :parameters (?x - s16) :duration (= ?duration 900)
 :condition (and (at start (step_pending ?x)) (at start (d14)) (at start (d15)) (at start (d33)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d16))))
(:durative-action do-step17
 :parameters (?x - s17) :duration (= ?duration 600)
 :condition (and (at start (step_pending ?x)) (at start (d3)) (at start (d10)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d17))))
(:durative-action do-step18
 :parameters (?x - s18) :duration (= ?duration 3600)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d18))))
(:durative-action do-step19
 :parameters (?x - s19) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (d23)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d19))))
(:durative-action do-step20
 :parameters (?x - s20) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (d1)) (at start (d34)) (at start (d35)) (at start (d41)) (at start (d44)) (at start (d50)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d20))))
(:durative-action do-step21
 :parameters (?x - s21) :duration (= ?duration 1200)
 :condition (and (at start (step_pending ?x)) (at start (d28)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d21))))
(:durative-action do-step22
 :parameters (?x - s22) :duration (= ?duration 86400)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d22))))
(:durative-action do-step23
 :parameters (?x - s23) :duration (= ?duration 14400)
 :condition (and (at start (step_pending ?x)) (at start (d13)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d23))))
(:durative-action do-step24
 :parameters (?x - s24) :duration (= ?duration 5400)
 :condition (and (at start (step_pending ?x)) (at start (d30)) (at start (d39)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d24))))
(:durative-action do-step25
 :parameters (?x - s25) :duration (= ?duration 2400)
 :condition (and (at start (step_pending ?x)) (at start (d27)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d25))))
(:durative-action do-step26
 :parameters (?x - s26) :duration (= ?duration 900)
 :condition (and (at start (step_pending ?x)) (at start (d21)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d26))))
(:durative-action do-step27
 :parameters (?x - s27) :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?x)) (at start (d9)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d27))))
(:durative-action do-step28
 :parameters (?x - s28) :duration (= ?duration 10800)
 :condition (and (at start (step_pending ?x)) (at start (d19)) (at start (d22)) (at start (d34)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d28))))
(:durative-action do-step29
 :parameters (?x - s29) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (d38)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d29))))
(:durative-action do-step30
 :parameters (?x - s30) :duration (= ?duration 14400)
 :condition (and (at start (step_pending ?x)) (at start (d48)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d30))))
(:durative-action do-step31
 :parameters (?x - s31) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (d41)) (at start (d45)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d31))))
(:durative-action do-step32
 :parameters (?x - s32) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (d2)) (at start (d19)) (at start (d37)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d32))))
(:durative-action do-step33
 :parameters (?x - s33) :duration (= ?duration 2700)
 :condition (and (at start (step_pending ?x)) (at start (d14)) (at start (d19)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d33))))
(:durative-action do-step34
 :parameters (?x - s34) :duration (= ?duration 7200)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d34))))
(:durative-action do-step35
 :parameters (?x - s35) :duration (= ?duration 900)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d35))))
(:durative-action do-step36
 :parameters (?x - s36) :duration (= ?duration 7200)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d36))))
(:durative-action do-step37
 :parameters (?x - s37) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (d18)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d37))))
(:durative-action do-step38
 :parameters (?x - s38) :duration (= ?duration 1200)
 :condition (and (at start (step_pending ?x)) (at start (d35)) (at start (d46)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d38))))
(:durative-action do-step39
 :parameters (?x - s39) :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?x)) (at start (d37)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d39))))
(:durative-action do-step40
 :parameters (?x - s40) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (d47)) (at start (d48)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d40))))
(:durative-action do-step41
 :parameters (?x - s41) :duration (= ?duration 600)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d41))))
(:durative-action do-step42
 :parameters (?x - s42) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (d6)) (at start (d21)) (at start (d36)) (at start (d43)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d42))))
(:durative-action do-step43
 :parameters (?x - s43) :duration (= ?duration 300)
 :condition (and (at start (step_pending ?x)) (at start (d33)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d43))))
(:durative-action do-step44
 :parameters (?x - s44) :duration (= ?duration 3600)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d44))))
(:durative-action do-step45
 :parameters (?x - s45) :duration (= ?duration 86400)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d45))))
(:durative-action do-step46
 :parameters (?x - s46) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (d28)) (at start (d35)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d46))))
(:durative-action do-step47
 :parameters (?x - s47) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (d1)) (at start (d22)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d47))))
(:durative-action do-step48
 :parameters (?x - s48) :duration (= ?duration 7200)
 :condition (at start (step_pending ?x))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d48))))
(:durative-action do-step49
 :parameters (?x - s49) :duration (= ?duration 10800)
 :condition (and (at start (step_pending ?x)) (at start (d1)) (at start (d9)) (at start (d29)) (at start (d38)) (at start (d40)) (at start (d46)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d49))))
(:durative-action do-step50
 :parameters (?x - s50) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (d6)) (at start (d8)) (at start (d22)) (at start (d40)) (at start (d49)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d50))))
)