(define (domain dog_toy_production)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step1)) (at start (done26)) (at start (done11)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done1)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step2)) (at start (done14)) (at start (done28)) (at start (done17)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (done5)) (at start (done9)) (at start (done30)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (done9)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (done3)) (at start (done25)) (at start (done26)) (at start (done12)) (at start (done13)) (at start (done15)) (at start (done20)) (at start (done23)) (at start (done29)) (at start (done16)) (at start (done24)) (at start (done1)) (at start (done11)) (at start (done17)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step7)) (at start (done3)) (at start (done5)) (at start (done9)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step8)) (at start (done23)) (at start (done17)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step10)) (at start (done22)) (at start (done8)) (at start (done23)) (at start (done17)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step12)) (at start (done29)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (done28)) (at start (done17)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step16)) (at start (done24)) (at start (done1)) (at start (done26)) (at start (done11)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step19)) (at start (done10)) (at start (done18)) (at start (done23)) (at start (done29)) (at start (done22)) (at start (done8)) (at start (done17)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending step20)) (at start (done16)) (at start (done24)) (at start (done1)) (at start (done26)) (at start (done11)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (done21)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step22)) (at start (done8)) (at start (done23)) (at start (done17)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (done22)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step23)) (at start (done17)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (done23)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step24)) (at start (done1)) (at start (done26)) (at start (done11)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (done24)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step25)) (at start (done3)) (at start (done12)) (at start (done13)) (at start (done15)) (at start (done20)) (at start (done23)) (at start (done16)) (at start (done24)) (at start (done1)) (at start (done26)) (at start (done11)) (at start (done29)) (at start (done17)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (done25)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step26)) (at start (done11)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (done26)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (done21)) (at start (done12)) (at start (done29)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (done27)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step28)) (at start (done17)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (done28)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (done29)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (done30)))
  )
)
