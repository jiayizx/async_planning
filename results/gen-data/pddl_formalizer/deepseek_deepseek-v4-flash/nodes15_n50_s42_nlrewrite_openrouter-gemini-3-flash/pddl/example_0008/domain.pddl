(define (domain hiking)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (done ?s - step))
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (pending step1))
    :effect (and (at start (not (pending step1))) (at end (done step1))))
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending step2)) (at start (done step5)))
    :effect (and (at start (not (pending step2))) (at end (done step2))))
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (pending step3)) (at start (done step1)) (at start (done step8)) (at start (done step12)) (at start (done step13)))
    :effect (and (at start (not (pending step3))) (at end (done step3))))
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (pending step4)) (at start (done step1)) (at start (done step2)) (at start (done step3)) (at start (done step5)) (at start (done step8)) (at start (done step9)) (at start (done step11)) (at start (done step12)) (at start (done step13)) (at start (done step15)))
    :effect (and (at start (not (pending step4))) (at end (done step4))))
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (at start (pending step5))
    :effect (and (at start (not (pending step5))) (at end (done step5))))
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pending step6))
    :effect (and (at start (not (pending step6))) (at end (done step6))))
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (pending step7)) (at start (done step6)))
    :effect (and (at start (not (pending step7))) (at end (done step7))))
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pending step8))
    :effect (and (at start (not (pending step8))) (at end (done step8))))
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (pending step9))
    :effect (and (at start (not (pending step9))) (at end (done step9))))
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step10)) (at start (done step1)))
    :effect (and (at start (not (pending step10))) (at end (done step10))))
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending step11)) (at start (done step1)) (at start (done step2)) (at start (done step3)) (at start (done step5)) (at start (done step8)) (at start (done step9)) (at start (done step12)) (at start (done step13)))
    :effect (and (at start (not (pending step11))) (at end (done step11))))
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (pending step12))
    :effect (and (at start (not (pending step12))) (at end (done step12))))
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending step13)) (at start (done step1)) (at start (done step8)) (at start (done step12)))
    :effect (and (at start (not (pending step13))) (at end (done step13))))
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending step14)) (at start (done step2)) (at start (done step5)))
    :effect (and (at start (not (pending step14))) (at end (done step14))))
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (pending step15)) (at start (done step1)) (at start (done step2)) (at start (done step3)) (at start (done step5)) (at start (done step8)) (at start (done step9)) (at start (done step11)) (at start (done step12)) (at start (done step13)))
    :effect (and (at start (not (pending step15))) (at end (done step15))))
)