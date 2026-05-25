(define (domain football_prep)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (done6)
    (done7)
    (done8)
    (done9)
    (done10)
    (done11)
    (done12)
    (done13)
    (done14)
    (done15)
    (done16)
    (done17)
    (done18)
    (done19)
    (done20)
    (done21)
    (done22)
    (done23)
    (done24)
    (done25)
    (done26)
    (done27)
    (done28)
    (done29)
    (done30)
  )

  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step1) (done17)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step3) (done12)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step4) (done17) (done29) (done30)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 2700)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step6) (done20)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step7) (done13)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step8) (done14)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 600)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 1500)
    :condition (at start (and (step_pending step10) (done26)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step11) (done24) (done29)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 2400)
    :condition (at start (and (step_pending step12) (done18) (done22)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 1200)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step15) (done5)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step16) (done24)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step17) (done13)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step18) (done19)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 7200)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step20) (done9)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step21) (done2)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step22) (done16) (done17)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step23) (done10) (done22)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 5400)
    :condition (at start (and (step_pending step24) (done1) (done2)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step25) (done13)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 900)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 2400)
    :condition (at start (and (step_pending step27) (done20) (done21) (done25) (done28)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step28) (done2) (done7) (done18) (done26)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step29) (done3)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step30) (done27)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done30)))
  )
)
