(define (domain make-batter)
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
  )

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (done1))))

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (done8)) (at start (done9)) (at start (done4)) (at start (done5)) (at start (done15)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (done2))))

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (done18)) (at start (done14)) (at start (done2)) (at start (done19)) (at start (done7)) (at start (done16)) (at start (done11)) (at start (done12)) (at start (done4)) (at start (done5)) (at start (done15)) (at start (done13)) (at start (done8)) (at start (done9)) (at start (done1)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (done3))))

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (done5)) (at start (done15)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (done4))))

  (:durative-action step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step5))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (done5))))

  (:durative-action step6
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step6)) (at start (done10)) (at start (done17)) (at start (done2)) (at start (done8)) (at start (done9)) (at start (done4)) (at start (done5)) (at start (done15)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (done6))))

  (:durative-action step7
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step7)) (at start (done11)) (at start (done12)) (at start (done4)) (at start (done13)) (at start (done5)) (at start (done15)))
    :effect (and
              (at start (not (step_pending step7)))
              (at end (step_done step7))
              (at end (done7))))

  (:durative-action step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (done9)) (at start (done4)) (at start (done5)) (at start (done15)))
    :effect (and
              (at start (not (step_pending step8)))
              (at end (step_done step8))
              (at end (done8))))

  (:durative-action step9
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step9)) (at start (done4)) (at start (done5)) (at start (done15)))
    :effect (and
              (at start (not (step_pending step9)))
              (at end (step_done step9))
              (at end (done9))))

  (:durative-action step10
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step10)) (at start (done17)) (at start (done2)) (at start (done8)) (at start (done9)) (at start (done4)) (at start (done5)) (at start (done15)))
    :effect (and
              (at start (not (step_pending step10)))
              (at end (step_done step10))
              (at end (done10))))

  (:durative-action step11
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step11)) (at start (done13)) (at start (done5)))
    :effect (and
              (at start (not (step_pending step11)))
              (at end (step_done step11))
              (at end (done11))))

  (:durative-action step12
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step12)) (at start (done4)) (at start (done5)) (at start (done15)))
    :effect (and
              (at start (not (step_pending step12)))
              (at end (step_done step12))
              (at end (done12))))

  (:durative-action step13
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step13)) (at start (done5)))
    :effect (and
              (at start (not (step_pending step13)))
              (at end (step_done step13))
              (at end (done13))))

  (:durative-action step14
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step14)) (at start (done7)) (at start (done16)) (at start (done11)) (at start (done12)) (at start (done4)) (at start (done13)) (at start (done5)) (at start (done15)) (at start (done1)))
    :effect (and
              (at start (not (step_pending step14)))
              (at end (step_done step14))
              (at end (done14))))

  (:durative-action step15
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step15)) (at start (done11)) (at start (done13)) (at start (done5)))
    :effect (and
              (at start (not (step_pending step15)))
              (at end (step_done step15))
              (at end (done15))))

  (:durative-action step16
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step16)) (at start (done1)))
    :effect (and
              (at start (not (step_pending step16)))
              (at end (step_done step16))
              (at end (done16))))

  (:durative-action step17
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step17)) (at start (done2)) (at start (done8)) (at start (done9)) (at start (done4)) (at start (done5)) (at start (done15)))
    :effect (and
              (at start (not (step_pending step17)))
              (at end (step_done step17))
              (at end (done17))))

  (:durative-action step18
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step18)) (at start (done14)) (at start (done2)) (at start (done7)) (at start (done16)) (at start (done11)) (at start (done12)) (at start (done4)) (at start (done13)) (at start (done5)) (at start (done15)) (at start (done1)) (at start (done8)) (at start (done9)) (at start (done19)))
    :effect (and
              (at start (not (step_pending step18)))
              (at end (step_done step18))
              (at end (done18))))

  (:durative-action step19
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step19))
    :effect (and
              (at start (not (step_pending step19)))
              (at end (step_done step19))
              (at end (done19))))

  (:durative-action step20
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step20)) (at start (done2)) (at start (done10)) (at start (done17)) (at start (done8)) (at start (done9)) (at start (done4)) (at start (done5)) (at start (done15)))
    :effect (and
              (at start (not (step_pending step20)))
              (at end (step_done step20))
              (at end (done20))))
)
