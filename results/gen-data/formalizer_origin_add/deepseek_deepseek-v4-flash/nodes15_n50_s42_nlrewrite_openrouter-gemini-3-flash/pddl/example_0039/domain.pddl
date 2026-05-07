(define (domain tow-cars)
  (:requirements :durative-actions)
  (:predicates
    (pending_1) (done_1)
    (pending_2) (done_2)
    (pending_3) (done_3)
    (pending_4) (done_4)
    (pending_5) (done_5)
    (pending_6) (done_6)
    (pending_7) (done_7)
    (pending_8) (done_8)
    (pending_9) (done_9)
    (pending_10) (done_10)
    (pending_11) (done_11)
    (pending_12) (done_12)
    (pending_13) (done_13)
    (pending_14) (done_14)
    (pending_15) (done_15)
  )

  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (and (at start (pending_1)) (at start (done_8)))
    :effect (and (at start (not (pending_1))) (at end (done_1))))

  (:durative-action do_step2
    :duration (= ?duration 120)
    :condition (at start (pending_2))
    :effect (and (at start (not (pending_2))) (at end (done_2))))

  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (and (at start (pending_3)) (at start (done_2)) (at start (done_6)) (at start (done_9)) (at start (done_13)) (at start (done_14)))
    :effect (and (at start (not (pending_3))) (at end (done_3))))

  (:durative-action do_step4
    :duration (= ?duration 180)
    :condition (and (at start (pending_4)) (at start (done_7)))
    :effect (and (at start (not (pending_4))) (at end (done_4))))

  (:durative-action do_step5
    :duration (= ?duration 480)
    :condition (and (at start (pending_5)) (at start (done_2)))
    :effect (and (at start (not (pending_5))) (at end (done_5))))

  (:durative-action do_step6
    :duration (= ?duration 720)
    :condition (and (at start (pending_6)) (at start (done_2)) (at start (done_9)) (at start (done_14)))
    :effect (and (at start (not (pending_6))) (at end (done_6))))

  (:durative-action do_step7
    :duration (= ?duration 900)
    :condition (at start (pending_7))
    :effect (and (at start (not (pending_7))) (at end (done_7))))

  (:durative-action do_step8
    :duration (= ?duration 1200)
    :condition (at start (pending_8))
    :effect (and (at start (not (pending_8))) (at end (done_8))))

  (:durative-action do_step9
    :duration (= ?duration 240)
    :condition (and (at start (pending_9)) (at start (done_2)))
    :effect (and (at start (not (pending_9))) (at end (done_9))))

  (:durative-action do_step10
    :duration (= ?duration 420)
    :condition (and (at start (pending_10)) (at start (done_2)) (at start (done_5)) (at start (done_15)))
    :effect (and (at start (not (pending_10))) (at end (done_10))))

  (:durative-action do_step11
    :duration (= ?duration 30)
    :condition (and (at start (pending_11)) (at start (done_1)) (at start (done_8)))
    :effect (and (at start (not (pending_11))) (at end (done_11))))

  (:durative-action do_step12
    :duration (= ?duration 60)
    :condition (and (at start (pending_12)) (at start (done_2)) (at start (done_5)) (at start (done_10)) (at start (done_15)))
    :effect (and (at start (not (pending_12))) (at end (done_12))))

  (:durative-action do_step13
    :duration (= ?duration 2700)
    :condition (and (at start (pending_13)) (at start (done_2)) (at start (done_6)) (at start (done_9)) (at start (done_14)))
    :effect (and (at start (not (pending_13))) (at end (done_13))))

  (:durative-action do_step14
    :duration (= ?duration 360)
    :condition (at start (pending_14))
    :effect (and (at start (not (pending_14))) (at end (done_14))))

  (:durative-action do_step15
    :duration (= ?duration 120)
    :condition (and (at start (pending_15)) (at start (done_2)))
    :effect (and (at start (not (pending_15))) (at end (done_15))))
)