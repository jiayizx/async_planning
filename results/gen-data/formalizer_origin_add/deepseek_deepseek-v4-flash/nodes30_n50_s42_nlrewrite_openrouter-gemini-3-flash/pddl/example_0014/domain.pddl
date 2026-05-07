(define (domain melt_almond_bark)
  (:requirements :durative-actions :typing)
  (:types step)
  (:constants
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30 - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done ?s - step)
  )
  (:durative-action do_step1
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step1)) (at start (done step3)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done step1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step2)) (at start (done step28)) (at start (done step5)) (at start (done step13)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done step2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 1200)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done step3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (done step16)) (at start (done step22)) (at start (done step13)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done step4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step5)) (at start (done step13)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done step5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step6)) (at start (done step1)) (at start (done step3)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done step6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step7)) (at start (done step24)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done step7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 5)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done step8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step9)) (at start (done step8)) (at start (done step27)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done step9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step10)) (at start (done step8)) (at start (done step19)) (at start (done step11)) (at start (done step30)) (at start (done step7)) (at start (done step15)) (at start (done step24)) (at start (done step2)) (at start (done step28)) (at start (done step5)) (at start (done step13)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done step10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step11)) (at start (done step7)) (at start (done step15)) (at start (done step24)) (at start (done step2)) (at start (done step28)) (at start (done step5)) (at start (done step13)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done step11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step12)) (at start (done step18)) (at start (done step30)) (at start (done step13)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done step12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 180)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done step13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step14)) (at start (done step6)) (at start (done step1)) (at start (done step3)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done step14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step15)) (at start (done step2)) (at start (done step28)) (at start (done step5)) (at start (done step13)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done step15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step16)) (at start (done step22)) (at start (done step13)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done step16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step17)) (at start (done step1)) (at start (done step8)) (at start (done step3)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done step17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step18)) (at start (done step30)) (at start (done step13)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done step18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step19)) (at start (done step11)) (at start (done step30)) (at start (done step7)) (at start (done step15)) (at start (done step24)) (at start (done step2)) (at start (done step28)) (at start (done step5)) (at start (done step13)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done step19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step20)) (at start (done step23)) (at start (done step4)) (at start (done step16)) (at start (done step22)) (at start (done step13)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done step20)))
  )
  (:durative-action do_step21
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step21)) (at start (done step12)) (at start (done step24)) (at start (done step27)) (at start (done step18)) (at start (done step30)) (at start (done step13)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done step21)))
  )
  (:durative-action do_step22
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step22)) (at start (done step13)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done step22)))
  )
  (:durative-action do_step23
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step23)) (at start (done step4)) (at start (done step16)) (at start (done step22)) (at start (done step13)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done step23)))
  )
  (:durative-action do_step24
    :duration (= ?duration 60)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done step24)))
  )
  (:durative-action do_step25
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step25)) (at start (done step28)) (at start (done step5)) (at start (done step13)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done step25)))
  )
  (:durative-action do_step26
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step26)) (at start (done step9)) (at start (done step8)) (at start (done step27)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done step26)))
  )
  (:durative-action do_step27
    :duration (= ?duration 10)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done step27)))
  )
  (:durative-action do_step28
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (done step5)) (at start (done step13)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done step28)))
  )
  (:durative-action do_step29
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step29)) (at start (done step8)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done step29)))
  )
  (:durative-action do_step30
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step30)) (at start (done step13)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done step30)))
  )
)