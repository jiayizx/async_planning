(define (domain annual-report-apa)
 (:requirements :durative-actions :typing)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50))

 (:durative-action do_step1
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step1)) (at start (p17)) (at start (p24)))
  :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (p1))))
 (:durative-action do_step2
  :parameters () :duration (= ?duration 300)
  :condition (at start (step_pending step2))
  :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (p2))))
 (:durative-action do_step3
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step3)) (at start (p5)))
  :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (p3))))
 (:durative-action do_step4
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step4)) (at start (p32)) (at start (p34)) (at start (p40)))
  :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (p4))))
 (:durative-action do_step5
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step5)) (at start (p42)))
  :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (p5))))
 (:durative-action do_step6
  :parameters () :duration (= ?duration 480)
  :condition (at start (step_pending step6))
  :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (p6))))
 (:durative-action do_step7
  :parameters () :duration (= ?duration 240)
  :condition (at start (step_pending step7))
  :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (p7))))
 (:durative-action do_step8
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step8)) (at start (p22)))
  :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (p8))))
 (:durative-action do_step9
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step9)) (at start (p43)))
  :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (p9))))
 (:durative-action do_step10
  :parameters () :duration (= ?duration 180)
  :condition (at start (step_pending step10))
  :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (p10))))
 (:durative-action do_step11
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step11)) (at start (p2)) (at start (p5)))
  :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (p11))))
 (:durative-action do_step12
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step12)) (at start (p35)))
  :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (p12))))
 (:durative-action do_step13
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step13)) (at start (p18)))
  :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (p13))))
 (:durative-action do_step14
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step14)) (at start (p22)) (at start (p36)) (at start (p39)) (at start (p47)))
  :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (p14))))
 (:durative-action do_step15
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step15)) (at start (p2)) (at start (p10)) (at start (p25)) (at start (p37)))
  :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (p15))))
 (:durative-action do_step16
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step16)) (at start (p21)))
  :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (p16))))
 (:durative-action do_step17
  :parameters () :duration (= ?duration 600)
  :condition (at start (step_pending step17))
  :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (p17))))
 (:durative-action do_step18
  :parameters () :duration (= ?duration 60)
  :condition (at start (step_pending step18))
  :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (p18))))
 (:durative-action do_step19
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step19)) (at start (p22)))
  :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (p19))))
 (:durative-action do_step20
  :parameters () :duration (= ?duration 360)
  :condition (at start (step_pending step20))
  :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (p20))))
 (:durative-action do_step21
  :parameters () :duration (= ?duration 420)
  :condition (and (at start (step_pending step21)) (at start (p37)))
  :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (p21))))
 (:durative-action do_step22
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step22)) (at start (p6)) (at start (p18)) (at start (p30)))
  :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (p22))))
 (:durative-action do_step23
  :parameters () :duration (= ?duration 720)
  :condition (and (at start (step_pending step23)) (at start (p32)))
  :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (p23))))
 (:durative-action do_step24
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step24)) (at start (p46)))
  :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (p24))))
 (:durative-action do_step25
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step25)) (at start (p21)))
  :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (p25))))
 (:durative-action do_step26
  :parameters () :duration (= ?duration 240)
  :condition (at start (step_pending step26))
  :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (p26))))
 (:durative-action do_step27
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step27)) (at start (p22)) (at start (p35)))
  :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (p27))))
 (:durative-action do_step28
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step28)) (at start (p3)))
  :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (p28))))
 (:durative-action do_step29
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step29)) (at start (p30)) (at start (p37)))
  :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (p29))))
 (:durative-action do_step30
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step30)) (at start (p7)))
  :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (p30))))
 (:durative-action do_step31
  :parameters () :duration (= ?duration 360)
  :condition (and (at start (step_pending step31)) (at start (p7)) (at start (p30)))
  :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (p31))))
 (:durative-action do_step32
  :parameters () :duration (= ?duration 2700)
  :condition (and (at start (step_pending step32)) (at start (p37)))
  :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (p32))))
 (:durative-action do_step33
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step33)) (at start (p18)))
  :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (p33))))
 (:durative-action do_step34
  :parameters () :duration (= ?duration 480)
  :condition (and (at start (step_pending step34)) (at start (p1)) (at start (p5)) (at start (p11)) (at start (p13)) (at start (p20)) (at start (p33)) (at start (p41)))
  :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (p34))))
 (:durative-action do_step35
  :parameters () :duration (= ?duration 420)
  :condition (at start (step_pending step35))
  :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (p35))))
 (:durative-action do_step36
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (step_pending step36)) (at start (p31)))
  :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (p36))))
 (:durative-action do_step37
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step37)) (at start (p28)))
  :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (p37))))
 (:durative-action do_step38
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step38)) (at start (p6)))
  :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (p38))))
 (:durative-action do_step39
  :parameters () :duration (= ?duration 1500)
  :condition (and (at start (step_pending step39)) (at start (p31)) (at start (p34)))
  :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (p39))))
 (:durative-action do_step40
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step40)) (at start (p7)))
  :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (p40))))
 (:durative-action do_step41
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step41)) (at start (p17)))
  :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (p41))))
 (:durative-action do_step42
  :parameters () :duration (= ?duration 120)
  :condition (at start (step_pending step42))
  :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (p42))))
 (:durative-action do_step43
  :parameters () :duration (= ?duration 360)
  :condition (and (at start (step_pending step43)) (at start (p2)) (at start (p31)) (at start (p34)))
  :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (p43))))
 (:durative-action do_step44
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step44)) (at start (p8)) (at start (p10)) (at start (p41)) (at start (p48)))
  :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (p44))))
 (:durative-action do_step45
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step45)) (at start (p25)) (at start (p49)))
  :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (p45))))
 (:durative-action do_step46
  :parameters () :duration (= ?duration 300)
  :condition (at start (step_pending step46))
  :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (p46))))
 (:durative-action do_step47
  :parameters () :duration (= ?duration 720)
  :condition (and (at start (step_pending step47)) (at start (p5)) (at start (p45)) (at start (p48)))
  :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (p47))))
 (:durative-action do_step48
  :parameters () :duration (= ?duration 60)
  :condition (at start (step_pending step48))
  :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (p48))))
 (:durative-action do_step49
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step49)) (at start (p46)))
  :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (p49))))
 (:durative-action do_step50
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step50)) (at start (p26)) (at start (p33)) (at start (p43)) (at start (p46)))
  :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (p50))))
)