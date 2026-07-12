(define (domain animal-friendly-house)
(:requirements :typing :durative-actions)
(:types step)
(:predicates
 (step_pending ?x - step) (step_done ?x - step)
 (is1 ?x - step) (is2 ?x - step) (is3 ?x - step) (is4 ?x - step) (is5 ?x - step)
 (is6 ?x - step) (is7 ?x - step) (is8 ?x - step) (is9 ?x - step) (is10 ?x - step)
 (is11 ?x - step) (is12 ?x - step) (is13 ?x - step) (is14 ?x - step) (is15 ?x - step)
 (is16 ?x - step) (is17 ?x - step) (is18 ?x - step) (is19 ?x - step) (is20 ?x - step)
 (is21 ?x - step) (is22 ?x - step) (is23 ?x - step) (is24 ?x - step) (is25 ?x - step)
 (is26 ?x - step) (is27 ?x - step) (is28 ?x - step) (is29 ?x - step) (is30 ?x - step)
 (is31 ?x - step) (is32 ?x - step) (is33 ?x - step) (is34 ?x - step) (is35 ?x - step)
 (is36 ?x - step) (is37 ?x - step) (is38 ?x - step) (is39 ?x - step) (is40 ?x - step)
 (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
 (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
 (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
 (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40))

(:durative-action do-step1
 :parameters (?x - step) :duration (= ?duration 10800)
 :condition (and (at start (step_pending ?x)) (at start (is1 ?x)) (at start (s20)) (at start (s34)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s1))))
(:durative-action do-step2
 :parameters (?x - step) :duration (= ?duration 2700)
 :condition (and (at start (step_pending ?x)) (at start (is2 ?x)) (at start (s11)) (at start (s29)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s2))))
(:durative-action do-step3
 :parameters (?x - step) :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?x)) (at start (is3 ?x)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s3))))
(:durative-action do-step4
 :parameters (?x - step) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (is4 ?x)) (at start (s30)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s4))))
(:durative-action do-step5
 :parameters (?x - step) :duration (= ?duration 18000)
 :condition (and (at start (step_pending ?x)) (at start (is5 ?x)) (at start (s10)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s5))))
(:durative-action do-step6
 :parameters (?x - step) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (is6 ?x)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s6))))
(:durative-action do-step7
 :parameters (?x - step) :duration (= ?duration 14400)
 :condition (and (at start (step_pending ?x)) (at start (is7 ?x)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s7))))
(:durative-action do-step8
 :parameters (?x - step) :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?x)) (at start (is8 ?x)) (at start (s7)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s8))))
(:durative-action do-step9
 :parameters (?x - step) :duration (= ?duration 900)
 :condition (and (at start (step_pending ?x)) (at start (is9 ?x)) (at start (s22)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s9))))
(:durative-action do-step10
 :parameters (?x - step) :duration (= ?duration 1200)
 :condition (and (at start (step_pending ?x)) (at start (is10 ?x)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s10))))
(:durative-action do-step11
 :parameters (?x - step) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (is11 ?x)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s11))))
(:durative-action do-step12
 :parameters (?x - step) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (is12 ?x)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s12))))
(:durative-action do-step13
 :parameters (?x - step) :duration (= ?duration 10800)
 :condition (and (at start (step_pending ?x)) (at start (is13 ?x)) (at start (s35)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s13))))
(:durative-action do-step14
 :parameters (?x - step) :duration (= ?duration 2700)
 :condition (and (at start (step_pending ?x)) (at start (is14 ?x)) (at start (s38)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s14))))
(:durative-action do-step15
 :parameters (?x - step) :duration (= ?duration 1200)
 :condition (and (at start (step_pending ?x)) (at start (is15 ?x)) (at start (s1)) (at start (s20)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s15))))
(:durative-action do-step16
 :parameters (?x - step) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (is16 ?x)) (at start (s21)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s16))))
(:durative-action do-step17
 :parameters (?x - step) :duration (= ?duration 172800)
 :condition (and (at start (step_pending ?x)) (at start (is17 ?x)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s17))))
(:durative-action do-step18
 :parameters (?x - step) :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?x)) (at start (is18 ?x)) (at start (s3)) (at start (s6)) (at start (s7)) (at start (s26)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s18))))
