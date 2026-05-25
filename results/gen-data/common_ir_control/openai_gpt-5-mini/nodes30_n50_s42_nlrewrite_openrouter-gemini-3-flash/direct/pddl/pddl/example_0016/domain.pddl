(define (domain clean-sunbrella)
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
    :duration (= ?duration 600)
    :condition (at start (step_pending s1))
    :effect (and (at start (not (step_pending s1))) (at end (step_done s1)) (at end (done1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending s2) (done22) (done26) (done17)))
    :effect (and (at start (not (step_pending s2))) (at end (step_done s2)) (at end (done2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 300)
    :condition (at start (step_pending s3))
    :effect (and (at start (not (step_pending s3))) (at end (step_done s3)) (at end (done3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 900)
    :condition (at start (and (step_pending s4) (done8) (done28)))
    :effect (and (at start (not (step_pending s4))) (at end (step_done s4)) (at end (done4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 300)
    :condition (at start (step_pending s5))
    :effect (and (at start (not (step_pending s5))) (at end (step_done s5)) (at end (done5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 1500)
    :condition (at start (and (step_pending s6) (done21)))
    :effect (and (at start (not (step_pending s6))) (at end (step_done s6)) (at end (done6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 900)
    :condition (at start (and (step_pending s7) (done1)))
    :effect (and (at start (not (step_pending s7))) (at end (step_done s7)) (at end (done7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 600)
    :condition (at start (and (step_pending s8) (done28)))
    :effect (and (at start (not (step_pending s8))) (at end (step_done s8)) (at end (done8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 600)
    :condition (at start (and (step_pending s9) (done3) (done6)))
    :effect (and (at start (not (step_pending s9))) (at end (step_done s9)) (at end (done9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 1800)
    :condition (at start (step_pending s10))
    :effect (and (at start (not (step_pending s10))) (at end (step_done s10)) (at end (done10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 900)
    :condition (at start (and (step_pending s11) (done3)))
    :effect (and (at start (not (step_pending s11))) (at end (step_done s11)) (at end (done11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 900)
    :condition (at start (and (step_pending s12) (done6)))
    :effect (and (at start (not (step_pending s12))) (at end (step_done s12)) (at end (done12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 600)
    :condition (at start (and (step_pending s13) (done9) (done15) (done29)))
    :effect (and (at start (not (step_pending s13))) (at end (step_done s13)) (at end (done13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 300)
    :condition (at start (step_pending s14))
    :effect (and (at start (not (step_pending s14))) (at end (step_done s14)) (at end (done14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending s15) (done27)))
    :effect (and (at start (not (step_pending s15))) (at end (step_done s15)) (at end (done15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 600)
    :condition (at start (and (step_pending s16) (done15)))
    :effect (and (at start (not (step_pending s16))) (at end (step_done s16)) (at end (done16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 600)
    :condition (at start (and (step_pending s17) (done20)))
    :effect (and (at start (not (step_pending s17))) (at end (step_done s17)) (at end (done17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending s18) (done10) (done14)))
    :effect (and (at start (not (step_pending s18))) (at end (step_done s18)) (at end (done18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 300)
    :condition (at start (and (step_pending s19) (done12) (done16)))
    :effect (and (at start (not (step_pending s19))) (at end (step_done s19)) (at end (done19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 1200)
    :condition (at start (step_pending s20))
    :effect (and (at start (not (step_pending s20))) (at end (step_done s20)) (at end (done20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending s21) (done17)))
    :effect (and (at start (not (step_pending s21))) (at end (step_done s21)) (at end (done21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending s22) (done18) (done14)))
    :effect (and (at start (not (step_pending s22))) (at end (step_done s22)) (at end (done22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 600)
    :condition (at start (and (step_pending s23) (done17)))
    :effect (and (at start (not (step_pending s23))) (at end (step_done s23)) (at end (done23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending s24) (done5) (done30)))
    :effect (and (at start (not (step_pending s24))) (at end (step_done s24)) (at end (done24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending s25) (done1)))
    :effect (and (at start (not (step_pending s25))) (at end (step_done s25)) (at end (done25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 900)
    :condition (at start (step_pending s26))
    :effect (and (at start (not (step_pending s26))) (at end (step_done s26)) (at end (done26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 600)
    :condition (at start (and (step_pending s27) (done6)))
    :effect (and (at start (not (step_pending s27))) (at end (step_done s27)) (at end (done27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 300)
    :condition (at start (and (step_pending s28) (done1)))
    :effect (and (at start (not (step_pending s28))) (at end (step_done s28)) (at end (done28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending s29) (done1)))
    :effect (and (at start (not (step_pending s29))) (at end (step_done s29)) (at end (done29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 300)
    :condition (at start (and (step_pending s30) (done6)))
    :effect (and (at start (not (step_pending s30))) (at end (step_done s30)) (at end (done30)))
  )
)
