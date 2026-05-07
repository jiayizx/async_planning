(define (domain cake_color_selection)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7) (pending8) (pending9) (pending10)
    (pending11) (pending12) (pending13) (pending14) (pending15) (pending16) (pending17) (pending18) (pending19) (pending20)
    (pending21) (pending22) (pending23) (pending24) (pending25) (pending26) (pending27) (pending28) (pending29) (pending30)
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (step_done1) (step_done2) (step_done3) (step_done4) (step_done5) (step_done6) (step_done7) (step_done8) (step_done9) (step_done10)
    (step_done11) (step_done12) (step_done13) (step_done14) (step_done15) (step_done16) (step_done17) (step_done18) (step_done19) (step_done20)
    (step_done21) (step_done22) (step_done23) (step_done24) (step_done25) (step_done26) (step_done27) (step_done28) (step_done29) (step_done30)
  )

  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (and (at start (pending1)) (at start (done3)) (at start (done6)) (at start (done10)))
    :effect (and (at start (not (pending1))) (at end (step_done1)) (at end (done1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 1800)
    :condition (and (at start (pending2)) (at start (done3)) (at start (done6)) (at start (done10)) (at start (done28)) (at start (done30)))
    :effect (and (at start (not (pending2))) (at end (step_done2)) (at end (done2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 14400)
    :condition (at start (pending3))
    :effect (and (at start (not (pending3))) (at end (step_done3)) (at end (done3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 10800)
    :condition (at start (pending4))
    :effect (and (at start (not (pending4))) (at end (step_done4)) (at end (done4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 2700)
    :condition (and (at start (pending5)) (at start (done3)) (at start (done4)) (at start (done6)) (at start (done18)))
    :effect (and (at start (not (pending5))) (at end (step_done5)) (at end (done5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (and (at start (pending6)) (at start (done3)))
    :effect (and (at start (not (pending6))) (at end (step_done6)) (at end (done6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 7200)
    :condition (at start (pending7))
    :effect (and (at start (not (pending7))) (at end (step_done7)) (at end (done7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (and (at start (pending8)) (at start (done3)) (at start (done6)) (at start (done7)) (at start (done16)) (at start (done23)) (at start (done25)))
    :effect (and (at start (not (pending8))) (at end (step_done8)) (at end (done8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 7200)
    :condition (and (at start (pending9)) (at start (done3)) (at start (done6)) (at start (done7)) (at start (done10)) (at start (done11)) (at start (done22)) (at start (done28)) (at start (done30)))
    :effect (and (at start (not (pending9))) (at end (step_done9)) (at end (done9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (and (at start (pending10)) (at start (done3)) (at start (done6)))
    :effect (and (at start (not (pending10))) (at end (step_done10)) (at end (done10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 10800)
    :condition (and (at start (pending11)) (at start (done3)) (at start (done6)) (at start (done10)) (at start (done22)) (at start (done28)) (at start (done30)))
    :effect (and (at start (not (pending11))) (at end (step_done11)) (at end (done11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 3600)
    :condition (and (at start (pending12)) (at start (done3)) (at start (done15)) (at start (done22)) (at start (done23)) (at start (done25)))
    :effect (and (at start (not (pending12))) (at end (step_done12)) (at end (done12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 432000)
    :condition (and (at start (pending13)) (at start (done3)) (at start (done6)) (at start (done7)) (at start (done8)) (at start (done16)) (at start (done23)) (at start (done25)))
    :effect (and (at start (not (pending13))) (at end (step_done13)) (at end (done13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 1800)
    :condition (and (at start (pending14)) (at start (done3)) (at start (done4)) (at start (done6)) (at start (done12)) (at start (done15)) (at start (done16)) (at start (done18)) (at start (done22)) (at start (done23)) (at start (done25)))
    :effect (and (at start (not (pending14))) (at end (step_done14)) (at end (done14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 900)
    :condition (and (at start (pending15)) (at start (done3)) (at start (done22)) (at start (done23)) (at start (done25)))
    :effect (and (at start (not (pending15))) (at end (step_done15)) (at end (done15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 3600)
    :condition (and (at start (pending16)) (at start (done3)) (at start (done6)) (at start (done23)) (at start (done25)))
    :effect (and (at start (not (pending16))) (at end (step_done16)) (at end (done16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 7200)
    :condition (and (at start (pending17)) (at start (done4)) (at start (done20)) (at start (done24)))
    :effect (and (at start (not (pending17))) (at end (step_done17)) (at end (done17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 1800)
    :condition (and (at start (pending18)) (at start (done3)) (at start (done4)) (at start (done6)))
    :effect (and (at start (not (pending18))) (at end (step_done18)) (at end (done18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 14400)
    :condition (and (at start (pending19)) (at start (done3)) (at start (done6)) (at start (done7)) (at start (done9)) (at start (done10)) (at start (done11)) (at start (done22)) (at start (done26)) (at start (done28)) (at start (done30)))
    :effect (and (at start (not (pending19))) (at end (step_done19)) (at end (done19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 3600)
    :condition (at start (pending20))
    :effect (and (at start (not (pending20))) (at end (step_done20)) (at end (done20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 86400)
    :condition (and (at start (pending21)) (at start (done3)))
    :effect (and (at start (not (pending21))) (at end (step_done21)) (at end (done21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 604800)
    :condition (at start (pending22))
    :effect (and (at start (not (pending22))) (at end (step_done22)) (at end (done22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 7200)
    :condition (and (at start (pending23)) (at start (done3)))
    :effect (and (at start (not (pending23))) (at end (step_done23)) (at end (done23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 3600)
    :condition (at start (pending24))
    :effect (and (at start (not (pending24))) (at end (step_done24)) (at end (done24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 7200)
    :condition (and (at start (pending25)) (at start (done3)) (at start (done23)))
    :effect (and (at start (not (pending25))) (at end (step_done25)) (at end (done25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 3600)
    :condition (and (at start (pending26)) (at start (done3)) (at start (done6)) (at start (done7)) (at start (done9)) (at start (done10)) (at start (done11)) (at start (done22)) (at start (done28)) (at start (done30)))
    :effect (and (at start (not (pending26))) (at end (step_done26)) (at end (done26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 172800)
    :condition (and (at start (pending27)) (at start (done3)) (at start (done6)) (at start (done7)) (at start (done9)) (at start (done10)) (at start (done11)) (at start (done21)) (at start (done22)) (at start (done28)) (at start (done30)))
    :effect (and (at start (not (pending27))) (at end (step_done27)) (at end (done27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 86400)
    :condition (at start (pending28))
    :effect (and (at start (not (pending28))) (at end (step_done28)) (at end (done28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 600)
    :condition (and (at start (pending29)) (at start (done3)) (at start (done6)) (at start (done10)) (at start (done11)) (at start (done21)) (at start (done22)) (at start (done28)) (at start (done30)))
    :effect (and (at start (not (pending29))) (at end (step_done29)) (at end (done29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 2700)
    :condition (and (at start (pending30)) (at start (done3)) (at start (done28)))
    :effect (and (at start (not (pending30))) (at end (step_done30)) (at end (done30)))
  )
)
