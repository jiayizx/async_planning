(define (domain breakfast_asynchronous)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (and (step_pending ?s) (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (and (step_pending ?s) (s2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (and (step_pending ?s) (s3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (and (step_pending ?s) (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (at start (and (step_pending ?s) (s9_done) (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (and (step_pending ?s) (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (and (step_pending ?s) (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (and (step_pending ?s) (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (at start (and (step_pending ?s) (s7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (and (step_pending ?s) (s8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (and (step_pending ?s) (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (and (step_pending ?s) (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (at start (and (step_pending ?s) (s6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
)