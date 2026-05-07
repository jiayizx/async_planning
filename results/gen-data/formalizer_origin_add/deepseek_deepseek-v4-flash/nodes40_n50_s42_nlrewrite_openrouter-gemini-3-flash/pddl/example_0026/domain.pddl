(define (domain body_surf)
  (:requirements :durative-actions :typing :numeric-fluents)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step_complete ?s - step))

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step1)) (at start (step_complete step25)) (at start (step_complete step35)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step_complete step1))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step_complete step2))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (step_complete step2)) (at start (step_complete step9)) (at start (step_complete step16)) (at start (step_complete step27)) (at start (step_complete step33)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step_complete step3))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step_complete step4))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (step_complete step11)) (at start (step_complete step15)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step_complete step5))))

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (step_complete step14)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step_complete step6))))

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step_complete step7))))

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (step_complete step26)) (at start (step_complete step29)) (at start (step_complete step30)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step_complete step8))))

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step_complete step9))))

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (step_complete step13)) (at start (step_complete step14)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step_complete step10))))

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step11)) (at start (step_complete step22)) (at start (step_complete step25)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step_complete step11))))

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step12)) (at start (step_complete step2)) (at start (step_complete step26)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step_complete step12))))

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step_complete step13))))

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step14)) (at start (step_complete step31)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step_complete step14))))

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step15)) (at start (step_complete step4)) (at start (step_complete step25)) (at start (step_complete step31)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step_complete step15))))

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step16)) (at start (step_complete step4)) (at start (step_complete step25)) (at start (step_complete step31)) (at start (step_complete step38)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step_complete step16))))

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step_complete step17))))

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step18)) (at start (step_complete step3)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step_complete step18))))

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step19)) (at start (step_complete step12)) (at start (step_complete step31)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step_complete step19))))

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step20)) (at start (step_complete step28)) (at start (step_complete step31)) (at start (step_complete step39)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step_complete step20))))

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step21)) (at start (step_complete step12)) (at start (step_complete step15)) (at start (step_complete step24)) (at start (step_complete step33)) (at start (step_complete step40)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step_complete step21))))

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step22)) (at start (step_complete step12)) (at start (step_complete step17)) (at start (step_complete step35)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step_complete step22))))

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step_complete step23))))

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step24)) (at start (step_complete step12)) (at start (step_complete step20)) (at start (step_complete step34)) (at start (step_complete step37)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step_complete step24))))

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (step_complete step4)) (at start (step_complete step14)) (at start (step_complete step26)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step_complete step25))))

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step_complete step26))))

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step27)) (at start (step_complete step23)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step_complete step27))))

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step28)) (at start (step_complete step9)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step_complete step28))))

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step29)) (at start (step_complete step2)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step_complete step29))))

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step30)) (at start (step_complete step2)) (at start (step_complete step4)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step_complete step30))))

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step31)) (at start (step_complete step12)) (at start (step_complete step13)) (at start (step_complete step26)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step_complete step31))))

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step32)) (at start (step_complete step5)) (at start (step_complete step15)) (at start (step_complete step26)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step_complete step32))))

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step33)) (at start (step_complete step10)) (at start (step_complete step20)) (at start (step_complete step39)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step_complete step33))))

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step34)) (at start (step_complete step7)) (at start (step_complete step12)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step_complete step34))))

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step_complete step35))))

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step36)) (at start (step_complete step1)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step_complete step36))))

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step37)) (at start (step_complete step12)) (at start (step_complete step35)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step_complete step37))))

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step38)) (at start (step_complete step26)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step_complete step38))))

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step_complete step39))))

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step40)) (at start (step_complete step20)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step_complete step40))))
)
