(define (domain gastritis-cure)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step) (outcome ?s - step))
  (:durative-action do_step1
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step1)) (at start (outcome step4)) (at start (outcome step12)) (at start (outcome step14)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (outcome step1))))
  (:durative-action do_step2
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (outcome step2))))
  (:durative-action do_step3
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending step3)) (at start (outcome step8)) (at start (outcome step9)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (outcome step3))))
  (:durative-action do_step4
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step4)) (at start (outcome step12)) (at start (outcome step14)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (outcome step4))))
  (:durative-action do_step5
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (outcome step9)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (outcome step5))))
  (:durative-action do_step6
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step6)) (at start (outcome step9)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (outcome step6))))
  (:durative-action do_step7
    :duration (= ?duration 1200)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (outcome step7))))
  (:durative-action do_step8
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step8)) (at start (outcome step9)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (outcome step8))))
  (:durative-action do_step9
    :duration (= ?duration 3600)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (outcome step9))))
  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (outcome step2)) (at start (outcome step7)) (at start (outcome step13)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (outcome step10))))
  (:durative-action do_step11
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step11)) (at start (outcome step2)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (outcome step11))))
  (:durative-action do_step12
    :duration (= ?duration 259200)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (outcome step12))))
  (:durative-action do_step13
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step13)) (at start (outcome step2)) (at start (outcome step7)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (outcome step13))))
  (:durative-action do_step14
    :duration (= ?duration 7200)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (outcome step14))))
  (:durative-action do_step15
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step15)) (at start (outcome step8)) (at start (outcome step9)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (outcome step15))))
)