(define (domain tie-dye-nails)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (done ?s - step)
    (nails_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (pending step1))
    :effect (and (at start (not (pending step1))) (at end (done step1)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (pending step2) (done step10)))
    :effect (and (at start (not (pending step2))) (at end (done step2)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pending step3))
    :effect (and (at start (not (pending step3))) (at end (done step3)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (pending step4) (done step5)))
    :effect (and (at start (not (pending step4))) (at end (done step4)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 360)
    :condition (at start (and (pending step5) (done step6) (done step23) (done step13)))
    :effect (and (at start (not (pending step5))) (at end (done step5)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (pending step6))
    :effect (and (at start (not (pending step6))) (at end (done step6)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (pending step7) (done step8) (done step15)))
    :effect (and (at start (not (pending step7))) (at end (done step7)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (pending step8) (done step1) (done step24)))
    :effect (and (at start (not (pending step8))) (at end (done step8)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (pending step9) (done step12) (done step25) (done step24)))
    :effect (and (at start (not (pending step9))) (at end (done step9)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (pending step10))
    :effect (and (at start (not (pending step10))) (at end (done step10)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (pending step11) (done step9) (done step24)))
    :effect (and (at start (not (pending step11))) (at end (done step11)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (pending step12) (done step19) (done step20)))
    :effect (and (at start (not (pending step12))) (at end (done step12)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (pending step13) (done step3) (done step16) (done step24)))
    :effect (and (at start (not (pending step13))) (at end (done step13)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (pending step14))
    :effect (and (at start (not (pending step14))) (at end (done step14)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (pending step15) (done step26)))
    :effect (and (at start (not (pending step15))) (at end (done step15)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (pending step16) (done step8)))
    :effect (and (at start (not (pending step16))) (at end (done step16)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (and (pending step17) (done step11) (done step14) (done step22) (done step28) (done step29)))
    :effect (and (at start (not (pending step17))) (at end (done step17)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (pending step18) (done step7)))
    :effect (and (at start (not (pending step18))) (at end (done step18)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (pending step19) (done step27)))
    :effect (and (at start (not (pending step19))) (at end (done step19)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (pending step20) (done step19)))
    :effect (and (at start (not (pending step20))) (at end (done step20)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (pending step21) (done step6)))
    :effect (and (at start (not (pending step21))) (at end (done step21)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 45)
    :condition (at start (and (pending step22) (done step16)))
    :effect (and (at start (not (pending step22))) (at end (done step22)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (pending step23) (done step17)))
    :effect (and (at start (not (pending step23))) (at end (done step23)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (pending step24) (done step3) (done step26)))
    :effect (and (at start (not (pending step24))) (at end (done step24)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (and (pending step25) (done step12)))
    :effect (and (at start (not (pending step25))) (at end (done step25)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (pending step26) (done step2)))
    :effect (and (at start (not (pending step26))) (at end (done step26)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (pending step27) (done step18)))
    :effect (and (at start (not (pending step27))) (at end (done step27)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (and (pending step28) (done step26)))
    :effect (and (at start (not (pending step28))) (at end (done step28)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 20)
    :condition (at start (and (pending step29) (done step22)))
    :effect (and (at start (not (pending step29))) (at end (done step29)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (pending step30) (done step4) (done step5)))
    :effect (and (at start (not (pending step30))) (at end (done step30)) (at end (nails_done)))
  )
)