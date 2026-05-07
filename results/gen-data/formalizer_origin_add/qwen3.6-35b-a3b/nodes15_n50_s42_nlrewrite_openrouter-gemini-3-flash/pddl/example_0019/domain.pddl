(define (domain gathering_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_done ?s - step)
    (step_pending ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done) (s11_done) (s12_done) (s13_done) (s14_done) (s15_done))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending ?s) (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s1_done)))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s) (s4_done) (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s2_done)))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s3_done)))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s4_done)))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s5_done)))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (s1_done) (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s6_done)))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending ?s) (s3_done) (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s7_done)))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (and (step_pending ?s) (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s8_done)))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s9_done)))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s) (s8_done) (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s10_done)))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s11_done)))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (s13_done) (s6_done) (s1_done) (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s12_done)))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (at start (and (step_pending ?s) (s6_done) (s1_done) (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s13_done)))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending ?s) (s10_done) (s8_done) (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s14_done)))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (and (step_done ?s) (s15_done)))))
)