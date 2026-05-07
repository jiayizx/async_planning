(define (domain starbucks_secret_menu)
  (:requirements :typing :durative-actions)

  (:predicates
    (pending1) (done1)
    (pending2) (done2)
    (pending3) (done3)
    (pending4) (done4)
    (pending5) (done5)
    (pending6) (done6)
    (pending7) (done7)
    (pending8) (done8)
    (pending9) (done9)
    (pending10) (done10)
    (pending11) (done11)
    (pending12) (done12)
    (pending13) (done13)
    (pending14) (done14)
    (pending15) (done15)
    (pending16) (done16)
    (pending17) (done17)
    (pending18) (done18)
    (pending19) (done19)
    (pending20) (done20)
  )

  (:durative-action do_step1
    :duration (= ?duration 180)
    :condition (and (at start (pending1)) (at start (done3)) (at start (done9)) (at start (done10)))
    :effect (and (at start (not (pending1))) (at end (done1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 120)
    :condition (at start (pending2))
    :effect (and (at start (not (pending2))) (at end (done2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 300)
    :condition (and (at start (pending3)) (at start (done6)))
    :effect (and (at start (not (pending3))) (at end (done3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 60)
    :condition (and (at start (pending4)) (at start (done13)))
    :effect (and (at start (not (pending4))) (at end (done4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 30)
    :condition (and (at start (pending5)) (at start (done15)) (at start (done17)) (at start (done19)))
    :effect (and (at start (not (pending5))) (at end (done5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 120)
    :condition (and (at start (pending6)) (at start (done14)) (at start (done2)))
    :effect (and (at start (not (pending6))) (at end (done6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 45)
    :condition (and (at start (pending7)) (at start (done4)) (at start (done8)) (at start (done2)) (at start (done11)))
    :effect (and (at start (not (pending7))) (at end (done7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 30)
    :condition (and (at start (pending8)) (at start (done16)) (at start (done2)))
    :effect (and (at start (not (pending8))) (at end (done8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 120)
    :condition (at start (pending9))
    :effect (and (at start (not (pending9))) (at end (done9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 60)
    :condition (and (at start (pending10)) (at start (done8)))
    :effect (and (at start (not (pending10))) (at end (done10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 15)
    :condition (at start (pending11))
    :effect (and (at start (not (pending11))) (at end (done11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 30)
    :condition (at start (pending12))
    :effect (and (at start (not (pending12))) (at end (done12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 240)
    :condition (and (at start (pending13)) (at start (done3)))
    :effect (and (at start (not (pending13))) (at end (done13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 300)
    :condition (and (at start (pending14)) (at start (done8)) (at start (done2)))
    :effect (and (at start (not (pending14))) (at end (done14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (pending15)) (at start (done18)) (at start (done20)) (at start (done19)))
    :effect (and (at start (not (pending15))) (at end (done15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 180)
    :condition (and (at start (pending16)) (at start (done2)))
    :effect (and (at start (not (pending16))) (at end (done16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 240)
    :condition (and (at start (pending17)) (at start (done1)) (at start (done9)) (at start (done12)) (at start (done6)) (at start (done2)))
    :effect (and (at start (not (pending17))) (at end (done17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 120)
    :condition (and (at start (pending18)) (at start (done10)) (at start (done8)) (at start (done2)))
    :effect (and (at start (not (pending18))) (at end (done18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 60)
    :condition (and (at start (pending19)) (at start (done17)) (at start (done20)) (at start (done2)) (at start (done8)))
    :effect (and (at start (not (pending19))) (at end (done19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 60)
    :condition (and (at start (pending20)) (at start (done2)) (at start (done11)))
    :effect (and (at start (not (pending20))) (at end (done20)))
  )
)
