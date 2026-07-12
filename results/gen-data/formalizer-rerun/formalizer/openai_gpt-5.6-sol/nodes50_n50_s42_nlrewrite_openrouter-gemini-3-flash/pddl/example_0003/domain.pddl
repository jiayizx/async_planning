(define (domain learn-to-whistle)
(:requirements :typing :durative-actions)
(:types step t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 - step)
(:predicates
 (step-pending ?s - step) (step-done ?s - step)
 (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
 (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
 (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
 (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
 (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50))

(:durative-action step-1
 :parameters (?s - t1) :duration (= ?duration 60)
 :condition (and (at start (step-pending ?s)) (at start (p2)) (at start (p35)) (at start (p39)) (at start (p43)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p1))))
(:durative-action step-2
 :parameters (?s - t2) :duration (= ?duration 30)
 :condition (and (at start (step-pending ?s)) (at start (p21)) (at start (p48)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p2))))
(:durative-action step-3
 :parameters (?s - t3) :duration (= ?duration 5)
 :condition (at start (step-pending ?s))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p3))))
(:durative-action step-4
 :parameters (?s - t4) :duration (= ?duration 10)
 :condition (and (at start (step-pending ?s)) (at start (p7)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p4))))
(:durative-action step-5
 :parameters (?s - t5) :duration (= ?duration 10)
 :condition (and (at start (step-pending ?s)) (at start (p4)) (at start (p6)) (at start (p15)) (at start (p32)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p5))))
(:durative-action step-6
 :parameters (?s - t6) :duration (= ?duration 5)
 :condition (and (at start (step-pending ?s)) (at start (p48)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p6))))
(:durative-action step-7
 :parameters (?s - t7) :duration (= ?duration 10)
 :condition (and (at start (step-pending ?s)) (at start (p38)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p7))))
(:durative-action step-8
 :parameters (?s - t8) :duration (= ?duration 600)
 :condition (and (at start (step-pending ?s)) (at start (p40)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p8))))
(:durative-action step-9
 :parameters (?s - t9) :duration (= ?duration 120)
 :condition (and (at start (step-pending ?s)) (at start (p4)) (at start (p5)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p9))))
(:durative-action step-10
 :parameters (?s - t10) :duration (= ?duration 15)
 :condition (and (at start (step-pending ?s)) (at start (p43)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p10))))
(:durative-action step-11
 :parameters (?s - t11) :duration (= ?duration 300)
 :condition (and (at start (step-pending ?s)) (at start (p14)) (at start (p40)) (at start (p44)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p11))))
(:durative-action step-12
 :parameters (?s - t12) :duration (= ?duration 900)
 :condition (and (at start (step-pending ?s)) (at start (p27)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p12))))
(:durative-action step-13
 :parameters (?s - t13) :duration (= ?duration 10)
 :condition (and (at start (step-pending ?s)) (at start (p4)) (at start (p10)) (at start (p27)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p13))))
(:durative-action step-14
 :parameters (?s - t14) :duration (= ?duration 120)
 :condition (at start (step-pending ?s))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p14))))
(:durative-action step-15
 :parameters (?s - t15) :duration (= ?duration 5)
 :condition (at start (step-pending ?s))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p15))))
(:durative-action step-16
 :parameters (?s - t16) :duration (= ?duration 20)
 :condition (and (at start (step-pending ?s)) (at start (p47)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p16))))
(:durative-action step-17
 :parameters (?s - t17) :duration (= ?duration 1800)
 :condition (at start (step-pending ?s))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p17))))
(:durative-action step-18
 :parameters (?s - t18) :duration (= ?duration 60)
 :condition (and (at start (step-pending ?s)) (at start (p29)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p18))))
(:durative-action step-19
 :parameters (?s - t19) :duration (= ?duration 10)
 :condition (and (at start (step-pending ?s)) (at start (p3)) (at start (p13)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p19))))
(:durative-action step-20
 :parameters (?s - t20) :duration (= ?duration 10)
 :condition (and (at start (step-pending ?s)) (at start (p7)) (at start (p23)) (at start (p37)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p20))))
(:durative-action step-21
 :parameters (?s - t21) :duration (= ?duration 60)
 :condition (and (at start (step-pending ?s)) (at start (p44)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p21))))
(:durative-action step-22
 :parameters (?s - t22) :duration (= ?duration 30)
 :condition (and (at start (step-pending ?s)) (at start (p7)) (at start (p19)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p22))))
(:durative-action step-23
 :parameters (?s - t23) :duration (= ?duration 15)
 :condition (and (at start (step-pending ?s)) (at start (p42)) (at start (p48)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p23))))
(:durative-action step-24
 :parameters (?s - t24) :duration (= ?duration 180)
 :condition (and (at start (step-pending ?s)) (at start (p18)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p24))))
