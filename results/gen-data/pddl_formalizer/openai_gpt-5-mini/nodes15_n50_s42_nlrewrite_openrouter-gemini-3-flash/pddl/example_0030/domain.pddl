(define (domain adopt-pet)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_1)
    (done_2)
    (done_3)
    (done_4)
    (done_5)
    (done_6)
    (done_7)
    (done_8)
    (done_9)
    (done_10)
    (done_11)
    (done_12)
    (done_13)
    (done_14)
    (done_15)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step1)) (at start (done_3)) (at start (done_6)) (at start (done_15)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done_1)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step2)) (at start (done_5)) (at start (done_7)) (at start (done_14)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done_2)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done_3)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step4)) (at start (done_11)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done_4)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done_5)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step6)) (at start (done_3)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done_6)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done_7)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step8)) (at start (done_3)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done_8)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (done_15)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done_9)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done_10)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done_11)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step12)) (at start (done_2)) (at start (done_5)) (at start (done_7)) (at start (done_11)) (at start (done_14)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done_12)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step13)) (at start (done_1)) (at start (done_2)) (at start (done_3)) (at start (done_4)) (at start (done_5)) (at start (done_6)) (at start (done_7)) (at start (done_9)) (at start (done_10)) (at start (done_11)) (at start (done_12)) (at start (done_14)) (at start (done_15)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done_13)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step14)) (at start (done_5)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done_14)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done_15)))
  )
)
