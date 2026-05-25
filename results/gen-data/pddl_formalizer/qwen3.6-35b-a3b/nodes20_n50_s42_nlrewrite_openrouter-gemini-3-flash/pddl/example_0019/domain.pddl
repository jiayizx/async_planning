(define (domain reuse_bottles)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (done-step1) (done-step2) (done-step3) (done-step4) (done-step5)
    (done-step6) (done-step7) (done-step8) (done-step9) (done-step10)
    (done-step11) (done-step12) (done-step13) (done-step14) (done-step15)
    (done-step16) (done-step17) (done-step18) (done-step19) (done-step20))

  (:durative-action do-step1
    (:parameters (?s - step))
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (done-step11)) (at start (done-step19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step1))))
  (:durative-action do-step2
    (:parameters (?s - step))
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (done-step18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step2))))
  (:durative-action do-step3
    (:parameters (?s - step))
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (done-step8)) (at start (done-step9)) (at start (done-step15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step3))))
  (:durative-action do-step4
    (:parameters (?s - step))
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (done-step5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step4))))
  (:durative-action do-step5
    (:parameters (?s - step))
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step5))))
  (:durative-action do-step6
    (:parameters (?s - step))
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (done-step13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step6))))
  (:durative-action do-step7
    (:parameters (?s - step))
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (done-step15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step7))))
  (:durative-action do-step8
    (:parameters (?s - step))
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step8))))
  (:durative-action do-step9
    (:parameters (?s - step))
    :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step9))))
  (:durative-action do-step10
    (:parameters (?s - step))
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step10))))
  (:durative-action do-step11
    (:parameters (?s - step))
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (done-step6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step11))))
  (:durative-action do-step12
    (:parameters (?s - step))
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (done-step8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step12))))
  (:durative-action do-step13
    (:parameters (?s - step))
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step13))))
  (:durative-action do-step14
    (:parameters (?s - step))
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (done-step18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step14))))
  (:durative-action do-step15
    (:parameters (?s - step))
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (done-step20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step15))))
  (:durative-action do-step16
    (:parameters (?s - step))
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (done-step8)) (at start (done-step15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step16))))
  (:durative-action do-step17
    (:parameters (?s - step))
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (done-step10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step17))))
  (:durative-action do-step18
    (:parameters (?s - step))
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step18))))
  (:durative-action do-step19
    (:parameters (?s - step))
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (done-step9)) (at start (done-step20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step19))))
  (:durative-action do-step20
    (:parameters (?s - step))
    :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (done-step17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done-step20))))
)