(:durative-action step-25
 :parameters (?s - t25) :duration (= ?duration 120)
 :condition (and (at start (step-pending ?s)) (at start (p50)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p25))))
(:durative-action step-26
 :parameters (?s - t26) :duration (= ?duration 60)
 :condition (and (at start (step-pending ?s)) (at start (p11)) (at start (p33)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p26))))
(:durative-action step-27
 :parameters (?s - t27) :duration (= ?duration 300)
 :condition (and (at start (step-pending ?s)) (at start (p38)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p27))))
(:durative-action step-28
 :parameters (?s - t28) :duration (= ?duration 1200)
 :condition (and (at start (step-pending ?s)) (at start (p38)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p28))))
(:durative-action step-29
 :parameters (?s - t29) :duration (= ?duration 120)
 :condition (and (at start (step-pending ?s)) (at start (p42)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p29))))
(:durative-action step-30
 :parameters (?s - t30) :duration (= ?duration 5)
 :condition (and (at start (step-pending ?s)) (at start (p7)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p30))))
(:durative-action step-31
 :parameters (?s - t31) :duration (= ?duration 600)
 :condition (and (at start (step-pending ?s)) (at start (p12)) (at start (p28)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p31))))
(:durative-action step-32
 :parameters (?s - t32) :duration (= ?duration 15)
 :condition (and (at start (step-pending ?s)) (at start (p43)) (at start (p48)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p32))))
(:durative-action step-33
 :parameters (?s - t33) :duration (= ?duration 5)
 :condition (and (at start (step-pending ?s)) (at start (p4)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p33))))
(:durative-action step-34
 :parameters (?s - t34) :duration (= ?duration 60)
 :condition (and (at start (step-pending ?s)) (at start (p12)) (at start (p43)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p34))))
(:durative-action step-35
 :parameters (?s - t35) :duration (= ?duration 120)
 :condition (at start (step-pending ?s))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p35))))
(:durative-action step-36
 :parameters (?s - t36) :duration (= ?duration 10)
 :condition (and (at start (step-pending ?s)) (at start (p4)) (at start (p38)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p36))))
(:durative-action step-37
 :parameters (?s - t37) :duration (= ?duration 5)
 :condition (at start (step-pending ?s))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p37))))
(:durative-action step-38
 :parameters (?s - t38) :duration (= ?duration 5)
 :condition (at start (step-pending ?s))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p38))))
(:durative-action step-39
 :parameters (?s - t39) :duration (= ?duration 60)
 :condition (and (at start (step-pending ?s)) (at start (p22)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p39))))
(:durative-action step-40
 :parameters (?s - t40) :duration (= ?duration 120)
 :condition (and (at start (step-pending ?s)) (at start (p38)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p40))))
(:durative-action step-41
 :parameters (?s - t41) :duration (= ?duration 3)
 :condition (and (at start (step-pending ?s)) (at start (p1)) (at start (p20)) (at start (p38)) (at start (p48)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p41))))
(:durative-action step-42
 :parameters (?s - t42) :duration (= ?duration 30)
 :condition (and (at start (step-pending ?s)) (at start (p44)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p42))))
(:durative-action step-43
 :parameters (?s - t43) :duration (= ?duration 20)
 :condition (and (at start (step-pending ?s)) (at start (p26)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p43))))
(:durative-action step-44
 :parameters (?s - t44) :duration (= ?duration 10)
 :condition (and (at start (step-pending ?s)) (at start (p37)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p44))))
(:durative-action step-45
 :parameters (?s - t45) :duration (= ?duration 240)
 :condition (and (at start (step-pending ?s)) (at start (p25)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p45))))
(:durative-action step-46
 :parameters (?s - t46) :duration (= ?duration 60)
 :condition (and (at start (step-pending ?s)) (at start (p8)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p46))))
(:durative-action step-47
 :parameters (?s - t47) :duration (= ?duration 10)
 :condition (and (at start (step-pending ?s)) (at start (p6)) (at start (p14)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p47))))
(:durative-action step-48
 :parameters (?s - t48) :duration (= ?duration 5)
 :condition (and (at start (step-pending ?s)) (at start (p13)) (at start (p26)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p48))))
(:durative-action step-49
 :parameters (?s - t49) :duration (= ?duration 30)
 :condition (and (at start (step-pending ?s)) (at start (p15)) (at start (p18)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p49))))
(:durative-action step-50
 :parameters (?s - t50) :duration (= ?duration 300)
 :condition (and (at start (step-pending ?s)) (at start (p17)))
 :effect (and (at start (not (step-pending ?s))) (at end (step-done ?s)) (at end (p50))))
)