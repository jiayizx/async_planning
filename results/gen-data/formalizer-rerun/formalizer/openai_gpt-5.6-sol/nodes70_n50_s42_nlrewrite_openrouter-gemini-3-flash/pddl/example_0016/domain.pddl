(define (domain grissini)
  (:requirements :durative-actions :typing)
  (:types
    t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
    t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40
    t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t60
    t61 t62 t63 t64 t65 t66 t67 t68 t69 t70 - step
    step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
    (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
    (p61) (p62) (p63) (p64) (p65) (p66) (p67) (p68) (p69) (p70))

  (:durative-action step1
    :parameters (?s - t1) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
  (:durative-action step2
    :parameters (?s - t2) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
  (:durative-action step3
    :parameters (?s - t3) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p34)) (at start (p50)) (at start (p56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
  (:durative-action step4
    :parameters (?s - t4) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
  (:durative-action step5
    :parameters (?s - t5) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
  (:durative-action step6
    :parameters (?s - t6) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
  (:durative-action step7
    :parameters (?s - t7) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p19)) (at start (p25)) (at start (p51)) (at start (p55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
  (:durative-action step8
    :parameters (?s - t8) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
  (:durative-action step9
    :parameters (?s - t9) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p39)) (at start (p46)) (at start (p59)) (at start (p67)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
  (:durative-action step10
    :parameters (?s - t10) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
  (:durative-action step11
    :parameters (?s - t11) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p13)) (at start (p31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
  (:durative-action step12
    :parameters (?s - t12) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
  (:durative-action step13
    :parameters (?s - t13) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
  (:durative-action step14
    :parameters (?s - t14) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p21)) (at start (p28)) (at start (p47)) (at start (p50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
  (:durative-action step15
    :parameters (?s - t15) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p46)) (at start (p53)) (at start (p65)) (at start (p69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
  (:durative-action step16
    :parameters (?s - t16) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
  (:durative-action step17
    :parameters (?s - t17) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p11)) (at start (p16)) (at start (p30)) (at start (p33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
  (:durative-action step18
    :parameters (?s - t18) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
  (:durative-action step19
    :parameters (?s - t19) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p13)) (at start (p27)) (at start (p33)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
  (:durative-action step20
    :parameters (?s - t20) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p29)) (at start (p32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
  (:durative-action step21
    :parameters (?s - t21) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p38)) (at start (p47)) (at start (p65)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
  (:durative-action step22
    :parameters (?s - t22) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p13)) (at start (p60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
  (:durative-action step23
    :parameters (?s - t23) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p28)) (at start (p55)) (at start (p60)) (at start (p66)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
  (:durative-action step24
    :parameters (?s - t24) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
  (:durative-action step25
    :parameters (?s - t25) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p34)) (at start (p39)) (at start (p69)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
  (:durative-action step26
    :parameters (?s - t26) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p19)) (at start (p49)) (at start (p68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
  (:durative-action step27
    :parameters (?s - t27) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
  (:durative-action step28
    :parameters (?s - t28) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
  (:durative-action step29
    :parameters (?s - t29) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
  (:durative-action step30
    :parameters (?s - t30) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p53)) (at start (p64)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
  (:durative-action step31
    :parameters (?s - t31) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p23)) (at start (p29)) (at start (p37)) (at start (p42)) (at start (p59)) (at start (p62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
  (:durative-action step32
    :parameters (?s - t32) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
  (:durative-action step33
    :parameters (?s - t33) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
  (:durative-action step34
    :parameters (?s - t34) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
  (:durative-action step35
    :parameters (?s - t35) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
  (:durative-action step36
    :parameters (?s - t36) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p37)) (at start (p54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
  (:durative-action step37
    :parameters (?s - t37) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
  (:durative-action step38
    :parameters (?s - t38) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p34)) (at start (p47)) (at start (p70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
  (:durative-action step39
    :parameters (?s - t39) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
  (:durative-action step40
    :parameters (?s - t40) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
  (:durative-action step41
    :parameters (?s - t41) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (p10)) (at start (p26)) (at start (p37)) (at start (p39)) (at start (p62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
  (:durative-action step42
    :parameters (?s - t42) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
  (:durative-action step43
    :parameters (?s - t43) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
  (:durative-action step44
    :parameters (?s - t44) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p30)) (at start (p41)) (at start (p55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
  (:durative-action step45
    :parameters (?s - t45) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
  (:durative-action step46
    :parameters (?s - t46) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
  (:durative-action step47
    :parameters (?s - t47) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
  (:durative-action step48
    :parameters (?s - t48) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p9)) (at start (p47)) (at start (p54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
  (:durative-action step49
    :parameters (?s - t49) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
  (:durative-action step50
    :parameters (?s - t50) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
  (:durative-action step51
    :parameters (?s - t51) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p51))))
  (:durative-action step52
    :parameters (?s - t52) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p67)) (at start (p68)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p52))))
  (:durative-action step53
    :parameters (?s - t53) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p53))))
  (:durative-action step54
    :parameters (?s - t54) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (p22)) (at start (p39)) (at start (p40)) (at start (p46)) (at start (p62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p54))))
  (:durative-action step55
    :parameters (?s - t55) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p35)) (at start (p53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p55))))
  (:durative-action step56
    :parameters (?s - t56) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p56))))
  (:durative-action step57
    :parameters (?s - t57) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p35)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p57))))
  (:durative-action step58
    :parameters (?s - t58) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p27)) (at start (p28)) (at start (p37)) (at start (p51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p58))))
  (:durative-action step59
    :parameters (?s - t59) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p25)) (at start (p45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p59))))
  (:durative-action step60
    :parameters (?s - t60) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p60))))
  (:durative-action step61
    :parameters (?s - t61) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p61))))
  (:durative-action step62
    :parameters (?s - t62) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p30)) (at start (p70)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p62))))
  (:durative-action step63
    :parameters (?s - t63) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p33)) (at start (p41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p63))))
  (:durative-action step64
    :parameters (?s - t64) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p64))))
  (:durative-action step65
    :parameters (?s - t65) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (p13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p65))))
  (:durative-action step66
    :parameters (?s - t66) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p50)) (at start (p54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p66))))
  (:durative-action step67
    :parameters (?s - t67) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p67))))
  (:durative-action step68
    :parameters (?s - t68) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p32)) (at start (p46)) (at start (p53)) (at start (p60)) (at start (p62)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p68))))
  (:durative-action step69
    :parameters (?s - t69) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (p34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p69))))
  (:durative-action step70
    :parameters (?s - t70) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p70))))
)