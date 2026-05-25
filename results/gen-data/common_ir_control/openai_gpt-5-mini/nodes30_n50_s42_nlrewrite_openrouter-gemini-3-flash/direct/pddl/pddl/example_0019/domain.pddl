(define (domain laundry_sorting)
  (:requirements :durative-actions :typing)
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
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (done30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (done25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done6)) (at start (done14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (done13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (done7)) (at start (done14)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (done1)) (at start (done16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (done4)) (at start (done29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 540)
    :condition (and (at start (step_pending ?s)) (at start (done28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (done18)) (at start (done28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done16)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (done4)) (at start (done13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done17)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done18)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (done9)) (at start (done13)) (at start (done28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done19)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done20)))
  )

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (done16)) (at start (done22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done21)))
  )

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done24)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done22)))
  )

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (done5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done23)))
  )

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (done4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done24)))
  )

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done25)))
  )

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (done22)) (at start (done27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done26)))
  )

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done27)))
  )

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done28)))
  )

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (done4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done29)))
  )

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done30)))
  )
)
