(define (domain cookies)
 (:requirements :typing :durative-actions)
 (:types
  step - object
  t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
  t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40
  t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t60
  t61 t62 t63 t64 t65 t66 t67 t68 t69 t70 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
  (p61) (p62) (p63) (p64) (p65) (p66) (p67) (p68) (p69) (p70))

 (:durative-action a1
  :parameters (?s - t1) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
 (:durative-action a2
  :parameters (?s - t2) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
 (:durative-action a3
  :parameters (?s - t3) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
 (:durative-action a4
  :parameters (?s - t4) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
 (:durative-action a5
  :parameters (?s - t5) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p34)) (at start (p37)) (at start (p61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
 (:durative-action a6
  :parameters (?s - t6) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p33)) (at start (p40)) (at start (p43)) (at start (p65)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
 (:durative-action a7
  :parameters (?s - t7) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p4)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
 (:durative-action a8
  :parameters (?s - t8) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
 (:durative-action a9
  :parameters (?s - t9) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
 (:durative-action a10
  :parameters (?s - t10) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p34)) (at start (p58)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
 (:durative-action a11
  :parameters (?s - t11) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
 (:durative-action a12
  :parameters (?s - t12) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
 (:durative-action a13
  :parameters (?s - t13) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
 (:durative-action a14
  :parameters (?s - t14) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
 (:durative-action a15
  :parameters (?s - t15) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
 (:durative-action a16
  :parameters (?s - t16) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
 (:durative-action a17
  :parameters (?s - t17) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p13)) (at start (p21)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
 (:durative-action a18
  :parameters (?s - t18) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
 (:durative-action a19
  :parameters (?s - t19) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
 (:durative-action a20
  :parameters (?s - t20) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
 (:durative-action a21
  :parameters (?s - t21) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
 (:durative-action a22
  :parameters (?s - t22) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p36)) (at start (p38)) (at start (p48)) (at start (p57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
 (:durative-action a23
  :parameters (?s - t23) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
 (:durative-action a24
  :parameters (?s - t24) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
 (:durative-action a25
  :parameters (?s - t25) :duration (= ?duration 360)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
 (:durative-action a26
  :parameters (?s - t26) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p40)) (at start (p44)) (at start (p45)) (at start (p62)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
 (:durative-action a27
  :parameters (?s - t27) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p26)) (at start (p28)) (at start (p56)) (at start (p57)) (at start (p62)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
 (:durative-action a28
  :parameters (?s - t28) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
 (:durative-action a29
  :parameters (?s - t29) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
 (:durative-action a30
  :parameters (?s - t30) :duration (= ?duration 240)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
 (:durative-action a31
  :parameters (?s - t31) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
 (:durative-action a32
  :parameters (?s - t32) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
 (:durative-action a33
  :parameters (?s - t33) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p16)) (at start (p57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
 (:durative-action a34
  :parameters (?s - t34) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p31)) (at start (p39)) (at start (p42)) (at start (p43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
 (:durative-action a35
  :parameters (?s - t35) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
 (:durative-action a36
  :parameters (?s - t36) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p44)) (at start (p48)) (at start (p62)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
 (:durative-action a37
  :parameters (?s - t37) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
 (:durative-action a38
  :parameters (?s - t38) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
 (:durative-action a39
  :parameters (?s - t39) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
 (:durative-action a40
  :parameters (?s - t40) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
 (:durative-action a41
  :parameters (?s - t41) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p29)) (at start (p43)) (at start (p44)) (at start (p62)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
 (:durative-action a42
  :parameters (?s - t42) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p26)) (at start (p58)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
 (:durative-action a43
  :parameters (?s - t43) :duration (= ?duration 40)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
 (:durative-action a44
  :parameters (?s - t44) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p66)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
 (:durative-action a45
  :parameters (?s - t45) :duration (= ?duration 30)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
 (:durative-action a46
  :parameters (?s - t46) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p43)) (at start (p61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
 (:durative-action a47
  :parameters (?s - t47) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p11)) (at start (p27)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
 (:durative-action a48
  :parameters (?s - t48) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
 (:durative-action a49
  :parameters (?s - t49) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p15)) (at start (p30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
 (:durative-action a50
  :parameters (?s - t50) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p26)) (at start (p29)) (at start (p54)) (at start (p66)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
 (:durative-action a51
  :parameters (?s - t51) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p29)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p51))))
 (:durative-action a52
  :parameters (?s - t52) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p31)) (at start (p51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p52))))
 (:durative-action a53
  :parameters (?s - t53) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p53))))
 (:durative-action a54
  :parameters (?s - t54) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p41)) (at start (p44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p54))))
 (:durative-action a55
  :parameters (?s - t55) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p51)) (at start (p60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p55))))
 (:durative-action a56
  :parameters (?s - t56) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p56))))
 (:durative-action a57
  :parameters (?s - t57) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p19)) (at start (p41)) (at start (p43)) (at start (p61)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p57))))
 (:durative-action a58
  :parameters (?s - t58) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p30)) (at start (p63)) (at start (p66)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p58))))
 (:durative-action a59
  :parameters (?s - t59) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p59))))
 (:durative-action a60
  :parameters (?s - t60) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p30)) (at start (p42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p60))))
 (:durative-action a61
  :parameters (?s - t61) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p51)) (at start (p63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p61))))
 (:durative-action a62
  :parameters (?s - t62) :duration (= ?duration 180)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p62))))
 (:durative-action a63
  :parameters (?s - t63) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p63))))
 (:durative-action a64
  :parameters (?s - t64) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (p63)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p64))))
 (:durative-action a65
  :parameters (?s - t65) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p53)) (at start (p66)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p65))))
 (:durative-action a66
  :parameters (?s - t66) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p66))))
 (:durative-action a67
  :parameters (?s - t67) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p67))))
 (:durative-action a68
  :parameters (?s - t68) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p68))))
 (:durative-action a69
  :parameters (?s - t69) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p67)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p69))))
 (:durative-action a70
  :parameters (?s - t70) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p70))))
)