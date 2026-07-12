(define (domain sponge-rollers)
 (:requirements :typing :durative-actions)
 (:types step)
 (:constants step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 step11 step12 step13 step14 step15 step16 step17 step18 step19 step20 step21 step22 step23 step24 step25 step26 step27 step28 step29 step30 step31 step32 step33 step34 step35 step36 step37 step38 step39 step40 step41 step42 step43 step44 step45 step46 step47 step48 step49 step50 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50))
 (:durative-action do_step1
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (step_pending step1)) (at start (d38)) (at start (d47)) (at start (d49)))
  :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (d1))))
 (:durative-action do_step2
  :parameters () :duration (= ?duration 600)
  :condition (at start (step_pending step2))
  :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (d2))))
 (:durative-action do_step3
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step3)) (at start (d27)))
  :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (d3))))
 (:durative-action do_step4
  :parameters () :duration (= ?duration 240)
  :condition (at start (step_pending step4))
  :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (d4))))
 (:durative-action do_step5
  :parameters () :duration (= ?duration 60)
  :condition (at start (step_pending step5))
  :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (d5))))
 (:durative-action do_step6
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step6)) (at start (d29)) (at start (d40)))
  :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (d6))))
 (:durative-action do_step7
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step7)) (at start (d20)) (at start (d40)))
  :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (d7))))
 (:durative-action do_step8
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step8)) (at start (d24)))
  :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (d8))))
 (:durative-action do_step9
  :parameters () :duration (= ?duration 21600)
  :condition (and (at start (step_pending step9)) (at start (d2)) (at start (d25)) (at start (d40)) (at start (d46)) (at start (d49)))
  :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (d9))))
 (:durative-action do_step10
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (step_pending step10)) (at start (d7)) (at start (d28)))
  :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (d10))))
 (:durative-action do_step11
  :parameters () :duration (= ?duration 30)
  :condition (and (at start (step_pending step11)) (at start (d27)) (at start (d29)) (at start (d39)))
  :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (d11))))
 (:durative-action do_step12
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step12)) (at start (d3)))
  :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (d12))))
 (:durative-action do_step13
  :parameters () :duration (= ?duration 1200)
  :condition (and (at start (step_pending step13)) (at start (d2)))
  :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (d13))))
 (:durative-action do_step14
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step14)) (at start (d29)))
  :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (d14))))
 (:durative-action do_step15
  :parameters () :duration (= ?duration 60)
  :condition (at start (step_pending step15))
  :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (d15))))
 (:durative-action do_step16
  :parameters () :duration (= ?duration 15)
  :condition (and (at start (step_pending step16)) (at start (d17)) (at start (d19)) (at start (d30)) (at start (d49)))
  :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (d16))))
 (:durative-action do_step17
  :parameters () :duration (= ?duration 45)
  :condition (and (at start (step_pending step17)) (at start (d8)) (at start (d42)))
  :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (d17))))
 (:durative-action do_step18
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (step_pending step18)) (at start (d20)) (at start (d23)) (at start (d42)) (at start (d47)))
  :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (d18))))
 (:durative-action do_step19
  :parameters () :duration (= ?duration 20)
  :condition (and (at start (step_pending step19)) (at start (d20)))
  :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (d19))))
 (:durative-action do_step20
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step20)) (at start (d2)) (at start (d14)))
  :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (d20))))
 (:durative-action do_step21
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step21)) (at start (d7)) (at start (d24)))
  :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (d21))))
 (:durative-action do_step22
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step22)) (at start (d4)) (at start (d10)) (at start (d16)) (at start (d40)) (at start (d50)))
  :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (d22))))
 (:durative-action do_step23
  :parameters () :duration (= ?duration 120)
  :condition (at start (step_pending step23))
  :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (d23))))
 (:durative-action do_step24
  :parameters () :duration (= ?duration 480)
  :condition (and (at start (step_pending step24)) (at start (d14)) (at start (d20)) (at start (d44)))
  :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (d24))))
 (:durative-action do_step25
  :parameters () :duration (= ?duration 180)
  :condition (at start (step_pending step25))
  :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (d25))))
 (:durative-action do_step26
  :parameters () :duration (= ?duration 720)
  :condition (and (at start (step_pending step26)) (at start (d7)) (at start (d30)))
  :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (d26))))
 (:durative-action do_step27
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step27)) (at start (d25)))
  :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (d27))))
 (:durative-action do_step28
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step28)) (at start (d29)) (at start (d32)))
  :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (d28))))
 (:durative-action do_step29
  :parameters () :duration (= ?duration 300)
  :condition (at start (step_pending step29))
  :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (d29))))
 (:durative-action do_step30
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step30)) (at start (d8)) (at start (d32)) (at start (d40)) (at start (d49)))
  :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (d30))))
 (:durative-action do_step31
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step31)) (at start (d10)) (at start (d42)))
  :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (d31))))
 (:durative-action do_step32
  :parameters () :duration (= ?duration 180)
  :condition (and (at start (step_pending step32)) (at start (d29)))
  :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (d32))))
 (:durative-action do_step33
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step33)) (at start (d9)))
  :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (d33))))
 (:durative-action do_step34
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step34)) (at start (d20)) (at start (d40)) (at start (d47)))
  :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (d34))))
 (:durative-action do_step35
  :parameters () :duration (= ?duration 2700)
  :condition (and (at start (step_pending step35)) (at start (d8)) (at start (d36)))
  :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (d35))))
 (:durative-action do_step36
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step36)) (at start (d3)) (at start (d24)))
  :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (d36))))
 (:durative-action do_step37
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step37)) (at start (d4)) (at start (d19)) (at start (d28)) (at start (d46)))
  :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (d37))))
 (:durative-action do_step38
  :parameters () :duration (= ?duration 10)
  :condition (and (at start (step_pending step38)) (at start (d5)) (at start (d17)))
  :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (d38))))
 (:durative-action do_step39
  :parameters () :duration (= ?duration 240)
  :condition (and (at start (step_pending step39)) (at start (d6)))
  :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (d39))))
 (:durative-action do_step40
  :parameters () :duration (= ?duration 600)
  :condition (and (at start (step_pending step40)) (at start (d29)))
  :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (d40))))
 (:durative-action do_step41
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step41)) (at start (d6)) (at start (d43)))
  :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (d41))))
 (:durative-action do_step42
  :parameters () :duration (= ?duration 60)
  :condition (at start (step_pending step42))
  :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (d42))))
 (:durative-action do_step43
  :parameters () :duration (= ?duration 300)
  :condition (and (at start (step_pending step43)) (at start (d9)) (at start (d24)))
  :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (d43))))
 (:durative-action do_step44
  :parameters () :duration (= ?duration 120)
  :condition (at start (step_pending step44))
  :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (d44))))
 (:durative-action do_step45
  :parameters () :duration (= ?duration 28800)
  :condition (and (at start (step_pending step45)) (at start (d2)) (at start (d8)))
  :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (d45))))
 (:durative-action do_step46
  :parameters () :duration (= ?duration 900)
  :condition (and (at start (step_pending step46)) (at start (d15)) (at start (d21)) (at start (d35)) (at start (d39)) (at start (d40)) (at start (d45)))
  :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (d46))))
 (:durative-action do_step47
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step47)) (at start (d2)))
  :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (d47))))
 (:durative-action do_step48
  :parameters () :duration (= ?duration 60)
  :condition (and (at start (step_pending step48)) (at start (d40)))
  :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (d48))))
 (:durative-action do_step49
  :parameters () :duration (= ?duration 300)
  :condition (at start (step_pending step49))
  :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (d49))))
 (:durative-action do_step50
  :parameters () :duration (= ?duration 120)
  :condition (and (at start (step_pending step50)) (at start (d45)))
  :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (d50))))
)