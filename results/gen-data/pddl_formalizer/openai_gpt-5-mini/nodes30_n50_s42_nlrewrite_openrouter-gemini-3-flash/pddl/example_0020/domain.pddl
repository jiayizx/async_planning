(define (domain make-milanesa)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed1)
    (completed2)
    (completed3)
    (completed4)
    (completed5)
    (completed6)
    (completed7)
    (completed8)
    (completed9)
    (completed10)
    (completed11)
    (completed12)
    (completed13)
    (completed14)
    (completed15)
    (completed16)
    (completed17)
    (completed18)
    (completed19)
    (completed20)
    (completed21)
    (completed22)
    (completed23)
    (completed24)
    (completed25)
    (completed26)
    (completed27)
    (completed28)
    (completed29)
    (completed30)
  )

  (:durative-action do_step1
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (completed30)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 2700)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 180)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (completed22)) (at start (completed23)) (at start (completed12)) (at start (completed4)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step6)) (at start (completed8)) (at start (completed15)) (at start (completed13)) (at start (completed22)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step7)) (at start (completed20)) (at start (completed24)) (at start (completed27)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step8)) (at start (completed24)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (completed11)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step10)) (at start (completed25)) (at start (completed6)) (at start (completed8)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 300)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step12)) (at start (completed22)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step13)) (at start (completed15)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (completed11)) (at start (completed30)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step15)) (at start (completed6)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step16)) (at start (completed27)) (at start (completed7)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (completed16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step17)) (at start (completed1)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (completed17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (completed19)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (completed18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step19)) (at start (completed10)) (at start (completed9)) (at start (completed13)) (at start (completed11)) (at start (completed22)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (completed19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 720)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (completed20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step21)) (at start (completed2)) (at start (completed4)) (at start (completed5)) (at start (completed26)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (completed21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 60)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (completed22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step23)) (at start (completed12)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (completed23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step24)) (at start (completed20)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (completed24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (completed4)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (completed25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step26)) (at start (completed30)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (completed26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step27)) (at start (completed23)) (at start (completed20)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (completed27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step28)) (at start (completed9)) (at start (completed20)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (completed28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step29)) (at start (completed19)) (at start (completed7)) (at start (completed16)) (at start (completed18)) (at start (completed28)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (completed29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step30)) (at start (completed3)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (completed30)))
  )
)