(:durative-action do-step19
 :parameters (?x - step) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (is19 ?x)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s19))))
(:durative-action do-step20
 :parameters (?x - step) :duration (= ?duration 600)
 :condition (and (at start (step_pending ?x)) (at start (is20 ?x)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s20))))
(:durative-action do-step21
 :parameters (?x - step) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (is21 ?x)) (at start (s1)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s21))))
(:durative-action do-step22
 :parameters (?x - step) :duration (= ?duration 14400)
 :condition (and (at start (step_pending ?x)) (at start (is22 ?x)) (at start (s8)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s22))))
(:durative-action do-step23
 :parameters (?x - step) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (is23 ?x)) (at start (s35)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s23))))
(:durative-action do-step24
 :parameters (?x - step) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (is24 ?x)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s24))))
(:durative-action do-step25
 :parameters (?x - step) :duration (= ?duration 10800)
 :condition (and (at start (step_pending ?x)) (at start (is25 ?x)) (at start (s40)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s25))))
(:durative-action do-step26
 :parameters (?x - step) :duration (= ?duration 86400)
 :condition (and (at start (step_pending ?x)) (at start (is26 ?x)) (at start (s2)) (at start (s17)) (at start (s37)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s26))))
(:durative-action do-step27
 :parameters (?x - step) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (is27 ?x)) (at start (s14)) (at start (s21)) (at start (s28)) (at start (s33)) (at start (s35)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s27))))
(:durative-action do-step28
 :parameters (?x - step) :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?x)) (at start (is28 ?x)) (at start (s10)) (at start (s16)) (at start (s20)) (at start (s34)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s28))))
(:durative-action do-step29
 :parameters (?x - step) :duration (= ?duration 1800)
 :condition (and (at start (step_pending ?x)) (at start (is29 ?x)) (at start (s22)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s29))))
(:durative-action do-step30
 :parameters (?x - step) :duration (= ?duration 2700)
 :condition (and (at start (step_pending ?x)) (at start (is30 ?x)) (at start (s6)) (at start (s26)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s30))))
(:durative-action do-step31
 :parameters (?x - step) :duration (= ?duration 21600)
 :condition (and (at start (step_pending ?x)) (at start (is31 ?x)) (at start (s2)) (at start (s12)) (at start (s22)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s31))))
(:durative-action do-step32
 :parameters (?x - step) :duration (= ?duration 10800)
 :condition (and (at start (step_pending ?x)) (at start (is32 ?x)) (at start (s24)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s32))))
(:durative-action do-step33
 :parameters (?x - step) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (is33 ?x)) (at start (s13)) (at start (s28)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s33))))
(:durative-action do-step34
 :parameters (?x - step) :duration (= ?duration 604800)
 :condition (and (at start (step_pending ?x)) (at start (is34 ?x)) (at start (s19)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s34))))
(:durative-action do-step35
 :parameters (?x - step) :duration (= ?duration 14400)
 :condition (and (at start (step_pending ?x)) (at start (is35 ?x)) (at start (s28)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s35))))
(:durative-action do-step36
 :parameters (?x - step) :duration (= ?duration 7200)
 :condition (and (at start (step_pending ?x)) (at start (is36 ?x)) (at start (s12)) (at start (s33)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s36))))
(:durative-action do-step37
 :parameters (?x - step) :duration (= ?duration 3600)
 :condition (and (at start (step_pending ?x)) (at start (is37 ?x)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s37))))
(:durative-action do-step38
 :parameters (?x - step) :duration (= ?duration 18000)
 :condition (and (at start (step_pending ?x)) (at start (is38 ?x)) (at start (s17)) (at start (s32)) (at start (s39)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s38))))
(:durative-action do-step39
 :parameters (?x - step) :duration (= ?duration 900)
 :condition (and (at start (step_pending ?x)) (at start (is39 ?x)) (at start (s4)) (at start (s8)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s39))))
(:durative-action do-step40
 :parameters (?x - step) :duration (= ?duration 14400)
 :condition (and (at start (step_pending ?x)) (at start (is40 ?x)) (at start (s5)))
 :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s40))))
)