(define (domain clean-sunbrella)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (e_done1)
    (e_done2)
    (e_done3)
    (e_done4)
    (e_done5)
    (e_done6)
    (e_done7)
    (e_done8)
    (e_done9)
    (e_done10)
    (e_done11)
    (e_done12)
    (e_done13)
    (e_done14)
    (e_done15)
    (e_done16)
    (e_done17)
    (e_done18)
    (e_done19)
    (e_done20)
    (e_done21)
    (e_done22)
    (e_done23)
    (e_done24)
    (e_done25)
    (e_done26)
    (e_done27)
    (e_done28)
    (e_done29)
    (e_done30)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (e_done1))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step2)) (at start (e_done10)) (at start (e_done14)) (at start (e_done17)) (at start (e_done18)) (at start (e_done20)) (at start (e_done22)) (at start (e_done26)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (e_done2))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (e_done3))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (e_done1)) (at start (e_done8)) (at start (e_done28)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (e_done4))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (e_done5))
    )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step6)) (at start (e_done17)) (at start (e_done20)) (at start (e_done21)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (e_done6))
    )
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (e_done1)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (e_done7))
    )
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (e_done1)) (at start (e_done28)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (e_done8))
    )
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (e_done3)) (at start (e_done6)) (at start (e_done17)) (at start (e_done20)) (at start (e_done21)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (e_done9))
    )
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step10))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (e_done10))
    )
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step11)) (at start (e_done3)))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (e_done11))
    )
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step12)) (at start (e_done6)) (at start (e_done17)) (at start (e_done20)) (at start (e_done21)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (e_done12))
    )
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step13)) (at start (e_done1)) (at start (e_done3)) (at start (e_done6)) (at start (e_done9)) (at start (e_done15)) (at start (e_done17)) (at start (e_done20)) (at start (e_done21)) (at start (e_done27)) (at start (e_done29)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (e_done13))
    )
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step14))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (e_done14))
    )
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step15)) (at start (e_done6)) (at start (e_done17)) (at start (e_done20)) (at start (e_done21)) (at start (e_done27)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (e_done15))
    )
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step16)) (at start (e_done6)) (at start (e_done15)) (at start (e_done17)) (at start (e_done20)) (at start (e_done21)) (at start (e_done27)))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (e_done16))
    )
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step17)) (at start (e_done20)))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (e_done17))
    )
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step18)) (at start (e_done10)) (at start (e_done14)))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (e_done18))
    )
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step19)) (at start (e_done6)) (at start (e_done12)) (at start (e_done15)) (at start (e_done16)) (at start (e_done17)) (at start (e_done20)) (at start (e_done21)) (at start (e_done27)))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (e_done19))
    )
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step20))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (e_done20))
    )
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step21)) (at start (e_done17)) (at start (e_done20)))
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (e_done21))
    )
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step22)) (at start (e_done10)) (at start (e_done14)) (at start (e_done18)))
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (e_done22))
    )
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step23)) (at start (e_done17)) (at start (e_done20)))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (e_done23))
    )
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step24)) (at start (e_done5)) (at start (e_done6)) (at start (e_done17)) (at start (e_done20)) (at start (e_done30)))
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (e_done24))
    )
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step25)) (at start (e_done1)))
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (e_done25))
    )
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step26))
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (e_done26))
    )
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (e_done6)) (at start (e_done17)) (at start (e_done20)) (at start (e_done21)))
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (e_done27))
    )
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (e_done1)))
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (e_done28))
    )
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step29)) (at start (e_done1)))
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (e_done29))
    )
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step30)) (at start (e_done6)) (at start (e_done17)) (at start (e_done20)) (at start (e_done21)))
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (e_done30))
    )
  )
)
