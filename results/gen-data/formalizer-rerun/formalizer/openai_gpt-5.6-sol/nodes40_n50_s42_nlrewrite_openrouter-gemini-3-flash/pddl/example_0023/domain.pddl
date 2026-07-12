(define (domain orchid-care)
  (:requirements :durative-actions :typing)
  (:types step)
  (:constants step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 step11 step12 step13 step14 step15 step16 step17 step18 step19 step20 step21 step22 step23 step24 step25 step26 step27 step28 step29 step30 step31 step32 step33 step34 step35 step36 step37 step38 step39 step40 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
    (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40))

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step1)) (at start (d3)) (at start (d4)) (at start (d11)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (d1))))

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (d2))))

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (d19)) (at start (d30)) (at start (d31)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (d3))))

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step4)) (at start (d13)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (d4))))

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (d2)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (d5))))

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (d6))))

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (d20)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (d7))))

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (d30)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (d8))))

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (d1)) (at start (d33)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (d9))))

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step10)) (at start (d13)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (d10))))

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (d11))))

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (d12))))

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (d13))))

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step14)) (at start (d20)) (at start (d32)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (d14))))

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (d15))))

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step16)) (at start (d15)) (at start (d24)) (at start (d27)) (at start (d34)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (d16))))

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step17)) (at start (d5)) (at start (d6)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (d17))))

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step18)) (at start (d12)) (at start (d25)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (d18))))

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step19)) (at start (d17)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (d19))))

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (d20))))

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step21)) (at start (d17)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (d21))))

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step22)) (at start (d1)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (d22))))

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (d23))))

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step24)) (at start (d8)) (at start (d13)) (at start (d30)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (d24))))

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (d2)) (at start (d32)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (d25))))

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step26)) (at start (d4)) (at start (d5)) (at start (d8)) (at start (d32)) (at start (d36)) (at start (d39)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (d26))))

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step27)) (at start (d20)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (d27))))

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step28)) (at start (d6)) (at start (d13)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (d28))))

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step29)) (at start (d21)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (d29))))

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step30)) (at start (d14)) (at start (d40)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (d30))))

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step31)) (at start (d2)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (d31))))

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending step32)) (at start (d23)) (at start (d35)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (d32))))

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step33)) (at start (d4)) (at start (d16)) (at start (d22)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (d33))))

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step34)) (at start (d1)) (at start (d14)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (d34))))

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (d35))))

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step36)) (at start (d37)) (at start (d39)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (d36))))

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step37)) (at start (d31)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (d37))))

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step38)) (at start (d15)) (at start (d29)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (d38))))

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step39)) (at start (d19)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (d39))))

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step40)) (at start (d32)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (d40))))
)