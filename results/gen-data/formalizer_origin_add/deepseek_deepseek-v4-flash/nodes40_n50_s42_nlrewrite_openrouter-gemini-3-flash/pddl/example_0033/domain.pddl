(define (domain teabag_enrichment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (outcome ?s - step)
  )
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (outcome step1))))
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (outcome step3)) (at start (outcome step22)) (at start (outcome step32)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (outcome step2))))
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (outcome step3))))
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (outcome step4))))
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step5)) (at start (outcome step27)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (outcome step5))))
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (outcome step1)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step18)) (at start (outcome step23)) (at start (outcome step39)) (at start (outcome step40)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (outcome step6))))
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step7)) (at start (outcome step1)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (outcome step7))))
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (outcome step9)) (at start (outcome step39)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (outcome step8))))
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (outcome step39)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (outcome step9))))
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step10)) (at start (outcome step1)) (at start (outcome step6)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step11)) (at start (outcome step18)) (at start (outcome step23)) (at start (outcome step25)) (at start (outcome step32)) (at start (outcome step39)) (at start (outcome step40)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (outcome step10))))
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step11)) (at start (outcome step25)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (outcome step11))))
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step12)) (at start (outcome step9)) (at start (outcome step39)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (outcome step12))))
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step13)) (at start (outcome step2)) (at start (outcome step3)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step22)) (at start (outcome step32)) (at start (outcome step39)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (outcome step13))))
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step14)) (at start (outcome step1)) (at start (outcome step4)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step17)) (at start (outcome step18)) (at start (outcome step23)) (at start (outcome step24)) (at start (outcome step39)) (at start (outcome step40)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (outcome step14))))
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step15)) (at start (outcome step9)) (at start (outcome step39)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (outcome step15))))
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step16)) (at start (outcome step1)) (at start (outcome step6)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step11)) (at start (outcome step18)) (at start (outcome step23)) (at start (outcome step25)) (at start (outcome step32)) (at start (outcome step39)) (at start (outcome step40)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (outcome step16))))
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step17)) (at start (outcome step4)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (outcome step17))))
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step18)) (at start (outcome step1)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step23)) (at start (outcome step39)) (at start (outcome step40)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (outcome step18))))
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step19)) (at start (outcome step24)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (outcome step19))))
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step20)) (at start (outcome step1)) (at start (outcome step2)) (at start (outcome step3)) (at start (outcome step4)) (at start (outcome step6)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step14)) (at start (outcome step17)) (at start (outcome step18)) (at start (outcome step22)) (at start (outcome step23)) (at start (outcome step24)) (at start (outcome step30)) (at start (outcome step32)) (at start (outcome step39)) (at start (outcome step40)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (outcome step20))))
  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending step21)) (at start (outcome step1)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (outcome step21))))
  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step22)) (at start (outcome step32)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (outcome step22))))
  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step23)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step39)) (at start (outcome step40)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (outcome step23))))
  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (outcome step24))))
  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (outcome step25))))
  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step26)) (at start (outcome step3)) (at start (outcome step9)) (at start (outcome step12)) (at start (outcome step28)) (at start (outcome step39)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (outcome step26))))
  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (outcome step27))))
  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (outcome step28))))
  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step29)) (at start (outcome step1)) (at start (outcome step7)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (outcome step29))))
  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step30)) (at start (outcome step1)) (at start (outcome step2)) (at start (outcome step3)) (at start (outcome step4)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step14)) (at start (outcome step17)) (at start (outcome step18)) (at start (outcome step22)) (at start (outcome step23)) (at start (outcome step24)) (at start (outcome step32)) (at start (outcome step39)) (at start (outcome step40)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (outcome step30))))
  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step31)) (at start (outcome step1)) (at start (outcome step2)) (at start (outcome step3)) (at start (outcome step4)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step14)) (at start (outcome step17)) (at start (outcome step18)) (at start (outcome step22)) (at start (outcome step23)) (at start (outcome step24)) (at start (outcome step30)) (at start (outcome step32)) (at start (outcome step38)) (at start (outcome step39)) (at start (outcome step40)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (outcome step31))))
  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (outcome step32))))
  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step33)) (at start (outcome step1)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step21)) (at start (outcome step23)) (at start (outcome step25)) (at start (outcome step34)) (at start (outcome step35)) (at start (outcome step36)) (at start (outcome step39)) (at start (outcome step40)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (outcome step33))))
  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step34)) (at start (outcome step1)) (at start (outcome step21)) (at start (outcome step25)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (outcome step34))))
  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step35)) (at start (outcome step1)) (at start (outcome step21)) (at start (outcome step25)) (at start (outcome step34)) (at start (outcome step36)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (outcome step35))))
  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step36)) (at start (outcome step1)) (at start (outcome step21)) (at start (outcome step25)) (at start (outcome step34)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (outcome step36))))
  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step37)) (at start (outcome step1)) (at start (outcome step4)) (at start (outcome step8)) (at start (outcome step9)) (at start (outcome step14)) (at start (outcome step17)) (at start (outcome step18)) (at start (outcome step23)) (at start (outcome step24)) (at start (outcome step39)) (at start (outcome step40)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (outcome step37))))
  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step38)) (at start (outcome step22)) (at start (outcome step32)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (outcome step38))))
  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (outcome step39))))
  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (outcome step40))))
)
