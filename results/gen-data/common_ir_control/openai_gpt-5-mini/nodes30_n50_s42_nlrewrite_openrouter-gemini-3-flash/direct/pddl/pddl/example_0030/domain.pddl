(define (domain wonton_wrappers)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (complete ?s - step)
  )

  (:durative-action do_step1
    :duration (= ?duration 180)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (complete step1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 60)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (complete step2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 120)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (complete step3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step4)) (at start (complete step3)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (complete step4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 300)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (complete step5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (complete step30)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (complete step6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (complete step26)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (complete step7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (complete step19)) (at start (complete step20)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (complete step8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (complete step13)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (complete step9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 60)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (complete step10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 300)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (complete step11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 120)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (complete step12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step13)) (at start (complete step4)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (complete step13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step14)) (at start (complete step2)) (at start (complete step3)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (complete step14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 240)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (complete step15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step16)) (at start (complete step1)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (complete step16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step17)) (at start (complete step15)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (complete step17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (complete step10)) (at start (complete step19)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (complete step18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step19)) (at start (complete step3)) (at start (complete step9)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (complete step19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step20)) (at start (complete step1)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (complete step20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step21)) (at start (complete step6)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (complete step21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 15)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (complete step22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step23)) (at start (complete step28)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (complete step23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step24)) (at start (complete step12)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (complete step24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step25)) (at start (complete step11)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (complete step25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step26)) (at start (complete step3)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (complete step26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 60)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (complete step27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 720)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (complete step28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step29)) (at start (complete step14)) (at start (complete step27)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (complete step29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (complete step30)))
  )
)
