(define (domain deductive_reasoning)
  (:requirements :durative-actions :typing)
  (:types dummy)
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

    (step_done1)
    (step_done2)
    (step_done3)
    (step_done4)
    (step_done5)
    (step_done6)
    (step_done7)
    (step_done8)
    (step_done9)
    (step_done10)

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
  )

  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (and (at start (pending1)) (at start (done2)) (at start (done3)) (at start (done4)) (at start (done5)) (at start (done6)) (at start (done7)) (at start (done8)) (at start (done9)) (at start (done10)))
    :effect (and (at start (not (pending1))) (at end (step_done1)) (at end (done1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (and (at start (pending2)) (at start (done3)) (at start (done4)) (at start (done5)) (at start (done6)) (at start (done7)) (at start (done8)) (at start (done9)) (at start (done10)))
    :effect (and (at start (not (pending2))) (at end (step_done2)) (at end (done2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (and (at start (pending3)) (at start (done5)) (at start (done10)))
    :effect (and (at start (not (pending3))) (at end (step_done3)) (at end (done3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 7200)
    :condition (and (at start (pending4)) (at start (done5)))
    :effect (and (at start (not (pending4))) (at end (step_done4)) (at end (done4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 1800)
    :condition (at start (pending5))
    :effect (and (at start (not (pending5))) (at end (step_done5)) (at end (done5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 2700)
    :condition (and (at start (pending6)) (at start (done3)) (at start (done4)) (at start (done5)) (at start (done7)) (at start (done9)) (at start (done10)))
    :effect (and (at start (not (pending6))) (at end (step_done6)) (at end (done6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 1200)
    :condition (and (at start (pending7)) (at start (done3)) (at start (done5)) (at start (done10)))
    :effect (and (at start (not (pending7))) (at end (step_done7)) (at end (done7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (and (at start (pending8)) (at start (done4)) (at start (done5)))
    :effect (and (at start (not (pending8))) (at end (step_done8)) (at end (done8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 86400)
    :condition (and (at start (pending9)) (at start (done3)) (at start (done4)) (at start (done5)) (at start (done7)) (at start (done10)))
    :effect (and (at start (not (pending9))) (at end (step_done9)) (at end (done9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 14400)
    :condition (and (at start (pending10)) (at start (done5)))
    :effect (and (at start (not (pending10))) (at end (step_done10)) (at end (done10)))
  )
)
