(define (domain melt-almond-bark)
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
    (finished_melting)
  )

  ; Step 1
  (:durative-action do_step1
    :duration (= ?duration 30)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done1))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step2)) (at start (done9)) (at start (done30)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done2))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (done4)) (at start (done26)) (at start (done28)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done3))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (done18)) (at start (done29)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done4))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step5)) (at start (done2)) (at start (done24)) (at start (done27)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done5))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step6)) (at start (done4)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done6))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step7)) (at start (done23)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done7))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 60)
    :condition (at start (step_pending step8))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done8))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step9)) (at start (done13)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done9))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 30)
    :condition (at start (step_pending step10))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done10))
    )
  )

  (:durative-action do_step11
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step11)) (at start (done22)))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (done11))
    )
  )

  (:durative-action do_step12
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step12)) (at start (done22)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (done12))
    )
  )

  (:durative-action do_step13
    :duration (= ?duration 40)
    :condition (at start (step_pending step13))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (done13))
    )
  )

  (:durative-action do_step14
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (done26)))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (done14))
    )
  )

  (:durative-action do_step15
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step15)) (at start (done30)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (done15))
    )
  )

  (:durative-action do_step16
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step16)) (at start (done8)))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (done16))
    )
  )

  (:durative-action do_step17
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step17)) (at start (done5)) (at start (done6)))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (done17))
    )
  )

  (:durative-action do_step18
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step18)) (at start (done1)))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (done18))
    )
  )

  (:durative-action do_step19
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step19)) (at start (done12)))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (done19))
    )
  )

  (:durative-action do_step20
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step20)) (at start (done5)))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (done20))
    )
  )

  (:durative-action do_step21
    :duration (= ?duration 30)
    :condition (at start (step_pending step21))
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (done21))
    )
  )

  (:durative-action do_step22
    :duration (= ?duration 180)
    :condition (at start (step_pending step22))
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (done22))
    )
  )

  (:durative-action do_step23
    :duration (= ?duration 10)
    :condition (at start (step_pending step23))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (done23))
    )
  )

  (:durative-action do_step24
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step24)) (at start (done16)))
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (done24))
    )
  )

  (:durative-action do_step25
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step25)) (at start (done3)) (at start (done10)) (at start (done30)))
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (done25))
      (at end (finished_melting))
    )
  )

  (:durative-action do_step26
    :duration (= ?duration 20)
    :condition (at start (step_pending step26))
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (done26))
    )
  )

  (:durative-action do_step27
    :duration (= ?duration 30)
    :condition (at start (step_pending step27))
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (done27))
    )
  )

  (:durative-action do_step28
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step28)) (at start (done4)) (at start (done11)))
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (done28))
    )
  )

  (:durative-action do_step29
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step29)) (at start (done21)))
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (done29))
    )
  )

  (:durative-action do_step30
    :duration (= ?duration 60)
    :condition (at start (step_pending step30))
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (done30))
    )
  )
)
