(define (domain lip_lightening)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step) (is_step5 ?s - step)
    (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step) (is_step10 ?s - step)
    (is_step11 ?s - step) (is_step12 ?s - step) (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step) (is_step25 ?s - step)
    (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)

    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and (at start (is_step1 ?s)) (at start (step_pending ?s))
                    (at start (done12)) (at start (done2)) (at start (done6)) (at start (done3))
                    (at start (done23)) (at start (done13)) (at start (done9)) (at start (done10))
                    (at start (done20)) (at start (done28)) (at start (done5)) (at start (done21))
                    (at start (done15)) (at start (done25)) (at start (done16)) (at start (done11))
                    (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step2 ?s)) (at start (step_pending ?s))
                    (at start (done28)) (at start (done5)) (at start (done21)) (at start (done16))
                    (at start (done25)) (at start (done15)) (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step3 ?s)) (at start (step_pending ?s))
                    (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step4 ?s)) (at start (step_pending ?s))
                    (at start (done26)) (at start (done24)) (at start (done16)) (at start (done11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (is_step5 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (is_step6 ?s)) (at start (step_pending ?s))
                    (at start (done3)) (at start (done23)) (at start (done13)) (at start (done9))
                    (at start (done10)) (at start (done20)) (at start (done29)) (at start (done11))
                    (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step7 ?s)) (at start (step_pending ?s))
                    (at start (done6)) (at start (done11)) (at start (done16)) (at start (done3))
                    (at start (done23)) (at start (done13)) (at start (done9)) (at start (done10))
                    (at start (done20)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step8 ?s)) (at start (step_pending ?s))
                    (at start (done27)) (at start (done13)) (at start (done9)) (at start (done10))
                    (at start (done20)) (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step9 ?s)) (at start (step_pending ?s))
                    (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (is_step10 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step11 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step12 ?s)) (at start (step_pending ?s))
                    (at start (done2)) (at start (done6)) (at start (done3)) (at start (done23))
                    (at start (done13)) (at start (done9)) (at start (done10)) (at start (done20))
                    (at start (done28)) (at start (done5)) (at start (done21)) (at start (done16))
                    (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step13 ?s)) (at start (step_pending ?s))
                    (at start (done9)) (at start (done10)) (at start (done20)) (at start (done11))
                    (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step14 ?s)) (at start (step_pending ?s))
                    (at start (done8)) (at start (done27)) (at start (done13)) (at start (done9))
                    (at start (done10)) (at start (done20)) (at start (done11)) (at start (done24))
                    (at start (done25)) (at start (done15)) (at start (done21)) (at start (done16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step15 ?s)) (at start (step_pending ?s))
                    (at start (done21)) (at start (done16)) (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step16 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done16)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step17 ?s)) (at start (step_pending ?s)) (at start (done18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done17)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (is_step18 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done18)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step19 ?s)) (at start (step_pending ?s))
                    (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done19)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step20 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done20)))
  )

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step21 ?s)) (at start (step_pending ?s))
                    (at start (done16)) (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done21)))
  )

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (is_step22 ?s)) (at start (step_pending ?s))
                    (at start (done3)) (at start (done25)) (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done22)))
  )

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step23 ?s)) (at start (step_pending ?s))
                    (at start (done13)) (at start (done9)) (at start (done10)) (at start (done20))
                    (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done23)))
  )

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (is_step24 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done24)))
  )

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step25 ?s)) (at start (step_pending ?s))
                    (at start (done15)) (at start (done21)) (at start (done16)) (at start (done11))
                    (at start (done24)) (at start (done20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done25)))
  )

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step26 ?s)) (at start (step_pending ?s)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done26)))
  )

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step27 ?s)) (at start (step_pending ?s))
                    (at start (done13)) (at start (done9)) (at start (done10)) (at start (done20))
                    (at start (done11)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done27)))
  )

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (is_step28 ?s)) (at start (step_pending ?s))
                    (at start (done5)) (at start (done21)) (at start (done25)) (at start (done15))
                    (at start (done16)) (at start (done11)) (at start (done24)) (at start (done20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done28)))
  )

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (is_step29 ?s)) (at start (step_pending ?s))
                    (at start (done14)) (at start (done8)) (at start (done27)) (at start (done13))
                    (at start (done9)) (at start (done10)) (at start (done20)) (at start (done11))
                    (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done29)))
  )

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step30 ?s)) (at start (step_pending ?s))
                    (at start (done5)) (at start (done8)) (at start (done27)) (at start (done13))
                    (at start (done9)) (at start (done10)) (at start (done20)) (at start (done11))
                    (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done30)))
  )
)
