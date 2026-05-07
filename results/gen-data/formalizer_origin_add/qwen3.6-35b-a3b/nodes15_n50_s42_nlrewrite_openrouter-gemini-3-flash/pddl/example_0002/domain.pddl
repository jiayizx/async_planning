(define (domain circus_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_done))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_done))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step5_done)) (at start (step9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_done))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_done))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (step9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_done))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_done))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_done))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_done))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (step14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_done))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step6_done)) (at start (step11_done)) (at start (step12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_done))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step8_done)) (at start (step12_done)) (at start (step14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_done))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step4_done)) (at start (step7_done)) (at start (step9_done)) (at start (step13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_done))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (step4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_done))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_done))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_done))))
)