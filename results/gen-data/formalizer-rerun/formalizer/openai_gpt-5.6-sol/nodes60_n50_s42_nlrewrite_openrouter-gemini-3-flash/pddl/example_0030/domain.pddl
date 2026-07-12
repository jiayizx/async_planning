(define (domain meet-men)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
    t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40
    t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t60 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
    (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60))

  (:durative-action do-step1
    :parameters (?s - t1) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
  (:durative-action do-step2
    :parameters (?s - t2) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
  (:durative-action do-step3
    :parameters (?s - t3) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
  (:durative-action do-step4
    :parameters (?s - t4) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
  (:durative-action do-step5
    :parameters (?s - t5) :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
  (:durative-action do-step6
    :parameters (?s - t6) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p19)) (at start (p47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
  (:durative-action do-step7
    :parameters (?s - t7) :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
  (:durative-action do-step8
    :parameters (?s - t8) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
  (:durative-action do-step9
    :parameters (?s - t9) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
  (:durative-action do-step10
    :parameters (?s - t10) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
  (:durative-action do-step11
    :parameters (?s - t11) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (p17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
  (:durative-action do-step12
    :parameters (?s - t12) :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
  (:durative-action do-step13
    :parameters (?s - t13) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p11)) (at start (p29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
  (:durative-action do-step14
    :parameters (?s - t14) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
  (:durative-action do-step15
    :parameters (?s - t15) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
  (:durative-action do-step16
    :parameters (?s - t16) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p34)) (at start (p36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
  (:durative-action do-step17
    :parameters (?s - t17) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
  (:durative-action do-step18
    :parameters (?s - t18) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p27)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
  (:durative-action do-step19
    :parameters (?s - t19) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
  (:durative-action do-step20
    :parameters (?s - t20) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
  (:durative-action do-step21
    :parameters (?s - t21) :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
  (:durative-action do-step22
    :parameters (?s - t22) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p35)) (at start (p51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
  (:durative-action do-step23
    :parameters (?s - t23) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p34)) (at start (p38)) (at start (p56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
  (:durative-action do-step24
    :parameters (?s - t24) :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
  (:durative-action do-step25
    :parameters (?s - t25) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
  (:durative-action do-step26
    :parameters (?s - t26) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p22)) (at start (p55)) (at start (p59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
  (:durative-action do-step27
    :parameters (?s - t27) :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
  (:durative-action do-step28
    :parameters (?s - t28) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (p14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
  (:durative-action do-step29
    :parameters (?s - t29) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
  (:durative-action do-step30
    :parameters (?s - t30) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
  (:durative-action do-step31
    :parameters (?s - t31) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
  (:durative-action do-step32
    :parameters (?s - t32) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p17)) (at start (p42)) (at start (p49)) (at start (p58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
  (:durative-action do-step33
    :parameters (?s - t33) :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
  (:durative-action do-step34
    :parameters (?s - t34) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
  (:durative-action do-step35
    :parameters (?s - t35) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p33)) (at start (p37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
  (:durative-action do-step36
    :parameters (?s - t36) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
  (:durative-action do-step37
    :parameters (?s - t37) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
  (:durative-action do-step38
    :parameters (?s - t38) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p37)) (at start (p47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
  (:durative-action do-step39
    :parameters (?s - t39) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p42)) (at start (p46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
  (:durative-action do-step40
    :parameters (?s - t40) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
  (:durative-action do-step41
    :parameters (?s - t41) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
  (:durative-action do-step42
    :parameters (?s - t42) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
  (:durative-action do-step43
    :parameters (?s - t43) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p21)) (at start (p34)) (at start (p44)) (at start (p52)) (at start (p54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
  (:durative-action do-step44
    :parameters (?s - t44) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p19)) (at start (p59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
  (:durative-action do-step45
    :parameters (?s - t45) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p16)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
  (:durative-action do-step46
    :parameters (?s - t46) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p25)) (at start (p35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
  (:durative-action do-step47
    :parameters (?s - t47) :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
  (:durative-action do-step48
    :parameters (?s - t48) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p25)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
  (:durative-action do-step49
    :parameters (?s - t49) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p11)) (at start (p50)) (at start (p52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
  (:durative-action do-step50
    :parameters (?s - t50) :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
  (:durative-action do-step51
    :parameters (?s - t51) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p51))))
  (:durative-action do-step52
    :parameters (?s - t52) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p52))))
  (:durative-action do-step53
    :parameters (?s - t53) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p38)) (at start (p59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p53))))
  (:durative-action do-step54
    :parameters (?s - t54) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p21)) (at start (p50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p54))))
  (:durative-action do-step55
    :parameters (?s - t55) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p11)) (at start (p15)) (at start (p33)) (at start (p36)) (at start (p53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p55))))
  (:durative-action do-step56
    :parameters (?s - t56) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p56))))
  (:durative-action do-step57
    :parameters (?s - t57) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p23)) (at start (p24)) (at start (p45)) (at start (p48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p57))))
  (:durative-action do-step58
    :parameters (?s - t58) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p31)) (at start (p51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p58))))
  (:durative-action do-step59
    :parameters (?s - t59) :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p59))))
  (:durative-action do-step60
    :parameters (?s - t60) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p60))))
)