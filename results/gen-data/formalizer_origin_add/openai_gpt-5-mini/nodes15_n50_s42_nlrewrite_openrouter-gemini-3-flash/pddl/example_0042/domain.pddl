(define (domain compost)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending1)
    (pending2)
    (pending3)
    (pending4)
    (pending5)
    (pending6)
    (pending7)
    (pending8)
    (pending9)
    (pending10)
    (pending11)
    (pending12)
    (pending13)
    (pending14)
    (pending15)
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
  )

  (:durative-action do_step1
    :duration (= ?duration 900)
    :condition (and (at start (pending1)) (at start (done8)) (at start (done15)))
    :effect (and (at start (not (pending1))) (at end (done1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 2700)
    :condition (and (at start (pending2)) (at start (done4)) (at start (done13)))
    :effect (and (at start (not (pending2))) (at end (done2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 1800)
    :condition (and (at start (pending3)) (at start (done2)) (at start (done4)) (at start (done5)) (at start (done9)) (at start (done11)) (at start (done13)) (at start (done14)) (at start (done15)))
    :effect (and (at start (not (pending3))) (at end (done3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (at start (pending4))
    :effect (and (at start (not (pending4))) (at end (done4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 1200)
    :condition (and (at start (pending5)) (at start (done2)) (at start (done4)) (at start (done11)) (at start (done13)) (at start (done14)) (at start (done15)))
    :effect (and (at start (not (pending5))) (at end (done5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 14400)
    :condition (and (at start (pending6)) (at start (done1)) (at start (done8)) (at start (done15)))
    :effect (and (at start (not (pending6))) (at end (done6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 1800)
    :condition (and (at start (pending7)) (at start (done1)) (at start (done6)) (at start (done8)) (at start (done15)))
    :effect (and (at start (not (pending7))) (at end (done7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (and (at start (pending8)) (at start (done15)))
    :effect (and (at start (not (pending8))) (at end (done8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 7200)
    :condition (at start (pending9))
    :effect (and (at start (not (pending9))) (at end (done9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 600)
    :condition (and (at start (pending10)) (at start (done2)) (at start (done4)) (at start (done5)) (at start (done11)) (at start (done13)) (at start (done14)) (at start (done15)))
    :effect (and (at start (not (pending10))) (at end (done10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 2400)
    :condition (at start (pending11))
    :effect (and (at start (not (pending11))) (at end (done11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 3600)
    :condition (and (at start (pending12)) (at start (done1)) (at start (done6)) (at start (done7)) (at start (done8)) (at start (done15)))
    :effect (and (at start (not (pending12))) (at end (done12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 1200)
    :condition (and (at start (pending13)) (at start (done4)))
    :effect (and (at start (not (pending13))) (at end (done13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 900)
    :condition (and (at start (pending14)) (at start (done2)) (at start (done4)) (at start (done13)))
    :effect (and (at start (not (pending14))) (at end (done14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 7200)
    :condition (at start (pending15))
    :effect (and (at start (not (pending15))) (at end (done15)))
  )
)
