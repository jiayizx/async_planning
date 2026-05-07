(define (domain dog-toy-making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed ?s - step)
  )
  (:durative-action do_step1
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step1)) (at start (completed step11)) (at start (completed step26)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed step1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step2)) (at start (completed step14)) (at start (completed step17)) (at start (completed step28)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed step2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 7200)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed step3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (completed step5)) (at start (completed step9)) (at start (completed step30)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed step4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (completed step9)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed step5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (completed step1)) (at start (completed step3)) (at start (completed step11)) (at start (completed step12)) (at start (completed step13)) (at start (completed step15)) (at start (completed step16)) (at start (completed step17)) (at start (completed step20)) (at start (completed step23)) (at start (completed step24)) (at start (completed step25)) (at start (completed step26)) (at start (completed step29)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed step6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step7)) (at start (completed step3)) (at start (completed step5)) (at start (completed step9)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed step7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step8)) (at start (completed step17)) (at start (completed step23)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed step8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 259200)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed step9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step10)) (at start (completed step8)) (at start (completed step17)) (at start (completed step22)) (at start (completed step23)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed step10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 14400)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed step11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step12)) (at start (completed step29)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed step12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 1800)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed step13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (completed step17)) (at start (completed step28)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed step14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 900)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed step15)))
  )
  (:durative-action do_step16
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step16)) (at start (completed step1)) (at start (completed step11)) (at start (completed step24)) (at start (completed step26)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (completed step16)))
  )
  (:durative-action do_step17
    :duration (= ?duration 172800)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (completed step17)))
  )
  (:durative-action do_step18
    :duration (= ?duration 10800)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (completed step18)))
  )
  (:durative-action do_step19
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step19)) (at start (completed step8)) (at start (completed step10)) (at start (completed step17)) (at start (completed step18)) (at start (completed step22)) (at start (completed step23)) (at start (completed step29)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (completed step19)))
  )
  (:durative-action do_step20
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending step20)) (at start (completed step1)) (at start (completed step11)) (at start (completed step16)) (at start (completed step24)) (at start (completed step26)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (completed step20)))
  )
  (:durative-action do_step21
    :duration (= ?duration 1800)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (completed step21)))
  )
  (:durative-action do_step22
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step22)) (at start (completed step8)) (at start (completed step17)) (at start (completed step23)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (completed step22)))
  )
  (:durative-action do_step23
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step23)) (at start (completed step17)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (completed step23)))
  )
  (:durative-action do_step24
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step24)) (at start (completed step1)) (at start (completed step11)) (at start (completed step26)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (completed step24)))
  )
  (:durative-action do_step25
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step25)) (at start (completed step1)) (at start (completed step3)) (at start (completed step11)) (at start (completed step12)) (at start (completed step13)) (at start (completed step15)) (at start (completed step16)) (at start (completed step17)) (at start (completed step20)) (at start (completed step23)) (at start (completed step24)) (at start (completed step26)) (at start (completed step29)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (completed step25)))
  )
  (:durative-action do_step26
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step26)) (at start (completed step11)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (completed step26)))
  )
  (:durative-action do_step27
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (completed step12)) (at start (completed step21)) (at start (completed step29)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (completed step27)))
  )
  (:durative-action do_step28
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step28)) (at start (completed step17)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (completed step28)))
  )
  (:durative-action do_step29
    :duration (= ?duration 2700)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (completed step29)))
  )
  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (completed step30)))
  )
)